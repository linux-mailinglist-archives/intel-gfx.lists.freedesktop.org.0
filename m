Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6C16B427
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 23:37:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD366E87B;
	Mon, 24 Feb 2020 22:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E716E87B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 22:37:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 14:37:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="231266302"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2020 14:36:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 14:36:51 -0800
Message-Id: <20200224223651.3801646-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200201082834.10163-1-matthew.s.atwood@intel.com>
References: <20200201082834.10163-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/tgl: Add Wa_1606054188:tgl
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

RnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgoKT24gVGlnZXIg
TGFrZSB3ZSBkbyBub3Qgc3VwcG9ydCBzb3VyY2Uga2V5aW5nIGluIHRoZSBwaXhlbCBmb3JtYXRz
IFAwMTAsClAwMTIsIFAwMTYuCgp2MjogTW92ZSBXQSB0byBlbmQgb2YgZnVuY3Rpb24uIENyZWF0
ZSBoZWxwZXIgZnVuY3Rpb24gZm9yIGZvcm1hdApjaGVjay4gTGVzcyB2ZXJib3NlIGRlYnVnZ2lu
ZyBtZXNzYWdpbmcuCgp2Mzogd2hpdGVzcGFjZQoKdjQoTWF0dFIpOgogLSBBY3R1YWxseSByZXR1
cm4gRUlOVkFMIHRvIHJlamVjdCB0aGlzIGNvbWJpbmF0aW9uLgogLSBQYXNzIGZvcm1hdCBwYXJh
bWV0ZXIgYXMgdTMyLgogLSBNYWtlIHRlc3QgVEdMLXNwZWNpZmljIGZvciBub3cuCiAtIFN3aXRj
aCB0byBwZXItZGV2aWNlIGxvZ2dpbmcuCiAtIFNob3J0ZW4vc2ltcGxpZnkgY29tbWVudC4KCkJz
cGVjOiA1Mjg5MApDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0
IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDIxICsrKysrKysrKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCA3YWJlZWZlOGRjZTUuLmRjN2QzZjNmNGViMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0yMDc3LDYg
KzIwNzcsMTggQEAgdmx2X3Nwcml0ZV9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGJvb2wgaW50ZWxfZm9ybWF0X2lzX3Aw
MXgodTMyIGZvcm1hdCkKK3sKKwlzd2l0Y2ggKGZvcm1hdCkgeworCWNhc2UgRFJNX0ZPUk1BVF9Q
MDEwOgorCWNhc2UgRFJNX0ZPUk1BVF9QMDEyOgorCWNhc2UgRFJNX0ZPUk1BVF9QMDE2OgorCQly
ZXR1cm4gdHJ1ZTsKKwlkZWZhdWx0OgorCQlyZXR1cm4gZmFsc2U7CisJfQorfQorCiBzdGF0aWMg
aW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUpCiB7CkBAIC0yMTU1LDYgKzIxNjcsMTUgQEAgc3RhdGljIGludCBza2xfcGxhbmVfY2hl
Y2tfZmIoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCXJldHVy
biAtRUlOVkFMOwogCX0KIAorCS8qIFdhXzE2MDYwNTQxODg6dGdsICovCisJaWYgKElTX1RJR0VS
TEFLRShkZXZfcHJpdikgJiYKKwkgICAgcGxhbmVfc3RhdGUtPmNrZXkuZmxhZ3MgJiBJOTE1X1NF
VF9DT0xPUktFWV9TT1VSQ0UgJiYKKwkgICAgaW50ZWxfZm9ybWF0X2lzX3AwMXgoZmItPmZvcm1h
dC0+Zm9ybWF0KSkgeworCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKKwkJCSAgICAiU291
cmNlIGNvbG9yIGtleWluZyBub3Qgc3VwcG9ydGVkIHdpdGggUDAxeCBmb3JtYXRzXG4iKTsKKwkJ
cmV0dXJuIC1FSU5WQUw7CisJfQorCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjQuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
