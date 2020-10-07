Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A993285EAA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 14:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7C96E8C9;
	Wed,  7 Oct 2020 12:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FF86E8C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 12:03:33 +0000 (UTC)
IronPort-SDR: YEfs6m9ckfsLwmz7xixHbEH+8O6YgUjfTa2t3bIh3gChyK+UxwNsGWhETY8mzhKK4vzoj5zbaS
 vrZcsO9CHblw==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="151844771"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="151844771"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 05:03:32 -0700
IronPort-SDR: 5IciWRUol0eucRyf79KKEpVjTJKH9fC/6OvYgm/2E5v4T8DnTEfAjWTMYp1lbG9LMGmIxo2SaT
 43n1mmQzZoyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="316183592"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 07 Oct 2020 05:03:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Oct 2020 15:03:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 15:03:27 +0300
Message-Id: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Mark ininitial fb obj as WT on
 eLLC machines to avoid rcu lockup during fbdev init
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSBsZWF2ZSB0aGUgY2FjaGVfbGV2ZWwgb2YgdGhlIGluaXRpYWwgZmIgb2JqCnNl
dCB0byBOT05FLiBUaGlzIG1lYW5zIG9uIGVMTEMgbWFjaGluZXMgdGhlIGZpcnN0IHBpbl90b19k
aXNwbGF5KCkKd2lsbCB0cnkgdG8gc3dpdGNoIGl0IHRvIFdUIHdoaWNoIHJlcXVpcmVzIGEgdm1h
IHVuYmluZCtiaW5kLgpJZiB0aGF0IGhhcHBlbnMgZHVyaW5nIHRoZSBmYmRldiBpbml0aWFsaXph
dGlvbiByY3UgZG9lcyBub3QKc2VlbSBvcGVyYXRpb25hbCB3aGljaCBjYXVzZXMgdGhlIHVuYmlu
ZCB0byBnZXQgc3R1Y2suIFRvCm1vc3QgYXBwZWFyYW5jZXMgdGhpcyBsb29rcyBsaWtlIGEgZGVh
ZCBtYWNoaW5lIG9uIGJvb3QuCgpBdm9pZCB0aGUgdW5iaW5kIGJ5IGFscmVhZHkgbWFya2luZyB0
aGUgb2JqZWN0IGNhY2hlX2xldmVsCmFzIFdUIHdoZW4gY3JlYXRpbmcgaXQuIFdlIHN0aWxsIGRv
IGFuIGV4Y3BsaWNpdCBnZ3R0IHBpbgp3aGljaCB3aWxsIHJld3JpdGUgdGhlIFBURXMgYW55d2F5
LCBzbyB0aGV5IHdpbGwgbWF0Y2ggd2hhdGV2ZXIKY2FjaGUgbGV2ZWwgd2Ugc2V0LgoKQ2M6IDxz
dGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjcrClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yMzgxClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwppbmRleCA5MDdlMWQxNTU0NDMuLjAwYzA4NjAwYzYwYSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM0NDUsNiArMzQ0
NSwxNCBAQCBpbml0aWFsX3BsYW5lX3ZtYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
IAlpZiAoSVNfRVJSKG9iaikpCiAJCXJldHVybiBOVUxMOwogCisJLyoKKwkgKiBNYXJrIGl0IFdU
IGFoZWFkIG9mIHRpbWUgdG8gYXZvaWQgY2hhbmdpbmcgdGhlCisJICogY2FjaGVfbGV2ZWwgZHVy
aW5nIGZiZGV2IGluaXRpYWxpemF0aW9uLiBUaGUKKwkgKiB1bmJpbmQgdGhlcmUgd291bGQgZ2V0
IHN0dWNrIHdhaXRpbmcgZm9yIHJjdS4KKwkgKi8KKwlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hl
X2NvaGVyZW5jeShvYmosIEhBU19XVChpOTE1KSA/CisJCQkJCSAgICBJOTE1X0NBQ0hFX1dUIDog
STkxNV9DQUNIRV9OT05FKTsKKwogCXN3aXRjaCAocGxhbmVfY29uZmlnLT50aWxpbmcpIHsKIAlj
YXNlIEk5MTVfVElMSU5HX05PTkU6CiAJCWJyZWFrOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
