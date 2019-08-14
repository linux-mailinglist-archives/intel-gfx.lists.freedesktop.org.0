Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A304E8D2B9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 14:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1900D6E219;
	Wed, 14 Aug 2019 12:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6470A6E219
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 12:07:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 05:07:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="194516588"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.30.104])
 by fmsmga001.fm.intel.com with ESMTP; 14 Aug 2019 05:07:03 -0700
MIME-Version: 1.0
To: dong.yang@intel.com, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190814075405.16822-1-dong.yang@intel.com>
References: <20190814075405.16822-1-dong.yang@intel.com>
Message-ID: <156578442304.10647.12274069325599612734@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 14 Aug 2019 15:07:03 +0300
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove i915 ggtt WA since GT E0
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
Cc: Yang@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBkb25nLnlhbmdAaW50ZWwuY29tICgyMDE5LTA4LTE0IDEwOjU0OjA1KQo+IEZyb206
ICJZYW5nLCBEb25nIiA8ZG9uZy55YW5nQGludGVsLmNvbT4KPiAKPiBCcm94dG9uIHN0ZXBwaW5n
cyBzdGFydGluZyBmcm9tIEdUIEUwIGhhdmUgZml4ZWQgdGhlIGJ1ZywgcmVtb3ZlCj4gV0Egc2lu
Y2Ugc3RlcHBpbmcgR1QgRTAuCj4gCj4gdjI6IGFkZCBjb21tZW50IGluIGNvZGUsIGJ5Ogo+IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KCkkgZGlkbid0
IHN1Z2dlc3QgYW55IGNvbW1lbnRzLCBJIHN1Z2dlc3RlZCB0byBjaGFuZ2UgdGhlIGNvZGUuCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFlhbmcsIERvbmcgPGRvbmcueWFuZ0BpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCA1ICsrKystCj4gIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKPiBpbmRleCA1ZjNlNWMxM2ZiYWEuLmEwZGZkMTkyNmIxYiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0yMTQxLDYgKzIxNDEsOCBAQCBJU19TVUJQTEFURk9STShj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgI2RlZmluZSBCWFRfUkVWSURf
QjAgICAgICAgICAgIDB4Mwo+ICAjZGVmaW5lIEJYVF9SRVZJRF9CX0xBU1QgICAgICAgMHg4Cj4g
ICNkZWZpbmUgQlhUX1JFVklEX0MwICAgICAgICAgICAweDkKPiArI2RlZmluZSBCWFRfUkVWSURf
RDAgICAgICAgICAgIDB4Qwo+ICsjZGVmaW5lIEJYVF9SRVZJRF9FMCAgICAgICAgICAgMHhECj4g
IAo+ICAjZGVmaW5lIElTX0JYVF9SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSBcCj4gICAg
ICAgICAoSVNfQlJPWFRPTihkZXZfcHJpdikgJiYgSVNfUkVWSUQoZGV2X3ByaXYsIHNpbmNlLCB1
bnRpbCkpCj4gQEAgLTIzNTcsNyArMjM1OSw4IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9z
Y2Fub3V0X25lZWRzX3Z0ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
IHN0YXRpYyBpbmxpbmUgYm9vbAo+ICBpbnRlbF9nZ3R0X3VwZGF0ZV9uZWVkc192dGRfd2Eoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gLSAgICAgICByZXR1cm4gSVNf
QlJPWFRPTihkZXZfcHJpdikgJiYgaW50ZWxfdnRkX2FjdGl2ZSgpOwo+ICsgICAgICAgLyogQnJv
eHRvbiBzdGVwcGluZ3Mgc3RhcnRpbmcgZnJvbSBFMCBoYXZlIGZpeGVkIHRoZSBidWcuICovCgpU
aGlzIGNvbW1lbnQgaXMgbm90IG5lZWRlZC4KCkkgc3VnZ2VzdGVkIHVzaW5nIEJYVF9SRVZJRF9E
X0xBU1QgZGVmaW5lIGluc3RlYWQgb2YgRDAuCgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
