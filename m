Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F424BA71
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495E86E3DA;
	Wed, 19 Jun 2019 13:47:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4FC6E3DA
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:47:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 06:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181639937"
Received: from mcostacx-wtg.ger.corp.intel.com (HELO localhost)
 ([10.249.47.136])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 06:47:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20190619132459.25351-3-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
 <20190619132459.25351-3-tvrtko.ursulin@linux.intel.com>
Date: Wed, 19 Jun 2019 16:48:30 +0300
Message-ID: <87lfxxlm8h.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/33] drm/i915: Introduce struct intel_gt
 as replacement for anonymous i915->gt
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

T24gV2VkLCAxOSBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPgo+IFdlIGhhdmUgbG9uZyBiZWVuIHNsaWdobHR5IGFubm95ZWQgYnkgdGhl
IGFub255bW91cyBpOTE1LT5ndC4KPgo+IFByb21vdGUgaXQgdG8gYSBzZXBhcmF0ZSBzdHJ1Y3R1
cmUgYW5kIGdpdmUgaXQgaXRzIG93biBoZWFkZXIuCj4KPiBUaGlzIGlzIGEgZmlyc3Qgc3RlcCB0
b3dhcmRzIGNsZWFuaW5nIHVwIHRoZSBzZXBhcmF0aW9uIGJldHdlZW4gaTkxNSBhbmQgZ3QuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCB8IDUzICsr
KysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgIHwgMzQgKy0tLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTUgaW5z
ZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3R5cGVzLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMC4uZGNkYjE4ZTBkZDg0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKPiBAQCAtMCwwICsxLDUzIEBACj4gKy8qCj4g
KyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKPiArICoKPiArICogQ29weXJpZ2h0IMKp
IDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPiArICovCgpodHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDYxNTA0MzE0Mi5HQTE4OTBAbmlzaGFkCgpCUiwKSmFu
aS4KCj4gKwo+ICsjaWZuZGVmIF9fSU5URUxfR1RfVFlQRVNfXwo+ICsjZGVmaW5lIF9fSU5URUxf
R1RfVFlQRVNfXwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2t0aW1lLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9saXN0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvbm90aWZpZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+Cj4gKyNpbmNsdWRl
IDxsaW51eC90eXBlcy5oPgo+ICsKPiArI2luY2x1ZGUgImk5MTVfdm1hLmgiCj4gKyNpbmNsdWRl
ICJpbnRlbF93YWtlcmVmLmgiCj4gKwo+ICtzdHJ1Y3QgaW50ZWxfZ3Qgewo+ICsJc3RydWN0IGk5
MTVfZ3RfdGltZWxpbmVzIHsKPiArCQlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIGxp
c3QsIHRhaW50ZWQgYnkgR1BVICovCj4gKwkJc3RydWN0IGxpc3RfaGVhZCBhY3RpdmVfbGlzdDsK
PiArCj4gKwkJLyogUGFjayBtdWx0aXBsZSB0aW1lbGluZXMnIHNlcW5vcyBpbnRvIHRoZSBzYW1l
IHBhZ2UgKi8KPiArCQlzcGlubG9ja190IGh3c3BfbG9jazsKPiArCQlzdHJ1Y3QgbGlzdF9oZWFk
IGh3c3BfZnJlZV9saXN0Owo+ICsJfSB0aW1lbGluZXM7Cj4gKwo+ICsJc3RydWN0IGxpc3RfaGVh
ZCBhY3RpdmVfcmluZ3M7Cj4gKwo+ICsJc3RydWN0IGludGVsX3dha2VyZWYgd2FrZXJlZjsKPiAr
Cj4gKwlzdHJ1Y3QgbGlzdF9oZWFkIGNsb3NlZF92bWE7Cj4gKwlzcGlubG9ja190IGNsb3NlZF9s
b2NrOyAvKiBndWFyZHMgdGhlIGxpc3Qgb2YgY2xvc2VkX3ZtYSAqLwo+ICsKPiArCS8qKgo+ICsJ
ICogSXMgdGhlIEdQVSBjdXJyZW50bHkgY29uc2lkZXJlZCBpZGxlLCBvciBidXN5IGV4ZWN1dGlu
Zwo+ICsJICogdXNlcnNwYWNlIHJlcXVlc3RzPyBXaGlsc3QgaWRsZSwgd2UgYWxsb3cgcnVudGlt
ZSBwb3dlcgo+ICsJICogbWFuYWdlbWVudCB0byBwb3dlciBkb3duIHRoZSBoYXJkd2FyZSBhbmQg
ZGlzcGxheSBjbG9ja3MuCj4gKwkgKiBJbiBvcmRlciB0byByZWR1Y2UgdGhlIGVmZmVjdCBvbiBw
ZXJmb3JtYW5jZSwgdGhlcmUKPiArCSAqIGlzIGEgc2xpZ2h0IGRlbGF5IGJlZm9yZSB3ZSBkbyBz
by4KPiArCSAqLwo+ICsJaW50ZWxfd2FrZXJlZl90IGF3YWtlOwo+ICsKPiArCXN0cnVjdCBibG9j
a2luZ19ub3RpZmllcl9oZWFkIHBtX25vdGlmaWNhdGlvbnM7Cj4gKwo+ICsJa3RpbWVfdCBsYXN0
X2luaXRfdGltZTsKPiArCj4gKwlzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2g7Cj4gK307Cj4gKwo+
ICsjZW5kaWYgLyogX19JTlRFTF9HVF9UWVBFU19IX18gKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKPiBpbmRleCBiYzkwOWVjNWQ5YzMuLmJlNDMzODk0ZWEyOCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAo+IEBAIC03Miw2ICs3Miw3IEBACj4gIAo+ICAjaW5jbHVkZSAiZ3QvaW50ZWxf
bHJjLmgiCj4gICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmUuaCIKPiArI2luY2x1ZGUgImd0L2lu
dGVsX2d0X3R5cGVzLmgiCj4gICNpbmNsdWRlICJndC9pbnRlbF93b3JrYXJvdW5kcy5oIgo+ICAK
PiAgI2luY2x1ZGUgImludGVsX2RldmljZV9pbmZvLmgiCj4gQEAgLTE4MjQsMzggKzE4MjUsNyBA
QCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4gIAl9IHBlcmY7Cj4gIAo+ICAJLyogQWJzdHJh
Y3QgdGhlIHN1Ym1pc3Npb24gbWVjaGFuaXNtIChsZWdhY3kgcmluZ2J1ZmZlciBvciBleGVjbGlz
dHMpIGF3YXkgKi8KPiAtCXN0cnVjdCB7Cj4gLQkJc3RydWN0IGk5MTVfZ3RfdGltZWxpbmVzIHsK
PiAtCQkJc3RydWN0IG11dGV4IG11dGV4OyAvKiBwcm90ZWN0cyBsaXN0LCB0YWludGVkIGJ5IEdQ
VSAqLwo+IC0JCQlzdHJ1Y3QgbGlzdF9oZWFkIGFjdGl2ZV9saXN0Owo+IC0KPiAtCQkJLyogUGFj
ayBtdWx0aXBsZSB0aW1lbGluZXMnIHNlcW5vcyBpbnRvIHRoZSBzYW1lIHBhZ2UgKi8KPiAtCQkJ
c3BpbmxvY2tfdCBod3NwX2xvY2s7Cj4gLQkJCXN0cnVjdCBsaXN0X2hlYWQgaHdzcF9mcmVlX2xp
c3Q7Cj4gLQkJfSB0aW1lbGluZXM7Cj4gLQo+IC0JCXN0cnVjdCBsaXN0X2hlYWQgYWN0aXZlX3Jp
bmdzOwo+IC0KPiAtCQlzdHJ1Y3QgaW50ZWxfd2FrZXJlZiB3YWtlcmVmOwo+IC0KPiAtCQlzdHJ1
Y3QgbGlzdF9oZWFkIGNsb3NlZF92bWE7Cj4gLQkJc3BpbmxvY2tfdCBjbG9zZWRfbG9jazsgLyog
Z3VhcmRzIHRoZSBsaXN0IG9mIGNsb3NlZF92bWEgKi8KPiAtCj4gLQkJLyoqCj4gLQkJICogSXMg
dGhlIEdQVSBjdXJyZW50bHkgY29uc2lkZXJlZCBpZGxlLCBvciBidXN5IGV4ZWN1dGluZwo+IC0J
CSAqIHVzZXJzcGFjZSByZXF1ZXN0cz8gV2hpbHN0IGlkbGUsIHdlIGFsbG93IHJ1bnRpbWUgcG93
ZXIKPiAtCQkgKiBtYW5hZ2VtZW50IHRvIHBvd2VyIGRvd24gdGhlIGhhcmR3YXJlIGFuZCBkaXNw
bGF5IGNsb2Nrcy4KPiAtCQkgKiBJbiBvcmRlciB0byByZWR1Y2UgdGhlIGVmZmVjdCBvbiBwZXJm
b3JtYW5jZSwgdGhlcmUKPiAtCQkgKiBpcyBhIHNsaWdodCBkZWxheSBiZWZvcmUgd2UgZG8gc28u
Cj4gLQkJICovCj4gLQkJaW50ZWxfd2FrZXJlZl90IGF3YWtlOwo+IC0KPiAtCQlzdHJ1Y3QgYmxv
Y2tpbmdfbm90aWZpZXJfaGVhZCBwbV9ub3RpZmljYXRpb25zOwo+IC0KPiAtCQlrdGltZV90IGxh
c3RfaW5pdF90aW1lOwo+IC0KPiAtCQlzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2g7Cj4gLQl9IGd0
Owo+ICsJc3RydWN0IGludGVsX2d0IGd0Owo+ICAKPiAgCXN0cnVjdCB7Cj4gIAkJc3RydWN0IG5v
dGlmaWVyX2Jsb2NrIHBtX25vdGlmaWVyOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
