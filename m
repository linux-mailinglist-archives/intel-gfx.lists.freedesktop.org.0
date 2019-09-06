Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A394AC288
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 00:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18076E151;
	Fri,  6 Sep 2019 22:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4104C6E151
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 22:28:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 15:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="183271240"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2019 15:28:20 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b9c6a7df-9137-6be0-bc40-209f5c2cb17e@intel.com>
Date: Fri, 6 Sep 2019 15:28:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzUvMTkgMjowOSBBTSwgSmFudXN6IEtyenlzenRvZmlrIHdyb3RlOgo+IFdoZW4gdHJ5
aW5nIHRvIHJlc2V0IGEgZGV2aWNlIHdpdGggcmVzZXQgY2FwYWJpbGl0eSBkaXNhYmxlZCBvciBu
b3QKPiBzdXBwb3J0ZWQgd2hpbGUgcmluZ3MgYXJlIGZ1bGwgb2YgcmVxdWVzdHMsIGl0IGhhcyBi
ZWVuIG9ic2VydmVkIHdoZW4KPiBydW5uaW5nIGluIGV4ZWNsaXN0cyBzdWJtaXNzaW9uIG1vZGUg
dGhhdCBjb21tYW5kIHN0cmVhbSBidWZmZXIgdGFpbAo+IHRlbmRzIHRvIGJlIGluY3JlbWVudGVk
IGJ5IGFwcGFyZW50bHkgc3RpbGwgcnVubmluZyBHUFUgcmVnYXJkbGVzcyBvZgo+IGFsbCByZXF1
ZXN0cyBiZWluZyBhbHJlYWR5IGNhbmNlbGxlZCBhbmQgY29tbWFuZCBzdHJlYW0gYnVmZmVyIHBv
aW50ZXJzCj4gcmVzZXQuICBBcyBhIHJlc3VsdCwga2VybmVsIHBhbmljIG9uIE5VTEwgcG9pbnRl
ciBkZXJlZmVyZW5jZSBvY2N1cnMKPiB3aGVuIGEgdHJhY2VfcG9ydHMoKSBoZWxwZXIgaXMgY2Fs
bGVkIHdpdGggY29tbWFuZCBzdHJlYW0gYnVmZmVyIHRhaWwKPiBpbmNyZW1lbnRlZCBidXQgcmVx
dWVzdCBwb2ludGVycyBiZWluZyBOVUxMIGR1cmluZyBmaW5hbAo+IF9faW50ZWxfZ3Rfc2V0X3dl
ZGdlZCgpIG9wZXJhdGlvbiBjYWxsZWQgZnJvbSBpbnRlbF9ndF9yZXNldCgpLgo+IAo+IFNraXAg
YWN0dWFsIHJlc2V0IHByb2NlZHVyZSBpZiByZXNldCBpcyBkaXNhYmxlZCBvciBub3Qgc3VwcG9y
dGVkLgoKVGhpcyBsYXN0IHNlbnRlbmNlIGlzIGEgYml0IGNvbmZ1c2luZy4gWW91J3JlIG5vdCBz
a2lwcGluZyB0aGUgcmVzZXQgCnByb2NlZHVyZSwgeW91J3JlIHNraXBwaW5nIHRoZSBhdHRlbXB0
IG9mIHVud2VkZ2luZyBhbmQgcmVzZXR0aW5nIGFnYWluIAphZnRlciBhIHJlc2V0ICYgd2VkZ2Ug
YWxyZWFkeSBoYXBwZW5lZC4KCj4gCj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEph
bnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgfCAyNiArKysrKysr
KysrKysrKysrKystLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyks
IDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4g
aW5kZXggYjlkODRkNTJlOTg2Li5kNzVkYTEyNGUyODAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAtOTMyLDI1ICs5MzIsMzUgQEAgdm9pZCBpbnRlbF9ndF9y
ZXNldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAo+ICAgCUdFTV9CVUdfT04oIXRlc3RfYml0KEk5MTVf
UkVTRVRfQkFDS09GRiwgJmd0LT5yZXNldC5mbGFncykpOwo+ICAgCW11dGV4X2xvY2soJmd0LT5y
ZXNldC5tdXRleCk7Cj4gICAKPiAtCS8qIENsZWFyIGFueSBwcmV2aW91cyBmYWlsZWQgYXR0ZW1w
dHMgYXQgcmVjb3ZlcnkuIFRpbWUgdG8gdHJ5IGFnYWluLiAqLwo+IC0JaWYgKCFfX2ludGVsX2d0
X3Vuc2V0X3dlZGdlZChndCkpCj4gLQkJZ290byB1bmxvY2s7Cj4gLQoKU2luY2UgeW91J3JlIGFu
eXdheSBjaGVja2luZyB0aGUgd2VkZ2VkIHN0YXR1cyBhbmQgcmVzZXQgc3VwcG9ydCAKbXVsdGlw
bGUgdGltZXMsIHdvdWxkbid0IGl0IGhhdmUgYmVlbiBiZXR0ZXIgdG8ganVzdCBhZGQgYSBzaW5n
bGUgY2hlY2sgCmF0IHRoZSBiZWdpbm5pbmc/IGUuZy4KCgkvKiB3ZSBjYW4ndCByZWNvdmVyIGEg
d2VkZ2VkIEdUIHdpdGhvdXQgcmVzZXQgKi8KCWlmICghaW50ZWxfaGFzX2dwdV9yZXNldChndC0+
aTkxNSkgJiYgaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KSkKCQlnb3RvIHVubG9jazsKCkRhbmllbGUK
Cj4gICAJaWYgKHJlYXNvbikKPiAgIAkJZGV2X25vdGljZShndC0+aTkxNS0+ZHJtLmRldiwKPiAg
IAkJCSAgICJSZXNldHRpbmcgY2hpcCBmb3IgJXNcbiIsIHJlYXNvbik7Cj4gLQlhdG9taWNfaW5j
KCZndC0+aTkxNS0+Z3B1X2Vycm9yLnJlc2V0X2NvdW50KTsKPiAtCj4gLQlhd2FrZSA9IHJlc2V0
X3ByZXBhcmUoZ3QpOwo+ICAgCj4gICAJaWYgKCFpbnRlbF9oYXNfZ3B1X3Jlc2V0KGd0LT5pOTE1
KSkgewo+ICAgCQlpZiAoaTkxNV9tb2RwYXJhbXMucmVzZXQpCj4gICAJCQlkZXZfZXJyKGd0LT5p
OTE1LT5kcm0uZGV2LCAiR1BVIHJlc2V0IG5vdCBzdXBwb3J0ZWRcbiIpOwo+ICAgCQllbHNlCj4g
ICAJCQlEUk1fREVCVUdfRFJJVkVSKCJHUFUgcmVzZXQgZGlzYWJsZWRcbiIpOwo+IC0JCWdvdG8g
ZXJyb3I7Cj4gKwo+ICsJCS8qCj4gKwkJICogRG9uJ3QgdW53ZWRnZSBpZiByZXNldCBpcyBkaXNh
YmxlZCBvciBub3Qgc3VwcG9ydGVkCj4gKwkJICogYmVjYXVzZSB3ZSBjYW4ndCBndWFyYW50ZWUg
d2hhdCB0aGUgaGFyZHdhcmUgc3RhdHVzIGlzLgo+ICsJCSAqLwo+ICsJCWlmIChpbnRlbF9ndF9p
c193ZWRnZWQoZ3QpKQo+ICsJCQlnb3RvIHVubG9jazsKPiAgIAl9Cj4gICAKPiArCS8qIENsZWFy
IGFueSBwcmV2aW91cyBmYWlsZWQgYXR0ZW1wdHMgYXQgcmVjb3ZlcnkuIFRpbWUgdG8gdHJ5IGFn
YWluLiAqLwo+ICsJaWYgKCFfX2ludGVsX2d0X3Vuc2V0X3dlZGdlZChndCkpCj4gKwkJZ290byB1
bmxvY2s7Cj4gKwo+ICsJYXRvbWljX2luYygmZ3QtPmk5MTUtPmdwdV9lcnJvci5yZXNldF9jb3Vu
dCk7Cj4gKwo+ICsJYXdha2UgPSByZXNldF9wcmVwYXJlKGd0KTsKPiArCj4gKwlpZiAoIWludGVs
X2hhc19ncHVfcmVzZXQoZ3QtPmk5MTUpKQo+ICsJCWdvdG8gZXJyb3I7Cj4gKwo+ICAgCWlmIChJ
TlRFTF9JTkZPKGd0LT5pOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpCj4gICAJCWlu
dGVsX3J1bnRpbWVfcG1fZGlzYWJsZV9pbnRlcnJ1cHRzKGd0LT5pOTE1KTsKPiAgIAo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
