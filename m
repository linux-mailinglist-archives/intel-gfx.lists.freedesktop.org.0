Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78F738147F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 02:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41896F4C1;
	Sat, 15 May 2021 00:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110A56F4BF;
 Sat, 15 May 2021 00:23:03 +0000 (UTC)
IronPort-SDR: NbNnE3b8JLYYzzv7Y5psEvnOgUvRL5HRMkqyanySe1V7CWyp845LyloL0LwfEujrpO9qQRaX0p
 TJ/h7ZSqADoQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="199942412"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="199942412"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 17:23:02 -0700
IronPort-SDR: mb2On1/KPwoQRt9qD3GSLX83jE2RxnAzNbA+ZAlPpXPaYtpbBSinUdZbqTK/QrlkxQ7pHyumX5
 LYbvzNJ8OPSA==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="436735090"
Received: from dbstims-dev.fm.intel.com ([10.1.27.177])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 17:23:02 -0700
From: Dale B Stimson <dale.b.stimson@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 17:22:46 -0700
Message-Id: <20210515002247.94609-1-dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/1] drm/i915/dg1: Add HWMON power support
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJtL2k5MTUvZGcxOiBBZGQgSFdNT04gcG93ZXIgc3VwcG9ydAoKQXMgcGFydCBvZiB0aGUgU3lz
dGVtIE1hbmFnZW1lbmVudCBJbnRlcmZhY2UgKFNNSSksIHVzZSB0aGUgSFdNT04Kc3Vic3lzdGVt
IHRvIGRpc3BsYXkgcG93ZXIgdXRpbGl6YXRpb24uCgpUaGUgZm9sbG93aW5nIHN0YW5kYXJkIEhX
TU9OIGVudHJpZXMgYXJlIGN1cnJlbnRseSBzdXBwb3J0ZWQKKGFuZCBhcHByb3ByaWF0ZWx5IHNj
YWxlZCk6Ci9zeXMvY2xhc3MvZHJtL2NhcmQwL2RldmljZS9od21vbi9od21vbjxpPgogICAgLSBl
bmVyZ3kxX2lucHV0CiAgICAtIHBvd2VyMV9jYXAKICAgIC0gcG93ZXIxX21heAoKU29tZSBub24t
c3RhbmRhcmQgSFdNT04gcG93ZXIgaW5mb3JtYXRpb24gaXMgYWxzbyBwcm92aWRlZCwgc3VjaCBh
cwplbmFibGUgYml0cyBhbmQgaW50ZXJ2YWxzLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgp2MyAg
QWRkZWQgZG9jdW1lbnRhdGlvbiBvZiB0aGVzZSBod21vbiBhdHRyaWJ1dGVzIGluIGZpbGUKICAg
ICAgICBEb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWRyaXZlci1pbnRlbC1pOTE1LWh3
bW9uCgp2MyAgQ29tbWl0IG1lc2FnZSBtaW5vciByZXdvcmRpbmcKCnYzICBGdW5jdGlvbiBuYW1l
IGNoYW5nZXM6CiAgICBpOTE1X2h3bW9uX2luaXQoKSAtPiBpOTE1X2h3bW9uX3JlZ2lzdGVyKCkK
ICAgIGk5MTVfaHdtb25fZmluaSgpIC0+IGk5MTVfaHdtb25fdW5yZWdpc3RlcigpCgp2MyAgaTkx
NV9od21vbl9yZWdpc3RlciBhbmQgaTkxNV9od21vbl91bnJlZ2lzdGVyIG5vdyB0YWtlIGFyZyBp
OTE1LgoKdjMgIGk5MTVfaHdtb25fcmVnaXN0ZXIoKSBub3cgcmV0dXJucyB2b2lkIGluc3RlYWQg
b2YgaW50LgoKdjMgIE1hY3JvIEZJRUxEX1NISUZUKCkgYWRkZWQgdG8gY29tcHV0ZSBzaGlmdCB2
YWx1ZSBmcm9tIGNvbnN0YW50CiAgICBmaWVsZCBtYXNrLgoKdjMgIENlcnRhaW4gZnVuY3Rpb25z
IG5vdyBsb25nZXIgcmVxdWlyZSAiaW5saW5lIiBkdWUgdG8gYWRkaXRpb24gb2YgbmV3CiAgICBw
YXJhbWV0ZXIgZmllbGRfc2hpZnQsIGFsbG93aW5nIGFjY2VzcyB0byBjb25zdGFudCBleHByZXNz
aW9ucyBmb3IKICAgIHRoZSBmaWVsZCBtYXNrIGF0IGVhY2ggY2FsbCBzaXRlLiAgVGhlc2UgZnVu
Y3Rpb25zIG5vdyBkbyBmaWVsZAogICAgYWNjZXNzIHZpYSBzaGlmdCBhbmQgbWFza2luZyBhbmQg
bm8gbG9uZ2VyIHVzZSBsZTMyKigpIGZ1bmN0aW9ucwogICAgKGFzIGxlMzIqKCkgcmVxdWlyZWQg
YSBsb2NhbCBjb25zdGFudCBleHByZXNzaW9uIGZvciB0aGUgbWFzaykuCiAgICAgIF9maWVsZF9y
ZWFkX2FuZF9zY2FsZSgpCiAgICAgIF9maWVsZF9yZWFkNjRfYW5kX3NjYWxlKCkKICAgICAgX2Zp
ZWxkX3NjYWxlX2FuZF93cml0ZSgpCgp2MyAgU29tZSBjb21tZW50cyB3ZXJlIG1vZGlmaWVkLgoK
djMgIE5vdyB1c2luZyBzeXNmc19lbWl0KCkgaW5zdGVhZCBvZiBzY25wcmludGYoKS4KClYyICBS
ZW5hbWUgbG9jYWwgZnVuY3Rpb24gcGFyYW1ldGVyIGZpZWxkX21hc2sgdG8gZmllbGRfbXNrIGlu
IG9yZGVyIHRvIGF2b2lkCiAgICBzaGFkb3dpbmcgdGhlIG5hbWUgb2YgZnVuY3Rpb24gZmllbGRf
bWFzaygpIGZyb20gaW5jbHVkZS9saW51eC9iaXRmaWVsZC5oLgoKVjIgIENoYW5nZSBhIGNvbW1l
bnQgaW50cm9kdWN0aW9uIGZyb20gIi8qKiIgdG8gIi8qIiwgYXMgaXQgaXMgbm90IGludGVuZGVk
CiAgICB0byBtYXRjaCBhIHBhdHRlcm4gdGhhdCB0cmlnZ2VycyBkb2N1bWVudGF0aW9uLgogICAg
UmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgoKVjIgIFNsaWdo
dCBtb3ZlbWVudCBvZiBjYWxsczoKICAgIC0gaTkxNV9od21vbl9pbml0IHNsaWdodGx5IGxhdGVy
LCBhZnRlciBjYWxsIHRvIGk5MTVfc2V0dXBfc3lzZnMoKQogICAgLSBpOTE1X2h3bW9uX2Zpbmkg
c2xpZ2h0bHkgZWFybGllciwgYmVmb3JlIGk5MTVfdGVhcmRvd25fc3lzZnMoKQoKVjIgIEZpeGVk
IHNvbWUgc3Ryb25nIHR5cGluZyBpc3N1ZXMgd2l0aCBsZTMyIGZ1bmN0aW9ucy4KICAgIERldGVj
dGVkIGJ5IHNwYXJzZSBpbiBhIHJ1biBieSBrZXJuZWwgdGVzdCByb2JvdDoKICAgIFJlcG9ydGVk
LWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KCkRhbGUgQiBTdGltc29uICgx
KToKICBkcm0vaTkxNS9kZzE6IEFkZCBIV01PTiBwb3dlciBzdXBwb3J0CgogLi4uL0FCSS90ZXN0
aW5nL3N5c2ZzLWRyaXZlci1pbnRlbC1pOTE1LWh3bW9uIHwgMTE2ICsrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgIDYgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaHdtb24uYyAgICAgICAgICAgICB8IDc5OSArKysrKysrKysrKysrKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uaCAgICAgICAgICAgICB8ICA0NCArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgNTMgKysKIDggZmlsZXMg
Y2hhbmdlZCwgMTAyMyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9BQkkvdGVzdGluZy9zeXNmcy1kcml2ZXItaW50ZWwtaTkxNS1od21vbgogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uYwogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uaAoKUmFuZ2UtZGlmZiBhZ2Fp
bnN0IHYyOgoxOiAgNmU4NDFjNGQ2MmE1YSAhIDE6ICBhZmE4MWQzNWUxYzU1IGRybS9pOTE1L2Rn
MTogQWRkIEhXTU9OIHBvd2VyIHNlbnNvciBzdXBwb3J0CiAgICBAQCBNZXRhZGF0YQogICAgIEF1
dGhvcjogRGFsZSBCIFN0aW1zb24gPGRhbGUuYi5zdGltc29uQGludGVsLmNvbT4KICAgICAKICAg
ICAgIyMgQ29tbWl0IG1lc3NhZ2UgIyMKICAgIC0gICAgZHJtL2k5MTUvZGcxOiBBZGQgSFdNT04g
cG93ZXIgc2Vuc29yIHN1cHBvcnQKICAgICsgICAgZHJtL2k5MTUvZGcxOiBBZGQgSFdNT04gcG93
ZXIgc3VwcG9ydAogICAgIAogICAgICAgICBBcyBwYXJ0IG9mIHRoZSBTeXN0ZW0gTWFuYWdlbWVu
ZW50IEludGVyZmFjZSAoU01JKSwgdXNlIHRoZSBIV01PTgogICAgICAgICBzdWJzeXN0ZW0gdG8g
ZGlzcGxheSBwb3dlciB1dGlsaXphdGlvbi4KICAgICAKICAgIC0gICAgVGhlIGZvbGxvd2luZyBz
dGFuZGFyZCBIV01PTiBwb3dlciBzZW5zb3JzIGFyZSBjdXJyZW50bHkgc3VwcG9ydGVkCiAgICAr
ICAgIFRoZSBmb2xsb3dpbmcgc3RhbmRhcmQgSFdNT04gZW50cmllcyBhcmUgY3VycmVudGx5IHN1
cHBvcnRlZAogICAgICAgICAoYW5kIGFwcHJvcHJpYXRlbHkgc2NhbGVkKToKICAgICAgICAgICAv
c3lzL2NsYXNzL2RybS9jYXJkMC9kZXZpY2UvaHdtb24vaHdtb248aT4KICAgICAgICAgICAgICAg
ICAtIGVuZXJneTFfaW5wdXQKICAgIEBAIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmM6
IHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxCiAgICAgIAlp
OTE1X2RlYnVnZnNfcmVnaXN0ZXIoZGV2X3ByaXYpOwogICAgICAJaTkxNV9zZXR1cF9zeXNmcyhk
ZXZfcHJpdik7CiAgICAgIAogICAgLSsJLyogUmVnaXN0ZXIgd2l0aCBod21vbiAqLwogICAgLSsJ
aWYgKGk5MTVfaHdtb25faW5pdCgmZGV2X3ByaXYtPmRybSkpCiAgICAtKwkJZHJtX2VycigmZGV2
X3ByaXYtPmRybSwgIkZhaWxlZCB0byByZWdpc3RlciBkcml2ZXIgaHdtb24hXG4iKTsKICAgICsr
CWk5MTVfaHdtb25fcmVnaXN0ZXIoZGV2X3ByaXYpOwogICAgICsKICAgICAgCS8qIERlcGVuZHMg
b24gc3lzZnMgaGF2aW5nIGJlZW4gaW5pdGlhbGl6ZWQgKi8KICAgICAgCWk5MTVfcGVyZl9yZWdp
c3RlcihkZXZfcHJpdik7CiAgICBAQCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jOiBz
dGF0aWMgdm9pZCBpOTE1X2RyaXZlcl91bnJlZ2lzdGVyKHN0cnVjdCBkcm1faQogICAgICAKICAg
ICAgCWk5MTVfcGVyZl91bnJlZ2lzdGVyKGRldl9wcml2KTsKICAgICArCiAgICAtKwlpOTE1X2h3
bW9uX2ZpbmkoJmRldl9wcml2LT5kcm0pOwogICAgKysJaTkxNV9od21vbl91bnJlZ2lzdGVyKGRl
dl9wcml2KTsKICAgICArCiAgICAgIAlpOTE1X3BtdV91bnJlZ2lzdGVyKGRldl9wcml2KTsKICAg
ICAgCiAgICAgIAlpOTE1X3RlYXJkb3duX3N5c2ZzKGRldl9wcml2KTsKICAgIC0rCiAgICAtIAlk
cm1fZGV2X3VucGx1ZygmZGV2X3ByaXYtPmRybSk7CiAgICAtIAogICAgLSAJaTkxNV9nZW1fZHJp
dmVyX3VucmVnaXN0ZXIoZGV2X3ByaXYpOwogICAgIAogICAgICAjIyBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICMjCiAgICAgQEAKICAgIEBAIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2Lmg6IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKICAgICAgIyMgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9od21vbi5jIChuZXcpICMjCiAgICAgQEAKICAgICArLy8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVAogICAgLSsKICAgICArLyoKICAgICArICogQ29weXJpZ2h0IMKp
IDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KICAgICArICovCiAgICBAQCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2h3bW9uLmMgKG5ldykKICAgICArI2RlZmluZSBTRl9QT1dFUgkxMDAwMDAwCiAg
ICAgKyNkZWZpbmUgU0ZfRU5FUkdZCTEwMDAwMDAKICAgICArCiAgICArKyNkZWZpbmUgRklFTERf
U0hJRlQoX19tYXNrKQkJCQkgICAgXAogICAgKysJKEJVSUxEX0JVR19PTl9aRVJPKCFfX2J1aWx0
aW5fY29uc3RhbnRfcChfX21hc2spKSArIFwKICAgICsrCQlCVUlMRF9CVUdfT05fWkVSTygoX19t
YXNrKSA9PSAwKSArCSAgICBcCiAgICArKwkJX19iZl9zaGYoX19tYXNrKSkKICAgICsrCiAgICAg
K3N0YXRpYyB2b2lkCiAgICAgK19sb2NrZWRfd2l0aF9wbV9pbnRlbF91bmNvcmVfcm13KHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSwKICAgICArCQkJCSBpOTE1X3JlZ190IHJlZywgdTMyIGNs
ZWFyLCB1MzIgc2V0KQogICAgQEAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5jIChu
ZXcpCiAgICAgK30KICAgICArCiAgICAgKy8qCiAgICAtKyAqIF9maWVsZF9yZWFkX2FuZF9zY2Fs
ZSgpCiAgICAtKyAqIFJldHVybiB0eXBlIG9mIHU2NCBhbGxvd3MgZm9yIHRoZSBjYXNlIHdoZXJl
IHRoZSBzY2FsaW5nIG1pZ2h0IGNhdXNlIGEKICAgIC0rICogcmVzdWx0IGV4Y2VlZGluZyAzMiBi
aXRzLgogICAgKysgKiBUaGlzIGZ1bmN0aW9uJ3MgcmV0dXJuIHR5cGUgb2YgdTY0IGFsbG93cyBm
b3IgdGhlIGNhc2Ugd2hlcmUgdGhlIHNjYWxpbmcKICAgICsrICogb2YgdGhlIGZpZWxkIHRha2Vu
IGZyb20gdGhlIDMyLWJpdCByZWdpc3RlciB2YWx1ZSBtaWdodCBjYXVzZSBhIHJlc3VsdCB0bwog
ICAgKysgKiBleGNlZWQgMzIgYml0cy4KICAgICArICovCiAgICAtK3N0YXRpYyBfX2Fsd2F5c19p
bmxpbmUgdTY0CiAgICArK3N0YXRpYyB1NjQKICAgICArX2ZpZWxkX3JlYWRfYW5kX3NjYWxlKHN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkxNV9yZWdfdCByZ2FkciwKICAgIC0rCQkgICAg
ICB1MzIgZmllbGRfbXNrLCBpbnQgbnNoaWZ0LCB1bnNpZ25lZCBpbnQgc2NhbGVfZmFjdG9yKQog
ICAgKysJCSAgICAgIHUzMiBmaWVsZF9tc2ssIGludCBmaWVsZF9zaGlmdCwKICAgICsrCQkgICAg
ICBpbnQgbnNoaWZ0LCB1bnNpZ25lZCBpbnQgc2NhbGVfZmFjdG9yKQogICAgICt7CiAgICAgKwlp
bnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKICAgICArCXUzMiByZWdfdmFsdWU7CiAgICBAQCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2h3bW9uLmMgKG5ldykKICAgICArCXdpdGhfaW50ZWxfcnVu
dGltZV9wbSh1bmNvcmUtPnJwbSwgd2FrZXJlZikKICAgICArCQlyZWdfdmFsdWUgPSBpbnRlbF91
bmNvcmVfcmVhZCh1bmNvcmUsIHJnYWRyKTsKICAgICArCiAgICAtKwlyZWdfdmFsdWUgPSBsZTMy
X2dldF9iaXRzKGNwdV90b19sZTMyKHJlZ192YWx1ZSksIGZpZWxkX21zayk7CiAgICArKwlyZWdf
dmFsdWUgPSAocmVnX3ZhbHVlICYgZmllbGRfbXNrKSA+PiBmaWVsZF9zaGlmdDsKICAgICArCXNj
YWxlZF92YWwgPSBtdWxfdTMyX3UzMihzY2FsZV9mYWN0b3IsIHJlZ192YWx1ZSk7CiAgICAgKwog
ICAgICsJLyogU2hpZnQsIHJvdW5kaW5nIHRvIG5lYXJlc3QgKi8KICAgIEBAIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaHdtb24uYyAobmV3KQogICAgICsJcmV0dXJuIHNjYWxlZF92YWw7CiAg
ICAgK30KICAgICArCiAgICAtKy8qCiAgICAtKyAqIF9maWVsZF9yZWFkNjRfYW5kX3NjYWxlKCkg
LSByZWFkIGEgNjQtYml0IHJlZ2lzdGVyIGFuZCBzY2FsZS4KICAgIC0rICovCiAgICAtK3N0YXRp
YyBfX2Fsd2F5c19pbmxpbmUgdTY0CiAgICArK3N0YXRpYyB1NjQKICAgICArX2ZpZWxkX3JlYWQ2
NF9hbmRfc2NhbGUoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJnYWRy
LAogICAgLSsJCQl1NjQgZmllbGRfbXNrLCBpbnQgbnNoaWZ0LCB1bnNpZ25lZCBpbnQgc2NhbGVf
ZmFjdG9yKQogICAgKysJCQl1NjQgZmllbGRfbXNrLCBpbnQgZmllbGRfc2hpZnQsCiAgICArKwkJ
CWludCBuc2hpZnQsIHVuc2lnbmVkIGludCBzY2FsZV9mYWN0b3IpCiAgICAgK3sKICAgICArCWlu
dGVsX3dha2VyZWZfdCB3YWtlcmVmOwogICAgICsJdTY0IHJlZ192YWx1ZTsKICAgIEBAIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uYyAobmV3KQogICAgICsJd2l0aF9pbnRlbF9ydW50
aW1lX3BtKHVuY29yZS0+cnBtLCB3YWtlcmVmKQogICAgICsJCXJlZ192YWx1ZSA9IGludGVsX3Vu
Y29yZV9yZWFkNjQodW5jb3JlLCByZ2Fkcik7CiAgICAgKwogICAgLSsJcmVnX3ZhbHVlID0gbGU2
NF9nZXRfYml0cyhjcHVfdG9fbGU2NChyZWdfdmFsdWUpLCBmaWVsZF9tc2spOwogICAgKysJcmVn
X3ZhbHVlID0gKHJlZ192YWx1ZSAmIGZpZWxkX21zaykgPj4gZmllbGRfc2hpZnQ7CiAgICAgKwlz
Y2FsZWRfdmFsID0gc2NhbGVfZmFjdG9yICogcmVnX3ZhbHVlOwogICAgICsKICAgICArCS8qIFNo
aWZ0LCByb3VuZGluZyB0byBuZWFyZXN0ICovCiAgICBAQCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2h3bW9uLmMgKG5ldykKICAgICArCXJldHVybiBzY2FsZWRfdmFsOwogICAgICt9CiAgICAg
KwogICAgLSsvKgogICAgLSsgKiBfZmllbGRfc2NhbGVfYW5kX3dyaXRlKCkKICAgIC0rICovCiAg
ICAtK3N0YXRpYyBfX2Fsd2F5c19pbmxpbmUgdm9pZAogICAgKytzdGF0aWMgdm9pZAogICAgICtf
ZmllbGRfc2NhbGVfYW5kX3dyaXRlKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKICAgICAr
CQkgICAgICAgaTkxNV9yZWdfdCByZ2FkciwKICAgIC0rCQkgICAgICAgdTMyIGZpZWxkX21zaywg
aW50IG5zaGlmdCwKICAgIC0rCQkgICAgICAgdW5zaWduZWQgaW50IHNjYWxlX2ZhY3RvciwgbG9u
ZyBsdmFsKQogICAgKysJCSAgICAgICB1MzIgZmllbGRfbXNrLCBpbnQgZmllbGRfc2hpZnQsCiAg
ICArKwkJICAgICAgIGludCBuc2hpZnQsIHVuc2lnbmVkIGludCBzY2FsZV9mYWN0b3IsIGxvbmcg
bHZhbCkKICAgICArewogICAgICsJdTMyIG52YWw7CiAgICAgKwl1MzIgYml0c190b19jbGVhcjsK
ICAgIEBAIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uYyAobmV3KQogICAgICsJbnZh
bCA9IERJVl9ST1VORF9DTE9TRVNUX1VMTCgodTY0KWx2YWwgPDwgbnNoaWZ0LCBzY2FsZV9mYWN0
b3IpOwogICAgICsKICAgICArCWJpdHNfdG9fY2xlYXIgPSBmaWVsZF9tc2s7CiAgICAtKwliaXRz
X3RvX3NldCA9IGxlMzJfdG9fY3B1KGxlMzJfZW5jb2RlX2JpdHMobnZhbCwgZmllbGRfbXNrKSk7
CiAgICArKwliaXRzX3RvX3NldCA9IChudmFsIDw8IGZpZWxkX3NoaWZ0KSB8IGZpZWxkX21zazsK
ICAgICArCiAgICAgKwlfbG9ja2VkX3dpdGhfcG1faW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIHJn
YWRyLAogICAgICsJCQkJCSBiaXRzX3RvX2NsZWFyLCBiaXRzX3RvX3NldCk7CiAgICBAQCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2h3bW9uLmMgKG5ldykKICAgICArCiAgICAgKwl1bGx2YWwg
PSBfZmllbGRfcmVhZF9hbmRfc2NhbGUodW5jb3JlLCBod21vbi0+cmcucGtnX3JhcGxfbGltaXQs
CiAgICAgKwkJCQkgICAgICAgUEtHX1BXUl9MSU1fMV9USU1FLAogICAgKysJCQkJICAgICAgIEZJ
RUxEX1NISUZUKFBLR19QV1JfTElNXzFfVElNRSksCiAgICAgKwkJCQkgICAgICAgaHdtb24tPnNj
bF9zaGlmdF90aW1lLCBTRl9USU1FKTsKICAgICArCiAgICAgKwlyZXQgPSBzeXNmc19lbWl0KGJ1
ZiwgIiVsbHVcbiIsIHVsbHZhbCk7CiAgICBAQCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2h3
bW9uLmMgKG5ldykKICAgICArCiAgICAgKwlfZmllbGRfc2NhbGVfYW5kX3dyaXRlKHVuY29yZSwg
aHdtb24tPnJnLnBrZ19yYXBsX2xpbWl0LAogICAgICsJCQkgICAgICAgUEtHX1BXUl9MSU1fMl9U
SU1FLAogICAgKysJCQkgICAgICAgRklFTERfU0hJRlQoUEtHX1BXUl9MSU1fMl9USU1FKSwKICAg
ICArCQkJICAgICAgIGh3bW9uLT5zY2xfc2hpZnRfdGltZSwgU0ZfVElNRSwgdmFsKTsKICAgICAr
CiAgICAgKwlyZXR1cm4gY291bnQ7CiAgICBAQCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2h3
bW9uLmMgKG5ldykKICAgICArCQl1dmFsID0gKHUzMilfZmllbGRfcmVhZDY0X2FuZF9zY2FsZSh1
bmNvcmUsCiAgICAgKwkJCQkJCSAgICBod21vbi0+cmcucGtnX3Bvd2VyX3NrdSwKICAgICArCQkJ
CQkJICAgIFBLR19NSU5fUFdSLAogICAgKysJCQkJCQkgICAgRklFTERfU0hJRlQoUEtHX01JTl9Q
V1IpLAogICAgICsJCQkJCQkgICAgaHdtb24tPnNjbF9zaGlmdF9wb3dlciwKICAgICArCQkJCQkJ
ICAgIFNGX1BPV0VSKTsKICAgICArCWVsc2UKICAgIEBAIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaHdtb24uYyAobmV3KQogICAgICsJCXV2YWwgPSAodTMyKV9maWVsZF9yZWFkNjRfYW5kX3Nj
YWxlKHVuY29yZSwKICAgICArCQkJCQkJICAgIGh3bW9uLT5yZy5wa2dfcG93ZXJfc2t1LAogICAg
ICsJCQkJCQkgICAgUEtHX01BWF9QV1IsCiAgICArKwkJCQkJCSAgICBGSUVMRF9TSElGVChQS0df
TUFYX1BXUiksCiAgICAgKwkJCQkJCSAgICBod21vbi0+c2NsX3NoaWZ0X3Bvd2VyLAogICAgICsJ
CQkJCQkgICAgU0ZfUE9XRVIpOwogICAgICsJZWxzZQogICAgQEAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9od21vbi5jIChuZXcpCiAgICAgKwkJKnZhbCA9IChsb25nKV9maWVsZF9yZWFkX2Fu
ZF9zY2FsZSh1bmNvcmUsCiAgICAgKwkJCQkJCSAgIGh3bW9uLT5yZy5wa2dfcmFwbF9saW1pdCwK
ICAgICArCQkJCQkJICAgUEtHX1BXUl9MSU1fMSwKICAgICsrCQkJCQkJICAgRklFTERfU0hJRlQo
UEtHX1BXUl9MSU1fMSksCiAgICAgKwkJCQkJCSAgIGh3bW9uLT5zY2xfc2hpZnRfcG93ZXIsCiAg
ICAgKwkJCQkJCSAgIFNGX1BPV0VSKTsKICAgICArCQlicmVhazsKICAgIEBAIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaHdtb24uYyAobmV3KQogICAgICsJCSp2YWwgPSAobG9uZylfZmllbGRf
cmVhZF9hbmRfc2NhbGUodW5jb3JlLAogICAgICsJCQkJCQkgICBod21vbi0+cmcucGtnX3JhcGxf
bGltaXRfdWR3LAogICAgICsJCQkJCQkgICBQS0dfUFdSX0xJTV8yLAogICAgKysJCQkJCQkgICBG
SUVMRF9TSElGVChQS0dfUFdSX0xJTV8yKSwKICAgICArCQkJCQkJICAgaHdtb24tPnNjbF9zaGlm
dF9wb3dlciwKICAgICArCQkJCQkJICAgU0ZfUE9XRVIpOwogICAgICsJCWJyZWFrOwogICAgQEAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5jIChuZXcpCiAgICAgKwkJX2ZpZWxkX3Nj
YWxlX2FuZF93cml0ZSh1bmNvcmUsCiAgICAgKwkJCQkgICAgICAgaHdtb24tPnJnLnBrZ19yYXBs
X2xpbWl0LAogICAgICsJCQkJICAgICAgIFBLR19QV1JfTElNXzEsCiAgICArKwkJCQkgICAgICAg
RklFTERfU0hJRlQoUEtHX1BXUl9MSU1fMSksCiAgICAgKwkJCQkgICAgICAgaHdtb24tPnNjbF9z
aGlmdF9wb3dlciwKICAgICArCQkJCSAgICAgICBTRl9QT1dFUiwgdmFsKTsKICAgICArCQlicmVh
azsKICAgIEBAIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uYyAobmV3KQogICAgICsJ
CV9maWVsZF9zY2FsZV9hbmRfd3JpdGUodW5jb3JlLAogICAgICsJCQkJICAgICAgIGh3bW9uLT5y
Zy5wa2dfcmFwbF9saW1pdF91ZHcsCiAgICAgKwkJCQkgICAgICAgUEtHX1BXUl9MSU1fMiwKICAg
ICsrCQkJCSAgICAgICBGSUVMRF9TSElGVChQS0dfUFdSX0xJTV8yKSwKICAgICArCQkJCSAgICAg
ICBod21vbi0+c2NsX3NoaWZ0X3Bvd2VyLAogICAgICsJCQkJICAgICAgIFNGX1BPV0VSLCB2YWwp
OwogICAgICsJCWJyZWFrOwogICAgQEAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5j
IChuZXcpCiAgICAgKwkgKiBub3QgcmVzZXQgYnkgYSBtb2R1bGUgdW5sb2FkL2xvYWQgc2VxdWVu
Y2UuICBUbyBhbGxvdyBwcm9wZXIKICAgICArCSAqIGZ1bmN0aW9uaW5nIGFmdGVyIGEgbW9kdWxl
IHJlbG9hZCwgdGhlIHZhbHVlIGZvciBwb3dlcjFfbWF4IGlzCiAgICAgKwkgKiByZXN0b3JlZCB0
byBpdHMgb3JpZ2luYWwgdmFsdWUgYXQgbW9kdWxlIHVubG9hZCB0aW1lIGluCiAgICAtKwkgKiBp
OTE1X2h3bW9uX2ZpbmkoKS4KICAgICsrCSAqIGk5MTVfaHdtb25fdW5yZWdpc3RlcigpLgogICAg
ICsJICovCiAgICAgKwlod21vbi0+cG93ZXJfbWF4X2luaXRpYWxfdmFsdWUgPQogICAgICsJCSh1
MzIpX2ZpZWxkX3JlYWRfYW5kX3NjYWxlKHVuY29yZSwKICAgICArCQkJCQkgICBod21vbi0+cmcu
cGtnX3JhcGxfbGltaXQsCiAgICAgKwkJCQkJICAgUEtHX1BXUl9MSU1fMSwKICAgICsrCQkJCQkg
ICBGSUVMRF9TSElGVChQS0dfUFdSX0xJTV8xKSwKICAgICArCQkJCQkgICBod21vbi0+c2NsX3No
aWZ0X3Bvd2VyLCBTRl9QT1dFUik7CiAgICAgK30KICAgICArCiAgICAtK2ludCBpOTE1X2h3bW9u
X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRybV9kZXYpCiAgICArK3ZvaWQgaTkxNV9od21vbl9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKICAgICArewogICAgLSsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRybV9kZXYpOwogICAgKysJc3Ry
dWN0IGRybV9kZXZpY2UgKmRybV9kZXYgPSAmaTkxNS0+ZHJtOwogICAgICsJc3RydWN0IGk5MTVf
aHdtb24gKmh3bW9uID0gJmk5MTUtPmh3bW9uOwogICAgICsJc3RydWN0IGRldmljZSAqaHdtb25f
ZGV2OwogICAgICsKICAgIEBAIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaHdtb24uYyAobmV3
KQogICAgICsKICAgICArCWlmIChJU19FUlIoaHdtb25fZGV2KSkgewogICAgICsJCW11dGV4X2Rl
c3Ryb3koJmh3bW9uLT5od21vbl9sb2NrKTsKICAgIC0rCQlyZXR1cm4gUFRSX0VSUihod21vbl9k
ZXYpOwogICAgKysJCWRybV9pbmZvKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gcmVnaXN0ZXIgaHdt
b24gZm9yIGk5MTVcbiIpOwogICAgKysJCXJldHVybjsKICAgICArCX0KICAgICArCiAgICAgKwlo
d21vbi0+ZGV2ID0gaHdtb25fZGV2OwogICAgICsKICAgIC0rCXJldHVybiAwOwogICAgKysJcmV0
dXJuOwogICAgICt9CiAgICAgKwogICAgLSt2b2lkIGk5MTVfaHdtb25fZmluaShzdHJ1Y3QgZHJt
X2RldmljZSAqZHJtX2RldikKICAgICsrdm9pZCBpOTE1X2h3bW9uX3VucmVnaXN0ZXIoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAgICAgK3sKICAgIC0rCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdG9faTkxNShkcm1fZGV2KTsKICAgICArCXN0cnVjdCBpOTE1X2h3bW9u
ICpod21vbiA9ICZpOTE1LT5od21vbjsKICAgICArCiAgICAgKwlpZiAoaHdtb24tPnBvd2VyX21h
eF9pbml0aWFsX3ZhbHVlKSB7CiAgICAgKwkJLyogUmVzdG9yZSBwb3dlcjFfbWF4LiAqLwogICAg
ICsJCV9maWVsZF9zY2FsZV9hbmRfd3JpdGUoJmk5MTUtPnVuY29yZSwgaHdtb24tPnJnLnBrZ19y
YXBsX2xpbWl0LAogICAgLSsJCQkJICAgICAgIFBLR19QV1JfTElNXzEsIGh3bW9uLT5zY2xfc2hp
ZnRfcG93ZXIsCiAgICArKwkJCQkgICAgICAgUEtHX1BXUl9MSU1fMSwKICAgICsrCQkJCSAgICAg
ICBGSUVMRF9TSElGVChQS0dfUFdSX0xJTV8xKSwKICAgICsrCQkJCSAgICAgICBod21vbi0+c2Ns
X3NoaWZ0X3Bvd2VyLAogICAgICsJCQkJICAgICAgIFNGX1BPV0VSLAogICAgICsJCQkJICAgICAg
IGh3bW9uLT5wb3dlcl9tYXhfaW5pdGlhbF92YWx1ZSk7CiAgICAgKwl9CiAgICBAQCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2h3bW9uLmggKG5ldykKICAgICArI2lmbmRlZiBfX0lOVEVMX0hX
TU9OX0hfXwogICAgICsjZGVmaW5lIF9fSU5URUxfSFdNT05fSF9fCiAgICAgKwogICAgLSsjaW5j
bHVkZSA8ZHJtL2RybV9kZXZpY2UuaD4KICAgICsrI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAg
ICArKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgogICAgICsjaW5jbHVkZSAiaTkxNV9yZWcuaCIK
ICAgICArCiAgICAgK3N0cnVjdCBpOTE1X2h3bW9uX3JlZyB7CiAgICBAQCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2h3bW9uLmggKG5ldykKICAgICArCWludCBzY2xfc2hpZnRfdGltZTsKICAg
ICArfTsKICAgICArCiAgICAtK2ludCBpOTE1X2h3bW9uX2luaXQoc3RydWN0IGRybV9kZXZpY2Ug
KmRybV9kZXYpOwogICAgLSt2b2lkIGk5MTVfaHdtb25fZmluaShzdHJ1Y3QgZHJtX2RldmljZSAq
ZHJtX2Rldik7CiAgICArK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOwogICAgKysKICAgICsrdm9p
ZCBpOTE1X2h3bW9uX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKICAg
ICsrdm9pZCBpOTE1X2h3bW9uX3VucmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpOwogICAgICsKICAgICArI2VuZGlmCiAgICAgCgpiYXNlLWNvbW1pdDogODYyZmQxYjFlMzQ3
NDUxYTA3NTg3M2MyNmU4YjVhM2UxZjBmY2JiYgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
