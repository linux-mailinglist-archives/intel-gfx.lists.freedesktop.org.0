Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 808AFD6150
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 13:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68046E282;
	Mon, 14 Oct 2019 11:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36F46E282
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 11:30:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 04:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185465859"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 04:30:41 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 16:31:17 +0530
Message-Id: <20191014110122.31923-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191014110122.31923-1-vandita.kulkarni@intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/7] drm/i915/dsi: Configure transcoder operation
 for command mode.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29uZmlndXJlIHRoZSB0cmFuc2NvZGVyIHRvIG9wZXJhdGUgaW4gVEUgR0FURSBjb21tYW5kIG1v
ZGUKYW5kICB0YWtlIFRFIGV2ZW50cyBmcm9tIEdQSU8uCkFsc28gZGlzYWJsZSB0aGUgcGVyaW9k
aWMgY29tbWFuZCBtb2RlLCB0aGF0IEdPUCB3b3VsZCBoYXZlCnByb2dyYW1tZWQuCgpTaWduZWQt
b2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDMyICsrKysrKysrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggNmUzOThjMzNhNTI0Li44ZTZjMDlh
MWRiNzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC03MDQsNiAr
NzA0LDEwIEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAkJCQl0bXAgfD0gVklERU9fTU9ERV9TWU5DX1BVTFNFOwogCQkJCWJy
ZWFrOwogCQkJfQorCQl9IGVsc2UgeworCQkJdG1wICY9IH5PUF9NT0RFX01BU0s7CisJCQl0bXAg
fD0gQ01EX01PREVfVEVfR0FURTsKKwkJCXRtcCB8PSBURV9TT1VSQ0VfR1BJTzsKIAkJfQogCiAJ
CUk5MTVfV1JJVEUoRFNJX1RSQU5TX0ZVTkNfQ09ORihkc2lfdHJhbnMpLCB0bXApOwpAQCAtOTUz
LDYgKzk1NywyMiBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfdGltZW91dHMoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJfQogfQogCitzdGF0aWMgdm9pZCBnZW4xMV9kc2lf
Y29uZmlnX3V0aWxfcGluKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
OworCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29k
ZXItPmJhc2UpOworCXUzMiB0bXA7CisKKwkvKiB1c2VkIG9ubHkgYXMgVEUgaS9wIGZvciBEU0kw
IGZvciBkdWFsIGxpbmsgVEUgaXMgZnJvbSBzbGF2ZSBEU0kxICovCisJaWYgKGlzX3ZpZF9tb2Rl
KGludGVsX2RzaSkgfHwgKGludGVsX2RzaS0+ZHVhbF9saW5rKSkKKwkJcmV0dXJuOworCisJdG1w
ID0gSTkxNV9SRUFEKFVUSUxfUElOX0NUTCk7CisJdG1wIHw9IElDTF9VVElMX1BJTl9ESVJFQ1RJ
T047CisJdG1wIHw9IFVUSUxfUElOX0VOQUJMRTsKKwlJOTE1X1dSSVRFKFVUSUxfUElOX0NUTCwg
dG1wKTsKK30KKwogc3RhdGljIHZvaWQKIGdlbjExX2RzaV9lbmFibGVfcG9ydF9hbmRfcGh5KHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQpAQCAtOTc0LDYgKzk5NCw5IEBAIGdlbjExX2RzaV9l
bmFibGVfcG9ydF9hbmRfcGh5KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCS8qIHNl
dHVwIEQtUEhZIHRpbWluZ3MgKi8KIAlnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKGVuY29k
ZXIpOwogCisJLyogU2luY2UgdHJhbnNjb2RlciBpcyBjb25maWd1cmVkIHRvIHRha2UgZXZlbnRz
IGZyb20gR1BJTyAqLworCWdlbjExX2RzaV9jb25maWdfdXRpbF9waW4oZW5jb2Rlcik7CisKIAkv
KiBzdGVwIDRoOiBzZXR1cCBEU0kgcHJvdG9jb2wgdGltZW91dHMgKi8KIAlnZW4xMV9kc2lfc2V0
dXBfdGltZW91dHMoZW5jb2Rlcik7CiAKQEAgLTExMDQsNiArMTEyNywxNSBAQCBzdGF0aWMgdm9p
ZCBnZW4xMV9kc2lfZGVjb25maWd1cmVfdHJhbmNvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKQogCWVudW0gdHJhbnNjb2RlciBkc2lfdHJhbnM7CiAJdTMyIHRtcDsKIAorCS8qIGRp
c2FibGUgcGVyaW9kaWMgdXBkYXRlIG1vZGUgKi8KKwlpZiAoaXNfY21kX21vZGUoaW50ZWxfZHNp
KSkgeworCQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7CisJCQl0
bXAgPSBJOTE1X1JFQUQoSUNMX0RTSV9DTURfRlJNQ1RMKHBvcnQpKTsKKwkJCXRtcCAmPSB+SUNM
X1BFUklPRElDX0ZSQU1FX1VQREFURV9FTkFCTEU7CisJCQlJOTE1X1dSSVRFKElDTF9EU0lfQ01E
X0ZSTUNUTChwb3J0KSwgdG1wKTsKKwkJfQorCX0KKwogCS8qIHB1dCBkc2kgbGluayBpbiBVTFBT
ICovCiAJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgewogCQlkc2lf
dHJhbnMgPSBkc2lfcG9ydF90b190cmFuc2NvZGVyKHBvcnQpOwotLSAKMi4yMS4wLjUuZ2FlYjU4
MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
