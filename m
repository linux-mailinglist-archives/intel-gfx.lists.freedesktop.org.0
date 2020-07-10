Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E58D21B45E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3926EBE3;
	Fri, 10 Jul 2020 11:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A246EBE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:03 +0000 (UTC)
IronPort-SDR: /16W0c1D+PIHyAf84HZcplhfSjK/g2yZ2BA2rJys+S7kIzZZmIZzvg79VJyzsbD2C1FalpqCz+
 3aYHpbvx0Opw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653626"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653626"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:02 -0700
IronPort-SDR: YE/5mn+/djgCMzBIL47CekZZrXS5GDDtWEwDY+pVsoJXqG3MK3r4xB/uDCMNnUdn35FeNUnCe7
 J1ovhpuEe9rg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257306"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:58:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:00 +0100
Message-Id: <20200710115757.290984-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 03/60] drm/i915/dg1: Add DG1 PCI IDs
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
QWRkIHRoZSBQQ0kgSUQgZm9yIERHMSwgYnV0IGtlZXAgaXQgb3V0IG9mIHRoZSB0YWJsZSB3ZSB1
c2UgdG8gcmVnaXN0ZXIKdGhlIGRyaXZlci4gQXQgdGhpcyBwb2ludCB3ZSBjYW4ndCBjb25zaWRl
ciB0aGUgZHJpdmVyIHJlYWR5IHRvIGJpbmQgdG8KdGhlIGRldmljZSBzaW5jZSB3ZSBiYXNpY2Fs
bHkgbWlzcyBzdXBwb3J0IGZvciBldmVyeXRoaW5nLiBXaGVuIG1vcmUKc3VwcG9ydCBpcyBtZXJn
ZWQgd2UgY2FuIGVuYWJsZSBpdCB0byB3b3JrIHBhcnRpYWxseSBmb3IgZXhhbXBsZSBhcyBhCmRp
c3BsYXktb25seSBkcml2ZXIuCgp2MjogcmVtb3ZlIERHMSBmcm9tIHRoZSBwY2kgdGFibGUgYW5k
IHJld29yZCBjb21taXQgbWVzc2FnZSAoTHVjYXMpCgpCc3BlYzogNDQ0NjMKCkNjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1
c211c0BpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+ICMgdjEKUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPgpSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDIgKy0KIGluY2x1ZGUvZHJtL2k5MTVf
cGNpaWRzLmggICAgICAgfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZjVhZjcyNTIxZGU2
Li44NWUyNTU3NTYzY2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtOTAxLDcgKzkwMSw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gcmtsX2luZm8gPSB7CiAJ
Lmhhc19tYXN0ZXJfdW5pdF9pcnEgPSAxLCBcCiAJLmlzX2RnZnggPSAxCiAKLXN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfZGcxX2luZm8gPSB7CitzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGRnMV9pbmZvID0gewogCUdFTjEyX0RHRlhfRkVB
VFVSRVMsCiAJUExBVEZPUk0oSU5URUxfREcxKSwKIAkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkg
fCBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0MpIHwgQklUKFBJUEVfRCksCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAppbmRl
eCBkNmNiMjg5OTJiYTAuLjk2ZTQwOGI0YmRjOSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkx
NV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC02MTgsNCArNjE4
LDggQEAKIAlJTlRFTF9WR0FfREVWSUNFKDB4NEM5MCwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVW
SUNFKDB4NEM5QSwgaW5mbykKIAorLyogREcxICovCisjZGVmaW5lIElOVEVMX0RHMV9JRFMoaW5m
bykgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0OTA1LCBpbmZvKQorCiAjZW5kaWYgLyogX0k5MTVf
UENJSURTX0ggKi8KLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
