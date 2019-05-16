Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E0A1FF4C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 07:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F5B892A9;
	Thu, 16 May 2019 05:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59534892A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 05:58:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 22:58:08 -0700
X-ExtLoop1: 1
Received: from hchegond-ivm.ra.intel.com ([10.54.134.59])
 by fmsmga008.fm.intel.com with ESMTP; 15 May 2019 22:58:07 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2019 22:58:06 -0700
Message-Id: <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1557985315.git.harish.chegondi@intel.com>
References: <cover.1557985315.git.harish.chegondi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for GEN
 7 GPUs
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZGlzcGxheV9waXBlX2NyY19pcnFfaGFuZGxlcigpIHNraXBzIHRoZSBmaXJzdCBDUkMgZm9yIGFs
bCBHUFVzIGFuZCB0aGUKc2Vjb25kIENSQyBmb3IgR0VOOCsgR1BVcy4gVGhlIHNlY29uZCBDUkMg
aXMgaW52YWxpZCBldmVuIGZvciBCWVQgd2hpY2gKaXMgYSBHRU43IEdQVS4gU28sIHNraXAgdGhl
IHNlY29uZCBDUkMgZXZlbiBmb3IgR0VONyBHUFVzLgoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+CkNjOiBUb21pIFNhcnZlbGEgPHRvbWkucC5zYXJ2ZWxhQGludGVsLmNv
bT4KQ2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEhhcmlzaCBDaGVnb25kaSA8aGFyaXNoLmNoZWdvbmRpQGludGVsLmNvbT4KUmVmZXJlbmNlczog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTkxCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpp
bmRleCAyMzMyMTFmZGUwZWEuLjM4MDllOWY3ZmFlMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
CkBAIC0xNzc1LDExICsxNzc1LDExIEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfcGlwZV9jcmNfaXJx
X2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCSAqIGJvbmtlcnMu
IFNvIGxldCdzIGp1c3Qgd2FpdCBmb3IgdGhlIG5leHQgdmJsYW5rIGFuZCByZWFkCiAJICogb3V0
IHRoZSBidWdneSByZXN1bHQuCiAJICoKLQkgKiBPbiBHRU44KyBzb21ldGltZXMgdGhlIHNlY29u
ZCBDUkMgaXMgYm9ua2VycyBhcyB3ZWxsLCBzbworCSAqIE9uIEdFTjcrIHNvbWV0aW1lcyB0aGUg
c2Vjb25kIENSQyBpcyBib25rZXJzIGFzIHdlbGwsIHNvCiAJICogZG9uJ3QgdHJ1c3QgdGhhdCBv
bmUgZWl0aGVyLgogCSAqLwogCWlmIChwaXBlX2NyYy0+c2tpcHBlZCA8PSAwIHx8Ci0JICAgIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDggJiYgcGlwZV9jcmMtPnNraXBwZWQgPT0gMSkpIHsKKwkg
ICAgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNyAmJiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAxKSkg
ewogCQlwaXBlX2NyYy0+c2tpcHBlZCsrOwogCQlzcGluX3VubG9jaygmcGlwZV9jcmMtPmxvY2sp
OwogCQlyZXR1cm47Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
