Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9DE27D9FA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 23:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7F16E1ED;
	Tue, 29 Sep 2020 21:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36C96E1ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 21:26:05 +0000 (UTC)
IronPort-SDR: RvI5loH6l98X6B62G3popQYUgMmVX3ubHY1mmUgxi28BGxrWC0rCquZnPj1XUUdK1cSOM3smlV
 sCI36dfXMw1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="162353200"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="162353200"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:26:04 -0700
IronPort-SDR: qc8IpaBaJBhwsJ2B9lzpzVaYFpbL5GTHZecs8hJA0sqeyBYHnzQ7Q7/nHjbc3vBmK6y8fKvU2G
 othbhzGVIZ2w==
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="514032278"
Received: from jaborah-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.33.153])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:26:04 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 14:29:10 -0700
Message-Id: <20200929212912.108706-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/vbt: Fix backlight parsing for VBT
 234+
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

Q2hpbGQgbWluX2JyaWdodG5lc3MgaXMgb2Jzb2xldGUgZnJvbSBWQlQgMjM0KywgaW5zdGVhZCB0
aGUgbmV3Cm1pbl9icmlnaHRuZXNzIGZpZWxkIGluIHRoZSBtYWluIHN0cnVjdHVyZSBzaG91bGQg
YmUgdXNlZC4KClRoaXMgbmV3IGZpZWxkIGlzIDE2IGJpdHMgd2lkZSwgc28gYmFja2xpZ2h0X3By
ZWNpc2lvbl9iaXRzIGlzIG5lZWRlZAp0byBjaGVjayBpZiB2YWx1ZSBuZWVkcyB0byBiZSBzY2Fs
ZWQgZG93biBidXQgaXQgaXMgb25seSBhdmFpbGFibGUgaW4KVkJUIDIzNisgc28gd29ya2luZyBh
cm91bmQgaXQgYnkgdXNpbmcgdGhlIGFsc28gbmV3IGJhY2tsaWdodF9sZXZlbAppbiB0aGUgbWFp
biBzdHJ1Y3QuCgpCU3BlYzogMjAxNDkKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMjMgKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgMTAgKysrKysrKy0KIDIgZmls
ZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDQ3MTY0ODRhZjYyZC4uZmE3YTkz
ZjExOGY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAt
NDU5LDcgKzQ1OSwyOCBAQCBwYXJzZV9sZnBfYmFja2xpZ2h0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAogCWRldl9wcml2LT52YnQuYmFja2xpZ2h0LnB3bV9mcmVxX2h6ID0g
ZW50cnktPnB3bV9mcmVxX2h6OwogCWRldl9wcml2LT52YnQuYmFja2xpZ2h0LmFjdGl2ZV9sb3df
cHdtID0gZW50cnktPmFjdGl2ZV9sb3dfcHdtOwotCWRldl9wcml2LT52YnQuYmFja2xpZ2h0Lm1p
bl9icmlnaHRuZXNzID0gZW50cnktPm1pbl9icmlnaHRuZXNzOworCisJaWYgKGJkYi0+dmVyc2lv
biA+PSAyMzQpIHsKKwkJdTE2IGxldmVsID0gYmFja2xpZ2h0X2RhdGEtPmJhY2tsaWdodF9taW5f
bGV2ZWxbcGFuZWxfdHlwZV0ubGV2ZWw7CisJCWJvb2wgc2NhbGUgPSBmYWxzZTsKKworCQlpZiAo
YmRiLT52ZXJzaW9uID49IDIzNikKKwkJCXNjYWxlID0gYmFja2xpZ2h0X2RhdGEtPmJhY2tsaWdo
dF9wcmVjaXNpb25fYml0c1twYW5lbF90eXBlXSA9PSAxNjsKKwkJZWxzZQorCQkJc2NhbGUgPSBi
YWNrbGlnaHRfZGF0YS0+YmFja2xpZ2h0X2xldmVsW3BhbmVsX3R5cGVdLmxldmVsID4gMjU1Owor
CisJCWlmIChzY2FsZSkKKwkJCWxldmVsID0gbGV2ZWwgLyAyNTU7CisKKwkJaWYgKGxldmVsID4g
MjU1KSB7CisJCQlkcm1fd2FybigmZGV2X3ByaXYtPmRybSwgIkJhY2tsaWdodCBtaW4gbGV2ZWwg
PiAyNTVcbiIpOworCQkJbGV2ZWwgPSAyNTU7CisJCX0KKwkJZGV2X3ByaXYtPnZidC5iYWNrbGln
aHQubWluX2JyaWdodG5lc3MgPSBsZXZlbDsKKwl9IGVsc2UgeworCQlkZXZfcHJpdi0+dmJ0LmJh
Y2tsaWdodC5taW5fYnJpZ2h0bmVzcyA9IGVudHJ5LT5taW5fYnJpZ2h0bmVzczsKKwl9CisKIAlk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKIAkJICAgICJWQlQgYmFja2xpZ2h0IFBXTSBtb2R1
bGF0aW9uIGZyZXF1ZW5jeSAldSBIeiwgIgogCQkgICAgImFjdGl2ZSAlcywgbWluIGJyaWdodG5l
c3MgJXUsIGxldmVsICV1LCBjb250cm9sbGVyICV1XG4iLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCmluZGV4IDU0YmNjNmE2OTQ3Yy4uMTJlYzRjMDc4
MWNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5o
CkBAIC03ODIsNyArNzgyLDcgQEAgc3RydWN0IGxmcF9iYWNrbGlnaHRfZGF0YV9lbnRyeSB7CiAJ
dTggYWN0aXZlX2xvd19wd206MTsKIAl1OCBvYnNvbGV0ZTE6NTsKIAl1MTYgcHdtX2ZyZXFfaHo7
Ci0JdTggbWluX2JyaWdodG5lc3M7CisJdTggbWluX2JyaWdodG5lc3M7IC8qIE9ic29sZXRlIGZy
b20gMjM0KyAqLwogCXU4IG9ic29sZXRlMjsKIAl1OCBvYnNvbGV0ZTM7CiB9IF9fcGFja2VkOwpA
QCAtNzkyLDExICs3OTIsMTkgQEAgc3RydWN0IGxmcF9iYWNrbGlnaHRfY29udHJvbF9tZXRob2Qg
ewogCXU4IGNvbnRyb2xsZXI6NDsKIH0gX19wYWNrZWQ7CiAKK3N0cnVjdCBsZnBfYmFja2xpZ2h0
X2xldmVsIHsKKwl1MzIgbGV2ZWwgOiAxNjsKKwl1MzIgcmVzZXJ2ZWQgOiAxNjsKK30gX19wYWNr
ZWQ7CisKIHN0cnVjdCBiZGJfbGZwX2JhY2tsaWdodF9kYXRhIHsKIAl1OCBlbnRyeV9zaXplOwog
CXN0cnVjdCBsZnBfYmFja2xpZ2h0X2RhdGFfZW50cnkgZGF0YVsxNl07CiAJdTggbGV2ZWxbMTZd
OwogCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2NvbnRyb2xfbWV0aG9kIGJhY2tsaWdodF9jb250cm9s
WzE2XTsKKwlzdHJ1Y3QgbGZwX2JhY2tsaWdodF9sZXZlbCBiYWNrbGlnaHRfbGV2ZWxbMTZdOwkJ
LyogMjM0KyAqLworCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2xldmVsIGJhY2tsaWdodF9taW5fbGV2
ZWxbMTZdOwkvKiAyMzQrICovCisJdTggYmFja2xpZ2h0X3ByZWNpc2lvbl9iaXRzWzE2XTsJCQkJ
CS8qIDIzNisgKi8KIH0gX19wYWNrZWQ7CiAKIC8qCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
