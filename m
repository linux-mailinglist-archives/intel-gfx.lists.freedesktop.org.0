Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F491114105
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 13:54:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E6856E0D6;
	Thu,  5 Dec 2019 12:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8646E0D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 12:54:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 04:54:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="386165154"
Received: from unknown (HELO intel.com) ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 05 Dec 2019 04:54:12 -0800
Date: Thu, 5 Dec 2019 18:16:03 +0530
From: Anshuamn Gupta <anshuman.gupta@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191205124602.GA4234@intel.com>
References: <20191205123513.22603-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205123513.22603-1-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Fix in mmio offset
 calculation of DSB instance
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMi0wNSBhdCAxODowNToxMyArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPiBB
cyB0aGUgY3VycmVudCB1c2FnZSBpcyByZXN0cmljdGVkIHRvIGZpcnN0IERTQiBpbnN0YW5jZSBw
ZXIgcGlwZSwgc28KPiBleGlzdGluZyBjb2RlIGNvdWxkIG5vdCBjYXRjaCB0aGUgaXNzdWUgdG8g
Y2FsY3VsYXRlIHRoZSBtbWlvIG9mZnNldAo+IG9mIGRpZmZlcmVudCBEU0IgaW5zdGFuY2UgcGVy
IHBpcGUuIENvcnJlY3RlZCB0aGUgb2Zmc2V0IGNhbGN1bGF0aW9uLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
QW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5k
ZXggMWE2Mzc2YTk3ZDQ4Li4wYjI0MjUxM2UzZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPiBAQCAtMTIwNzYsNyArMTIwNzYsNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAgLyog
VGhpcyByZWdpc3RlciBjb250cm9scyB0aGUgRGlzcGxheSBTdGF0ZSBCdWZmZXIgKERTQikgZW5n
aW5lcy4gKi8KPiAgI2RlZmluZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAo+ICAjZGVm
aW5lIERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKQkoX0RTQlNMX0lOU1RBTkNFX0JBU0UgKyBcCj4g
LQkJCQkJIChwaXBlKSAqIDB4MTAwMCArIChpZCkgKiAxMDApCj4gKwkJCQkJIChwaXBlKSAqIDB4
MTAwMCArIChpZCkgKiAweDEwMCkKPiAgI2RlZmluZSBEU0JfSEVBRChwaXBlLCBpZCkJCV9NTUlP
KERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4MCkKPiAgI2RlZmluZSBEU0JfVEFJTChwaXBl
LCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4NCkKPiAgI2RlZmluZSBE
U0JfQ1RSTChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4OCkK
PiAtLSAKPiAyLjIyLjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
