Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669B35302
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 01:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810F689191;
	Tue,  4 Jun 2019 23:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5A989191
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 23:15:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 16:15:49 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2019 16:15:49 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 16:15:29 -0700
Message-Id: <20190604231529.8332-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/wopcm: update default size for gen11+
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

VGhlIHNpemUgaGFzIGJlZW4gaW5jcmVhc2VkIHRvIDJNQiBzdGFydGluZyBmcm9tIGdlbjExLiBH
dUMgYW5kIEh1QyBGV3MKZml0IGluIDFNQiBzbyB3ZSB3ZXJlIGZpbmUgZXZlbiB3aXRoIHRoZSBs
ZWdhY3kgZGVmaW5lLCBidXQgbGV0J3Mgc3RpbGwKbW92ZSB0byB0aGUgY29ycmVjdCBvbmUgYmVm
b3JlIHRoZSBibG9icyBncm93IHRvIGF2b2lkIGJlaW5nIGNhdWdodCBvZmYKZ3VhcmQgaW4gdGhl
IGZ1dHVyZS4KCkJzcGVjOiA0NDk4MgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd29wY20uYyB8IDEwICsrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd29wY20uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKaW5kZXgg
ZjgyYTQxNWVhMmJhLi42Y2I5OTNlZWEyMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3dvcGNtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20u
YwpAQCAtNDEsOCArNDEsOSBAQAogICogY29udGV4dCkuCiAgKi8KIAotLyogRGVmYXVsdCBXT1BD
TSBzaXplIDFNQi4gKi8KLSNkZWZpbmUgR0VOOV9XT1BDTV9TSVpFCQkJKDEwMjQgKiAxMDI0KQor
LyogRGVmYXVsdCBXT1BDTSBzaXplIGlzIDJNQiBmcm9tIGdlbjExLCAxTUIgb24gcHJldmlvdXMg
cGxhdGZvcm1zICovCisjZGVmaW5lIEdFTjExX1dPUENNX1NJWkUJCShTWl8yTSkKKyNkZWZpbmUg
R0VOOV9XT1BDTV9TSVpFCQkJKFNaXzFNKQogLyogMTZLQiBXT1BDTSAoUlNWRCBXT1BDTSkgaXMg
cmVzZXJ2ZWQgZnJvbSBIdUMgZmlybXdhcmUgdG9wLiAqLwogI2RlZmluZSBXT1BDTV9SRVNFUlZF
RF9TSVpFCQkoMTYgKiAxMDI0KQogCkBAIC03MSw3ICs3MiwxMCBAQAogICovCiB2b2lkIGludGVs
X3dvcGNtX2luaXRfZWFybHkoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkKIHsKLQl3b3BjbS0+
c2l6ZSA9IEdFTjlfV09QQ01fU0laRTsKKwlpZiAoSU5URUxfR0VOKHdvcGNtX3RvX2k5MTUod29w
Y20pKSA+PSAxMSkKKwkJd29wY20tPnNpemUgPSBHRU4xMV9XT1BDTV9TSVpFOworCWVsc2UKKwkJ
d29wY20tPnNpemUgPSBHRU45X1dPUENNX1NJWkU7CiAKIAlEUk1fREVCVUdfRFJJVkVSKCJXT1BD
TSBzaXplOiAldUtpQlxuIiwgd29wY20tPnNpemUgLyAxMDI0KTsKIH0KLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
