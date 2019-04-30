Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF2CF220
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363DD891C5;
	Tue, 30 Apr 2019 08:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD9E891CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:38:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="227994911"
Received: from vandita-desktop.iind.intel.com ([10.223.74.201])
 by orsmga001.jf.intel.com with ESMTP; 30 Apr 2019 01:38:39 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:47:54 +0530
Message-Id: <1556612275-16608-2-git-send-email-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556612275-16608-1-git-send-email-vandita.kulkarni@intel.com>
References: <1556612275-16608-1-git-send-email-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] [v2 2/3] drm/i915: Fix pipe config mismatch for bpp,
 output format
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVhZCBiYWNrIHRoZSBwaXhlbCBmb21yYXQgcmVnaXN0ZXIgYW5kIGdldCB0aGUgYnBwLgoKdjI6
IFJlYWQgdGhlIFBJUEVfTUlTQyByZWdpc3RlciAoSmFuaSkuCgpTaWduZWQtb2ZmLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pY2xfZHNpLmMgICB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kc2kuaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jICAgfCAyICstCiAz
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ljbF9kc2kuYwppbmRleCBkYmIyNzEyLi41Y2M1OGIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaWNsX2RzaS5j
CkBAIC0xMjI2LDYgKzEyMjYsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2V0X2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxf
ZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5iYXNlKTsKKwlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMocGlwZV9jb25maWctPmJhc2UuY3J0
Yyk7CiAKIAkvKiBGSVhNRTogYWRhcHQgaWNsX2RkaV9jbG9ja19nZXQoKSBmb3IgRFNJIGFuZCB1
c2UgdGhhdD8gKi8KIAlwaXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9CkBAIC0xMjMzLDYgKzEyMzQs
NyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAlwaXBlX2NvbmZpZy0+YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfY2xvY2sg
PSBpbnRlbF9kc2ktPnBjbGs7CiAJZ2VuMTFfZHNpX2dldF90aW1pbmdzKGVuY29kZXIsIHBpcGVf
Y29uZmlnKTsKIAlwaXBlX2NvbmZpZy0+b3V0cHV0X3R5cGVzIHw9IEJJVChJTlRFTF9PVVRQVVRf
RFNJKTsKKwlwaXBlX2NvbmZpZy0+cGlwZV9icHAgPSBiZHdfZ2V0X3BpcGVtaXNjX2JwcChjcnRj
KTsKIH0KIAogc3RhdGljIGludCBnZW4xMV9kc2lfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCkBAIC0xMjQ4LDYgKzEyNTAsNyBAQCBzdGF0aWMgaW50IGdlbjEx
X2RzaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9CiAJCQkJCSZwaXBlX2NvbmZpZy0+
YmFzZS5hZGp1c3RlZF9tb2RlOwogCisJcGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPSBJTlRF
TF9PVVRQVVRfRk9STUFUX1JHQjsKIAlpbnRlbF9maXhlZF9wYW5lbF9tb2RlKGZpeGVkX21vZGUs
IGFkanVzdGVkX21vZGUpOwogCWludGVsX3BjaF9wYW5lbF9maXR0aW5nKGNydGMsIHBpcGVfY29u
ZmlnLCBjb25uX3N0YXRlLT5zY2FsaW5nX21vZGUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kc2kuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaS5o
CmluZGV4IDcwNWE2MDkuLmNiOWUzYjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RzaS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaS5oCkBAIC0x
NjYsNiArMTY2LDcgQEAgZW51bSBkcm1fbW9kZV9zdGF0dXMgaW50ZWxfZHNpX21vZGVfdmFsaWQo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIHN0cnVjdCBpbnRlbF9kc2lfaG9zdCAq
aW50ZWxfZHNpX2hvc3RfaW5pdChzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2ksCiAJCQkJCSAg
IGNvbnN0IHN0cnVjdCBtaXBpX2RzaV9ob3N0X29wcyAqZnVuY3MsCiAJCQkJCSAgIGVudW0gcG9y
dCBwb3J0KTsKK2ludCBiZHdfZ2V0X3BpcGVtaXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
Yyk7CiAKIC8qIHZsdl9kc2lfcGxsLmMgKi8KIGludCB2bHZfZHNpX3BsbF9jb21wdXRlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvdmx2X2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCmluZGV4IGI0YzY1
ODMuLjc5MGFkYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMKQEAgLTI2MCw3ICsyNjAsNyBAQCBz
dGF0aWMgdm9pZCBiYW5kX2dhcF9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJdmx2X2ZsaXNkc2lfcHV0KGRldl9wcml2KTsKIH0KIAotc3RhdGljIGludCBiZHdfZ2V0
X3BpcGVtaXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK2ludCBiZHdfZ2V0X3BpcGVt
aXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAl1MzIgdG1wOwotLSAK
MS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
