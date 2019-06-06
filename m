Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D53838116
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 00:42:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C57589A83;
	Thu,  6 Jun 2019 22:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 929BC89A77
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 22:42:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 15:42:46 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jun 2019 15:42:46 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 15:42:25 -0700
Message-Id: <20190606224225.14287-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606224225.14287-1-daniele.ceraolospurio@intel.com>
References: <20190606224225.14287-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/wopcm: update default size for gen11+
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHNpemUgaGFzIGJlZW4gaW5jcmVhc2VkIHRvIDJNQiBzdGFydGluZyBmcm9tIEdlbjExLiBH
dUMgYW5kIEh1QyBGV3MKZml0IGluIDFNQiBzbyB3ZSB3ZXJlIGZpbmUgZXZlbiB3aXRoIHRoZSBs
ZWdhY3kgZGVmaW5lLCBidXQgbGV0J3Mgc3RpbGwKbW92ZSB0byB0aGUgY29ycmVjdCBvbmUgYmVm
b3JlIHRoZSBibG9icyBncm93IHRvIGF2b2lkIGJlaW5nIGNhdWdodCBvZmYKZ3VhcmQgaW4gdGhl
IGZ1dHVyZS4KCnYyOiByZXR1cm4gZWFybHkgaWYgdGhlIHBsYXRmb3JtIGRvZXNuJ3QgaGF2ZSBH
dUMsIGZpeCBuaXRzIChNaWNoYWwpCgpCc3BlYzogMTI2OTAKU2lnbmVkLW9mZi1ieTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyB8IDE1ICsrKysrKysrKysrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3dvcGNtLmMKaW5kZXggZjgyYTQxNWVhMmJhLi43OGM4MTY3Y2ZkOTQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd29wY20uYwpAQCAtNDEsOCArNDEsOSBAQAogICogY29udGV4dCkuCiAg
Ki8KIAotLyogRGVmYXVsdCBXT1BDTSBzaXplIDFNQi4gKi8KLSNkZWZpbmUgR0VOOV9XT1BDTV9T
SVpFCQkJKDEwMjQgKiAxMDI0KQorLyogRGVmYXVsdCBXT1BDTSBzaXplIGlzIDJNQiBmcm9tIEdl
bjExLCAxTUIgb24gcHJldmlvdXMgcGxhdGZvcm1zICovCisjZGVmaW5lIEdFTjExX1dPUENNX1NJ
WkUJCShTWl8yTSkKKyNkZWZpbmUgR0VOOV9XT1BDTV9TSVpFCQkJKFNaXzFNKQogLyogMTZLQiBX
T1BDTSAoUlNWRCBXT1BDTSkgaXMgcmVzZXJ2ZWQgZnJvbSBIdUMgZmlybXdhcmUgdG9wLiAqLwog
I2RlZmluZSBXT1BDTV9SRVNFUlZFRF9TSVpFCQkoMTYgKiAxMDI0KQogCkBAIC03MSw3ICs3Miwx
NSBAQAogICovCiB2b2lkIGludGVsX3dvcGNtX2luaXRfZWFybHkoc3RydWN0IGludGVsX3dvcGNt
ICp3b3BjbSkKIHsKLQl3b3BjbS0+c2l6ZSA9IEdFTjlfV09QQ01fU0laRTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHdvcGNtX3RvX2k5MTUod29wY20pOworCisJaWYgKCFIQVNf
R1VDKGk5MTUpKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKQorCQl3
b3BjbS0+c2l6ZSA9IEdFTjExX1dPUENNX1NJWkU7CisJZWxzZQorCQl3b3BjbS0+c2l6ZSA9IEdF
TjlfV09QQ01fU0laRTsKIAogCURSTV9ERUJVR19EUklWRVIoIldPUENNIHNpemU6ICV1S2lCXG4i
LCB3b3BjbS0+c2l6ZSAvIDEwMjQpOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
