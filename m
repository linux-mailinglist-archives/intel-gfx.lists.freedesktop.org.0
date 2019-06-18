Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E5749683
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 03:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C15A6E0C2;
	Tue, 18 Jun 2019 01:01:11 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A668E6E0C2
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 01:01:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 18:01:09 -0700
X-ExtLoop1: 1
Received: from relo-linux-5.ra.intel.com ([10.54.133.84])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2019 18:01:09 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 17 Jun 2019 18:01:07 -0700
Message-Id: <20190618010108.27499-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190618010108.27499-1-John.C.Harrison@Intel.com>
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Add whitelist workarounds for ICL
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KClVwZGF0ZWQg
d2hpdGVsaXN0IHRhYmxlIGZvciBJQ0wuCgp2MjogUmVkdWNlIGNoYW5nZXMgdG8ganVzdCB0aG9z
ZSByZXF1aXJlZCBmb3IgbWVkaWEgZHJpdmVyIHVudGlsCnRoZSBzZWxmdGVzdCBjYW4gYmUgdXBk
YXRlZCB0byBzdXBwb3J0IHRoZSBuZXcgZmVhdHVyZXMgb2YgdGhlCm90aGVyIGVudHJpZXMuCgpT
aWduZWQtb2ZmLWJ5OiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEgPHJvYmVydC5tLmZvc2hhQGludGVsLmNvbT4K
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMzggKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggNTMwOGEwODY0ZTc4Li5k
MzdlYmNkZGI5NjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwpAQCAtMTExMywxNyArMTExMywzMyBAQCBzdGF0aWMgdm9pZCBpY2xfd2hpdGVsaXN0X2J1
aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAlzdHJ1Y3QgaTkxNV93YV9s
aXN0ICp3ID0gJmVuZ2luZS0+d2hpdGVsaXN0OwogCi0JaWYgKGVuZ2luZS0+Y2xhc3MgIT0gUkVO
REVSX0NMQVNTKQotCQlyZXR1cm47Ci0KLQkvKiBXYUFsbG93VU1EVG9Nb2RpZnlIYWxmU2xpY2VD
aGlja2VuNzppY2wgKi8KLQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjlfSEFMRl9TTElDRV9DSElDS0VO
Nyk7Ci0KLQkvKiBXYUFsbG93VU1EVG9Nb2RpZnlTYW1wbGVyTW9kZTppY2wgKi8KLQl3aGl0ZWxp
c3RfcmVnKHcsIEdFTjEwX1NBTVBMRVJfTU9ERSk7Ci0KLQkvKiBXYUVuYWJsZVN0YXRlQ2FjaGVS
ZWRpcmVjdFRvQ1M6aWNsICovCi0Jd2hpdGVsaXN0X3JlZyh3LCBHRU45X1NMSUNFX0NPTU1PTl9F
Q09fQ0hJQ0tFTjEpOworCXN3aXRjaCAoZW5naW5lLT5jbGFzcykgeworCWNhc2UgUkVOREVSX0NM
QVNTOgorCQkvKiBXYUFsbG93VU1EVG9Nb2RpZnlIYWxmU2xpY2VDaGlja2VuNzppY2wgKi8KKwkJ
d2hpdGVsaXN0X3JlZyh3LCBHRU45X0hBTEZfU0xJQ0VfQ0hJQ0tFTjcpOworCisJCS8qIFdhQWxs
b3dVTURUb01vZGlmeVNhbXBsZXJNb2RlOmljbCAqLworCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjEw
X1NBTVBMRVJfTU9ERSk7CisKKwkJLyogV2FFbmFibGVTdGF0ZUNhY2hlUmVkaXJlY3RUb0NTOmlj
bCAqLworCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSk7
CisJCWJyZWFrOworCisJY2FzZSBWSURFT19ERUNPREVfQ0xBU1M6CisJCS8qIGh1Y1N0YXR1c1Jl
Z09mZnNldCAqLworCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBfTU1JTygweDIwMDAgKyBlbmdpbmUt
Pm1taW9fYmFzZSksCisJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQpOworCQkvKiBodWNV
S2VybmVsSGRySW5mb1JlZ09mZnNldCAqLworCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBfTU1JTygw
eDIwMTQgKyBlbmdpbmUtPm1taW9fYmFzZSksCisJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZf
UkQpOworCQkvKiBodWNTdGF0dXMyUmVnT2Zmc2V0ICovCisJCXdoaXRlbGlzdF9yZWdfZXh0KHcs
IF9NTUlPKDB4MjNCMCArIGVuZ2luZS0+bW1pb19iYXNlKSwKKwkJCQkgIFJJTkdfRk9SQ0VfVE9f
Tk9OUFJJVl9SRCk7CisJCWJyZWFrOworCisJZGVmYXVsdDoKKwkJYnJlYWs7CisJfQogfQogCiB2
b2lkIGludGVsX2VuZ2luZV9pbml0X3doaXRlbGlzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
