Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8838636F9CE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 14:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE27E6F412;
	Fri, 30 Apr 2021 12:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0976F412
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 12:10:03 +0000 (UTC)
IronPort-SDR: yTMtY4u8JeNc6XNH9YwVSjxCVSKF0nJdsvzHNZzSuhIxBrs+MOhM/BT3V5YrGco5EgXaDtC6l3
 /e21MVHFlwUQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="184733503"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="184733503"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:10:02 -0700
IronPort-SDR: WVTXrHMDDKxFswCdi3ZB71EXAubgdb5HZNhgakz08wl83AOKU2vF/vpHZSz7fs9R9rToO6h2CT
 N7qUUu3PMZmw==
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="431407667"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:10:00 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 17:23:55 +0530
Message-Id: <20210430115355.30611-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601101516.21018-1-anshuman.gupta@intel.com>
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v2] drm/i915: lpsp with hdmi/dp outputs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

REcxIGFuZCBESVNQTEFZX1ZFUj0xMyBvbndhcmRzIEF1ZGlvIE1NSU8vVkVSQlMgbGllcyBpbiBQ
RzAgcG93ZXIKd2VsbC4gU28gaW4gb3JkZXIgdG8gZGV0ZWN0IGF1ZGlvIGNhcGFibGUgRFAvSERN
SSBvdXRwdXQgaXQgZG9lc24ndApyZXF1aXJlIHRvIGVuYWJsZSBQRzMgcG93ZXIgd2VsbCBvbiBE
RzEgYW5kIFBHMiBvbiBESVNQTEFZX1ZFUj0xMwpwbHRmb3JtLiBJdCB3aWxsIHNhdmUgdGhlIHBv
d2VyIHdoZW4gRFAvSERNSSBvdXRwdXRzIHVzZWQgYXMKbHBzcCBjb25maWd1cmF0aW9uLgoKQi5T
cGVjOiA0OTIzMwpCLlNwZWM6IDQ5MjMxCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4
LmludGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKyst
LQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDYyODBiYTdm
NGMxNy4uMTZiZmE3NjI4OTcwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwpAQCAtMzUzNiw4ICszNTM2LDEzIEBAIHN0YXRpYyB1NjQgZ2V0X2NydGNf
cG93ZXJfZG9tYWlucyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJbWFz
ayB8PSBCSVRfVUxMKGludGVsX2VuY29kZXItPnBvd2VyX2RvbWFpbik7CiAJfQogCi0JaWYgKEhB
U19EREkoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPmhhc19hdWRpbykKLQkJbWFzayB8PSBCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVURJTyk7CisJaWYgKEhBU19EREkoZGV2X3ByaXYpICYmIGNydGNf
c3RhdGUtPmhhc19hdWRpbykgeworCQkvKiBpZiBBdWRpbyBtbWlvL3ZlcmJzIGxpZXMgaW4gUEcw
ICovCisJCWlmIChJU19ERzEoZGV2X3ByaXYpIHx8IERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAx
MSkKKwkJCW1hc2sgfD0gQklUX1VMTChQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFKTsKKwkJZWxz
ZQorCQkJbWFzayB8PSBCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJTyk7CisJfQogCiAJaWYgKGNy
dGNfc3RhdGUtPnNoYXJlZF9kcGxsKQogCQltYXNrIHw9IEJJVF9VTEwoUE9XRVJfRE9NQUlOX0RJ
U1BMQVlfQ09SRSk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
