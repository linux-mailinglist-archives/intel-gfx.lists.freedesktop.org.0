Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 667B471AFC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 17:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98ED891AA;
	Tue, 23 Jul 2019 15:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223AB891AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 15:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 08:01:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="174569191"
Received: from daakre-mobl.amr.corp.intel.com (HELO [10.252.135.83])
 ([10.252.135.83])
 by orsmga006.jf.intel.com with ESMTP; 23 Jul 2019 08:01:10 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-4-daniele.ceraolospurio@intel.com>
 <op.z5dt4dbwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1a975d26-6fc9-cd5f-cc13-f0a0ba7c7087@intel.com>
Date: Tue, 23 Jul 2019 08:01:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.z5dt4dbwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/uc: Unify uC FW selection
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzIzLzIwMTkgNjoyMiBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBPbiBUdWUs
IDIzIEp1bCAyMDE5IDAxOjIwOjQyICswMjAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIAo+IDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPgo+PiArCj4+ICsjZGVmaW5l
IEdVQ19GV19CTE9CKHByZWZpeF8sIG1ham9yXywgbWlub3JfLCBwYXRjaF8pIFwKPj4gK1VDX0ZX
X0JMT0IocHJlZml4XyMjX2d1YywgbWFqb3JfLCBtaW5vcl8sIFwKPj4gK8KgwqDCoMKgwqDCoCBf
X01BS0VfR1VDX0ZXX1BBVEgocHJlZml4XywgbWFqb3JfLCBtaW5vcl8sIHBhdGNoXykpCj4+ICsK
Pj4gK0dVQ19GV19CTE9CKHNrbCwgMzMsIDAsIDApOwo+PiArR1VDX0ZXX0JMT0IoYnh0LCAzMywg
MCwgMCk7Cj4+ICtHVUNfRldfQkxPQihrYmwsIDMzLCAwLCAwKTsKPj4gK0dVQ19GV19CTE9CKGds
aywgMzMsIDAsIDApOwo+PiArR1VDX0ZXX0JMT0IoaWNsLCAzMywgMCwgMCk7Cj4+ICsKPj4gKy8q
IG11c3QgYmUgb3JkZXJlZCBiYXNlIG9uIHBsYXRmb3JtICsgcmV2aWQsIGZyb20gbmV3ZXIgdG8g
b2xkZXIgKi8KPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfdWNfcGxhdGZvcm1fcmVxdWly
ZW1lbnQgZ3VjX2Z3X2Jsb2JzW10gPSB7Cj4+ICvCoMKgwqAgeyBJTlRFTF9JQ0VMQUtFLMKgwqDC
oCAwLMKgwqDCoCAmaWNsX2d1Y19md19ibG9iIH0sCj4+ICvCoMKgwqAgeyBJTlRFTF9DT0ZGRUVM
QUtFLMKgwqDCoCAwLMKgwqDCoCAma2JsX2d1Y19md19ibG9iIH0sCj4+ICvCoMKgwqAgeyBJTlRF
TF9HRU1JTklMQUtFLMKgwqDCoCAwLMKgwqDCoCAmZ2xrX2d1Y19md19ibG9iIH0sCj4+ICvCoMKg
wqAgeyBJTlRFTF9LQUJZTEFLRSzCoMKgwqAgMCzCoMKgwqAgJmtibF9ndWNfZndfYmxvYiB9LAo+
PiArwqDCoMKgIHsgSU5URUxfQlJPWFRPTizCoMKgwqAgMCzCoMKgwqAgJmJ4dF9ndWNfZndfYmxv
YiB9LAo+PiArwqDCoMKgIHsgSU5URUxfU0tZTEFLRSzCoMKgwqAgMCzCoMKgwqAgJnNrbF9ndWNf
ZndfYmxvYiB9LAo+PiArfTsKPgo+IENhbiB3ZSBhdm9pZCBwb2ludGVycyB0byBzZXBhcmF0ZSBi
bG9iIGRlZmluaXRpb25zID8KPiBXaGF0IGFib3V0IGRlZmluaW5nIGVhY2ggZncgaW4gc2luZ2xl
IGxpbmUgbGlrZSBiZWxvdwo+Cj4gI2RlZmluZSBJTlRFTF9HVUNfRklSTVdBUkVfREVGUyhmd19k
ZWYpIFwKPiDCoMKgwqDCoGZ3X2RlZihJQ0VMQUtFLCAwLCAzMywgMCwgMCwgaWNsLCBHVUMpIFwK
PiDCoMKgwqDCoGZ3X2RlZihDT0ZGRUVMQUtFLCAwLCAzMywgMCwgMCwga2JsLCBHVUMpIFwKPiDC
oMKgwqDCoGZ3X2RlZihHRU1JTklMQUtFLCAwLCAzMywgMCwgMCwgZ2xrLCBHVUMpIFwKPiDCoMKg
wqDCoGZ3X2RlZihLQUJZTEFLRSwgMCwgMzMsIDAsIDAsIGtibCwgR1VDKSBcCj4gwqDCoMKgwqBm
d19kZWYoQlJPWFRPTiwgMCwgMzMsIDAsIDAsIGJ4dCwgR1VDKSBcCj4gwqDCoMKgwqBmd19kZWYo
U0tZTEFLRSwgMCwgMzMsIDAsIDAsIHNrbCwgR1VDKSBcCj4gwqDCoMKgwqAvKiBlbmQgKi8KPgo+
IHdpdGggc29tZSBleHRyYSBjb21tb24gaGVscGVycwo+Cj4gI2RlZmluZSBUT19NT0RVTEVfRklS
TVdBUkUoX3BsYXRmb3JtLCBfcmV2LCBfbWFqb3IsIF9taW5vciwgX3BhdGNoLCAKPiBfcHJlZml4
LCBfYnVpbGRlcikgXAo+IMKgwqDCoMKgTU9EVUxFX0ZJUk1XQVJFKF9idWlsZGVyIyNfRldfUEFU
SF9CVUlMREVSKF9wcmVmaXgsIF9tYWpvciwgCj4gX21pbm9yLCBfcGF0Y2gpKTsKPgo+ICNkZWZp
bmUgVE9fQkxPQl9FTlRSWShfcGxhdGZvcm0sIF9yZXYsIF9tYWpvciwgX21pbm9yLCBfcGF0Y2gs
IAo+IF9wcmVmaXgsIF9idWlsZGVyKSBcCj4geyBcCj4gwqDCoMKgwqAucGxhdGZvcm0gPSBJTlRF
TF8jI19wbGF0Zm9ybSwgXAo+IMKgwqDCoMKgLnJldiA9IChfcmV2KSwgXAo+IMKgwqDCoMKgLm1h
am9yID0gKF9tYWpvciksIFwKPiDCoMKgwqDCoC5taW5vciA9IChfbWlub3IpLCBcCj4gwqDCoMKg
wqAucGF0Y2ggPSAoX3BhdGNoKSwgXAo+IMKgwqDCoMKgLmJsb2IgPSBfYnVpbGRlciMjX0ZXX1BB
VEhfQlVJTERFUihfcHJlZml4LCBfbWFqb3IsIF9taW5vciwgCj4gX3BhdGNoKSwgXAo+IH0sCj4K
PiB0aGVuIHdlIGNhbiBoYXZlIGltbXV0YWJsZQo+Cj4gc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRl
bF91Y19ibG9iIGd1Y19md19ibG9ic1tdID0gewo+IElOVEVMX0dVQ19GSVJNV0FSRV9ERUZTKFRP
X0JMT0JfRU5UUlkpCj4gfTsKPiBJTlRFTF9HVUNfRklSTVdBUkVfREVGUyhUT19NT0RVTEVfRklS
TVdBUkUpCj4KPiAodGVzdGVkIGxvY2FsbHkgZm9yIGZlYXNpYmlsaXR5KQo+Cj4gTWljaGFsCgpM
R1RNLCB3aWxsIHVwZGF0ZS4gSSB3ZW50IHdpdGggdGhlIGxpc3QgYmVjYXVzZSBJIHdhbnRlZCB0
byB1bHRpbWF0ZWx5IAp1bmlmeSB0aGUgR3VDIGFuZCBIdUMgbGlzdHMgaW50byBvbmUsIGJ1dCBJ
IHNob3VsZCBiZSBhYmxlIHRvIHNldCB0aGUgCm1hY3JvcyBhcHByb3ByaWF0ZWx5IHRvIGFsbG93
IHRoYXQgYXMgdGhlIG5leHQgc3RlcC4KCkRhbmllbGUKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
