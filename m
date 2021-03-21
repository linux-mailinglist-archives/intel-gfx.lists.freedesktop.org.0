Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EFD343358
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Mar 2021 17:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848B76E22B;
	Sun, 21 Mar 2021 16:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 174BA6E22B
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Mar 2021 16:10:42 +0000 (UTC)
IronPort-SDR: rsJWT3FajPWArel9Bx48Ueeo1ZB2FXvUY50ikpnUNQssy41C3vPpiKUV6CXqgqW3YHjR8gR7Xn
 18IdO5gsU8hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190237301"
X-IronPort-AV: E=Sophos;i="5.81,266,1610438400"; d="scan'208";a="190237301"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 09:10:41 -0700
IronPort-SDR: GSELuF8Y2HmEdEpKFdiv0Ld17jHUTmP3h7uSBdNb4N4Z1clenqo59u+INC0JQUCVJXCSw6aTUU
 rjqZ+JoT1iuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,266,1610438400"; d="scan'208";a="412785958"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 21 Mar 2021 09:10:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sun, 21 Mar 2021 18:10:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 21 Mar 2021 18:10:38 +0200
Message-Id: <20210321161038.9329-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Avoid div-by-zero on gen2
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
bjIgdGlsZXMgYXJlIDJLaUIgaW4gc2l6ZSBzbyBpOTE1X2dlbV9vYmplY3RfZ2V0X3RpbGVfcm93
X3NpemUoKQpjYW4gaW4gZmFjdCByZXR1cm4gPDRLaUIsIHdoaWNoIGxlYWRzIHRvIGRpdi1ieS16
ZXJvIGhlcmUuCkF2b2lkIHRoYXQuCgpOb3Qgc3VyZSBpOTE1X2dlbV9vYmplY3RfZ2V0X3RpbGVf
cm93X3NpemUoKSBpcyBlbnRpcmVseQpzYW5lIGFueXdheSBzaW5jZSBpdCBkb2Vzbid0IGFjY291
bnQgZm9yIHRoZSBkaWZmZXJlbnQgdGlsZQpsYXlvdXRzIG9uIGk4eHgvaTkxNS4uLgoKSSdtIG5v
dCBhYmxlIHRvIGhpdCB0aGlzIGJlZm9yZSBjb21taXQgNjg0Njg5NWZkZTA1ICgiZHJtL2k5MTU6
ClJlcGxhY2UgUElOX05PTkZBVUxUIHdpdGggY2FsbHMgdG8gUElOX05PRVZJQ1QiKSBhbmQgaXQg
bG9va3MKbGlrZSBJIGFsc28gbmVlZCB0byBydW4gcmVjZW50IHZlcnNpb24gb2YgTWVzYS4gV2l0
aCB0aG9zZSBpbgpwbGFjZSB4b25vdGljIHRyaXBzIG9uIHRoaXMgcXVpdGUgZWFzaWx5IG9uIG15
IDg1eC4KCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5kZXggZWMyOGE2Y2RlNDliLi4wYjI0MzRlMjlk
MDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwpAQCAtMTg5LDcg
KzE4OSw3IEBAIGNvbXB1dGVfcGFydGlhbF92aWV3KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCiAJc3RydWN0IGk5MTVfZ2d0dF92aWV3IHZpZXc7CiAKIAlpZiAoaTkxNV9n
ZW1fb2JqZWN0X2lzX3RpbGVkKG9iaikpCi0JCWNodW5rID0gcm91bmR1cChjaHVuaywgdGlsZV9y
b3dfcGFnZXMob2JqKSk7CisJCWNodW5rID0gcm91bmR1cChjaHVuaywgdGlsZV9yb3dfcGFnZXMo
b2JqKSA/OiAxKTsKIAogCXZpZXcudHlwZSA9IEk5MTVfR0dUVF9WSUVXX1BBUlRJQUw7CiAJdmll
dy5wYXJ0aWFsLm9mZnNldCA9IHJvdW5kZG93bihwYWdlX29mZnNldCwgY2h1bmspOwotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
