Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEDCC0116
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 10:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903B26EEAF;
	Fri, 27 Sep 2019 08:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6CB6EEAF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 08:27:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 01:26:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="189378544"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.81.206])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 01:26:56 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190925100137.17956-20-chris@chris-wilson.co.uk>
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-20-chris@chris-wilson.co.uk>
Message-ID: <156957281229.8291.5777712716828684584@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 27 Sep 2019 11:26:52 +0300
Subject: Re: [Intel-gfx] [PATCH 19/27] drm/i915: Replace hangcheck by
 heartbeats
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjUgMTM6MDE6MjkpCj4gUmVwbGFjZSBzYW1w
bGluZyB0aGUgZW5naW5lIHN0YXRlIGV2ZXJ5IHNvIG9mdGVuIHdpdGggYSBwZXJpb2RpYwo+IGhl
YXJ0YmVhdCByZXF1ZXN0IHRvIG1lYXN1cmUgdGhlIGhlYWx0aCBvZiBhbiBlbmdpbmUuIFRoaXMg
aXMgY291cGxlZAo+IHdpdGggdGhlIGZvcmNlZC1wcmVlbXB0aW9uIHRvIGFsbG93IGxvbmcgcnVu
bmluZyByZXF1ZXN0cyB0byBzdXJ2aXZlIHNvCj4gbG9uZyBhcyB0aGV5IGRvIG5vdCBibG9jayBv
dGhlciB1c2Vycy4KPiAKPiB2MjogQ291cGxlIGluIHN5c2ZzIGNvbnRyb2xzCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogSm9uIEJsb29tZmll
bGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogSm9uIEJsb29tZmll
bGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KCjxTTklQPgoKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKPiBAQCAtMzcsMyArMzcsMTQgQEAgY29uZmlnIERS
TV9JOTE1X1BSRUVNUFRfVElNRU9VVAo+ICAgICAgICAgICB0byBleGVjdXRlLgo+ICAKPiAgICAg
ICAgICAgTWF5IGJlIDAgdG8gZGlzYWJsZSB0aGUgdGltZW91dC4KPiArCj4gK2NvbmZpZyBEUk1f
STkxNV9IRUFSVEJFQVRfSU5URVJWQUwKPiArICAgICAgIGludCAiSW50ZXJ2YWwgYmV0d2VlbiBo
ZWFydGJlYXQgcHVsc2VzIChtcykiCj4gKyAgICAgICBkZWZhdWx0IDI1MDAgIyBtaWNyb3NlY29u
ZHMKCiJtcyIgb3IgInVzIiwgcGljayBvbmU/Cgo+ICsgICAgICAgaGVscAo+ICsgICAgICAgICBX
aGlsZSBhY3RpdmUgdGhlIGRyaXZlciB1c2VzIGEgcGVyaW9kaWMgcmVxdWVzdCwgYSBoZWFydGJl
YXQsIHRvCj4gKyAgICAgICAgIGNoZWNrIHRoZSB3ZWxsbmVzcyBvZiB0aGUgR1BVIGFuZCB0byBy
ZWd1bGFybHkgZmx1c2ggc3RhdGUgY2hhbmdlcwo+ICsgICAgICAgICAoaWRsZSBiYXJyaWVycyku
Cj4gKwo+ICsgICAgICAgICBNYXkgYmUgMCB0byBkaXNhYmxlIGhlYXJ0YmVhdHMgYW5kIHRoZXJl
Zm9yZSBkaXNhYmxlIGF1dG9tYXRpYyBHUFUKPiArICAgICAgICAgaGFuZyBkZXRlY3Rpb24uCgpX
b3J0aCB0byBtZW50aW9uIHRoaXMgY2FuIGJlIG92ZXJyaWRkZW4gZnJvbSBzeXNmcy4KCj4gK3N0
YXRpYyB2b2lkIGhlYXJ0YmVhdChzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKPiArewoKPFNOSVA+
Cgo+ICsgICAgICAgaWYgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5nY2hlY2spCj4gKyAgICAg
ICAgICAgICAgIGVuZ2luZS0+aGVhcnRiZWF0LnN5c3RvbGUgPSBpOTE1X3JlcXVlc3RfZ2V0KHJx
KTsKCkknZCBiZSBtb3JlIGluY2xpbmVkIHRvIHRoZSB1c2Vyc3BhY2Ugb3B0LWluIGZvciBydW5u
aW5nIGluZGVmaW5pdGVseSBhbmQKZ2V0dGluZyByaWQgb2YgdGhlIG1vZHBhcmFtIGNvbXBsZXRl
bHkuCgpUaGUgbG9uZyB3b3JrbG9hZHMgbWlnaHQgZXZlbiBub3QgcHJlLWVtcHQgYXQgZGVzaXJl
ZCBncmFudWxhcml0eS4KClJlZ2FyZHMsIEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
