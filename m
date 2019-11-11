Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781FF7EA9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 20:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360A56E065;
	Mon, 11 Nov 2019 19:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA4F6E065
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 19:06:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 11:06:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="202420499"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by fmsmga007.fm.intel.com with ESMTP; 11 Nov 2019 11:06:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 11:07:21 -0800
Message-Id: <20191111190721.32606-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: MOCS table fixes
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGJzcGVjIHdhcyBqdXN0IHVwZGF0ZWQgd2l0aCBhIGNvdXBsZSBjb3JyZWN0aW9ucyB0byB0
aGUgVEdMIE1PQ1MKdGFibGUuICBFbnRyaWVzIDE2IGFuZCAxNyBhcmUgbWFya2VkIGFzIHJlc2Vy
dmVkIChvdmVycmlkaW5nIHRoZSB2YWx1ZQp3ZSBpbmhlcml0IGZyb20gR0VOMTFfTU9DU19FTlRS
SUVTKSBhbmQgZW50cnkgNjEgc2hvdWxkbid0IGhhdmUgdGhlCkxFX1NDRiBiaXQgYXBwbGllZC4K
Ck5vdGUgdGhhdCBzaW5jZSB3ZSdyZSBpbnRlbnRpb25hbGx5L2V4cGxpY2l0bHkgb3ZlcnJpZGlu
ZyB0YWJsZSBlbnRyaWVzCmZyb20gR0VOMTFfTU9DU19FTlRSSUVTIHdlIHNob3VsZCBzdXBwcmVz
cyB0aGUgJ292ZXJyaWRlLWluaXQnIGNvbXBpbGVyCndhcm5pbmdzIGZvciB0aGlzIGZpbGUuCgpC
c3BlYzogNDUxMDEKRml4ZXM6IDJkZGY5OTIxNzljNCAoImRybS9pOTE1L3RnbDogRGVmaW5lIE1P
Q1MgZW50cmllcyBmb3IgVGlnZXJsYWtlIikKQ2M6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50
ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgIHwgMSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCA2ICsrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IGUwZmQx
MGMwY2ZiOC4uOGM2YjVmYTQzNDczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtMjcsNiArMjcs
NyBAQCBzdWJkaXItY2NmbGFncy0kKENPTkZJR19EUk1fSTkxNV9XRVJST1IpICs9IC1XZXJyb3IK
ICMgRmluZSBncmFpbmVkIHdhcm5pbmdzIGRpc2FibGUKIENGTEFHU19pOTE1X3BjaS5vID0gJChj
YWxsIGNjLWRpc2FibGUtd2FybmluZywgb3ZlcnJpZGUtaW5pdCkKIENGTEFHU19kaXNwbGF5L2lu
dGVsX2ZiZGV2Lm8gPSAkKGNhbGwgY2MtZGlzYWJsZS13YXJuaW5nLCBvdmVycmlkZS1pbml0KQor
Q0ZMQUdTX2d0L2ludGVsX21vY3MubyA9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5pbmcsIG92ZXJy
aWRlLWluaXQpCiAKIHN1YmRpci1jY2ZsYWdzLXkgKz0gXAogCSQoY2FsbCBhcy1pbnN0cixtb3Zu
dGRxYSAoJWVheCkkKGNvbW1hKSV4bW0wLC1EQ09ORklHX0FTX01PVk5URFFBKQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jCmluZGV4IDZlODgxYzczNWIyMC4uY2Q3MjIzNTU1M2FhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC0yNDksNiArMjQ5LDEwIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSB0aWdlcmxha2VfbW9jc190YWJs
ZVtdID0gewogCiAJR0VOMTFfTU9DU19FTlRSSUVTLAogCisJLyogUmVzZXJ2ZWQgKG92ZXJyaWRl
cyB2YWx1ZXMgZnJvbSBHRU4xMV9NT0NTX0VOVFJJRVMpICovCisJTU9DU19FTlRSWSgxNiwgMHgw
LCAweDApLAorCU1PQ1NfRU5UUlkoMTcsIDB4MCwgMHgwKSwKKwogCS8qIEltcGxpY2l0bHkgZW5h
YmxlIEwxIC0gSERDOkwxICsgTDMgKyBMTEMgKi8KIAlNT0NTX0VOVFJZKDQ4LAogCQkgICBMRV8z
X1dCIHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDMpLApAQCAtMjcxLDcgKzI3NSw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSB0aWdlcmxha2VfbW9jc190YWJsZVtd
ID0gewogCQkgICBMM18xX1VDKSwKIAkvKiBIVyBTcGVjaWFsIENhc2UgKERpc3BsYXlhYmxlKSAq
LwogCU1PQ1NfRU5UUlkoNjEsCi0JCSAgIExFXzFfVUMgfCBMRV9UQ18xX0xMQyB8IExFX1NDRigx
KSwKKwkJICAgTEVfMV9VQyB8IExFX1RDXzFfTExDLAogCQkgICBMM18zX1dCKSwKIH07CiAKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
