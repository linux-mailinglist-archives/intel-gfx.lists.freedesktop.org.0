Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AF6E01C8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8166E57E;
	Tue, 22 Oct 2019 10:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB176E581
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:14:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 03:14:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="222760925"
Received: from akaras-dev.fi.intel.com ([10.237.72.61])
 by fmsmga004.fm.intel.com with ESMTP; 22 Oct 2019 03:14:37 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 13:13:38 +0300
Message-Id: <20191022101338.17048-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Describe structure members in
 documentation
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG1pc3NpbmcgZGVzY3JpcHRpb25zIG9mIGk5MTVfcGVyZl9zdHJlYW0gc3RydWN0dXJlIG1l
bWJlcnMKdG8gZG9jdW1lbnRhdGlvbi4KCkNjOiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNo
Lm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkNjOiBSb2JlcnQgQnJhZ2cgPHJvYmVydEBzaXhieW5p
bmUub3JnPgpTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaCB8IDMxICsrKysrKysr
KysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90
eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmgKaW5kZXggYTFm
NzMzZmM5MDVhLi43NGRkYzIwYTBkMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZl90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90
eXBlcy5oCkBAIC0xOTksMTQgKzE5OSw0MyBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSB7CiAJ
ICogQHBpbm5lZF9jdHg6IFRoZSBPQSBjb250ZXh0IHNwZWNpZmljIGluZm9ybWF0aW9uLgogCSAq
LwogCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpwaW5uZWRfY3R4OworCisJLyoqCisJICogQHNwZWNp
ZmljX2N0eF9pZDogVGhlIGlkIG9mIHRoZSBzcGVjaWZpYyBjb250ZXh0LgorCSAqLwogCXUzMiBz
cGVjaWZpY19jdHhfaWQ7CisKKwkvKioKKwkgKiBAc3BlY2lmaWNfY3R4X2lkX21hc2s6IFRoZSBt
YXNrIHVzZWQgdG8gbWFza2luZyBzcGVjaWZpY19jdHhfaWQgYml0cy4KKwkgKi8KIAl1MzIgc3Bl
Y2lmaWNfY3R4X2lkX21hc2s7CiAKKwkvKioKKwkgKiBAcG9sbF9jaGVja190aW1lcjogSGlnaCBy
ZXNvbHV0aW9uIHRpbWVyIHRoYXQgd2lsbCBwZXJpb2RpY2FsbHkKKwkgKiBjaGVjayBmb3IgZGF0
YSBpbiB0aGUgY2lyY3VsYXIgT0EgYnVmZmVyIGZvciBub3RpZnlpbmcgdXNlcnNwYWNlCisJICog
KGUuZy4gZHVyaW5nIGEgcmVhZCgpIG9yIHBvbGwoKSkuCisJICovCiAJc3RydWN0IGhydGltZXIg
cG9sbF9jaGVja190aW1lcjsKKworCS8qKgorCSAqIEBwb2xsX3dxOiBUaGUgd2FpdCBxdWV1ZSB0
aGF0IGhydGltZXIgY2FsbGJhY2sgd2FrZXMgd2hlbiBpdAorCSAqIHNlZXMgZGF0YSByZWFkeSB0
byByZWFkIGluIHRoZSBjaXJjdWxhciBPQSBidWZmZXIuCisJICovCiAJd2FpdF9xdWV1ZV9oZWFk
X3QgcG9sbF93cTsKKworCS8qKgorCSAqIEBwb2xsaW46IFdoZXRoZXIgdGhlcmUgaXMgZGF0YSBh
dmFpbGFibGUgdG8gcmVhZC4KKwkgKi8KIAlib29sIHBvbGxpbjsKIAorCS8qKgorCSAqIEBwZXJp
b2RpYzogV2hldGhlciBwZXJpb2RpYyBzYW1wbGluZyBpcyBjdXJyZW50bHkgZW5hYmxlZC4KKwkg
Ki8KIAlib29sIHBlcmlvZGljOworCisJLyoqCisJICogQHBlcmlvZF9leHBvbmVudDogVGhlIE9B
IHVuaXQgc2FtcGxpbmcgZnJlcXVlbmN5IGlzIGRlcml2ZWQgZnJvbSB0aGlzLgorCSAqLwogCWlu
dCBwZXJpb2RfZXhwb25lbnQ7CiAKIAkvKioKQEAgLTI3Niw3ICszMDUsNyBAQCBzdHJ1Y3QgaTkx
NV9wZXJmX3N0cmVhbSB7CiAJfSBvYV9idWZmZXI7CiAKIAkvKioKLQkgKiBBIGJhdGNoIGJ1ZmZl
ciBkb2luZyBhIHdhaXQgb24gdGhlIEdQVSBmb3IgdGhlIE5PQSBsb2dpYyB0byBiZQorCSAqIEBu
b2Ffd2FpdDogQSBiYXRjaCBidWZmZXIgZG9pbmcgYSB3YWl0IG9uIHRoZSBHUFUgZm9yIHRoZSBO
T0EgbG9naWMgdG8gYmUKIAkgKiByZXByb2dyYW1tZWQuCiAJICovCiAJc3RydWN0IGk5MTVfdm1h
ICpub2Ffd2FpdDsKLS0gCjIuMTkuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
