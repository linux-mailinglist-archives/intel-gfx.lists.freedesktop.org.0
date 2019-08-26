Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096259D50B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 19:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5036E27A;
	Mon, 26 Aug 2019 17:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2D96E27A
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 17:33:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 10:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="182512429"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.252.75.242])
 ([10.252.75.242])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2019 10:33:52 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-10-lucas.demarchi@intel.com>
 <20190824110652.GC30506@intel.com>
 <20190826171050.ay7sa3yvc5cdgznb@ldmartin-desk1>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <6bfd609d-cbfa-48c1-adc0-49f3b97d0c02@intel.com>
Date: Mon, 26 Aug 2019 23:03:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826171050.ay7sa3yvc5cdgznb@ldmartin-desk1>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 09/23] drm/i915/tgl: Add maximum
 resolution supported by PSR2 HW
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VmFsaWRhdGVkIHdpdGggcmVzcGVjdCB0byBCLlNwZWNzOjQ5MTk5IGFuZCA1MDQyMi4KCk9uIDgv
MjYvMjAxOSAxMDo0MCBQTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IE9uIFNhdCwgQXVnIDI0
LCAyMDE5IGF0IDA0OjM2OjUyUE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRhIHdyb3RlOgo+PiBPbiAy
MDE5LTA4LTIzIGF0IDAxOjIwOjQxIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4+PiBG
cm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4+Cj4+
PiBUR0wgUFNSMiBIVyBzdXBwb3J0cyBhIGJpZ2dlciByZXNvbHV0aW9uLCBzbyBsZXRzIGFkZCBp
dAo+Pj4KPj4+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGlu
dGVsLmNvbT4KPj4+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGlu
dGVsLmNvbT4KPj4+IC0tLQo+Pj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgNSArKysrLQo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMKPj4+IGluZGV4IGMzM2FhMTZlZDAzOC4uNWQyNGYxYzQ3YTJiIDEwMDY0NAo+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+Pj4gQEAgLTU3MCw3ICs1
NzAsMTAgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IAo+Pj4g
aW50ZWxfZHAgKmludGVsX2RwLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4+
PiDCoMKgwqDCoCB9Cj4+Pgo+Pj4gLcKgwqDCoCBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgewo+Pj4gK8KgwqDCoCBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMikgewo+PiBBcyBwZXIgQi5TcGVjczoyODY5MiBvbiBmZXcgR2VuMTEg
cGxhdGZvcm0sIFBTUjIgc3VwcG9ydHMgbWF4IAo+PiByZXNvbHV0aW9uIG9mIDUxMjBYMzIwMC4K
Pj4gRG8gd2UgbmVlZCB0byBoYW5kbGUgdGhvc2UgR2VuMTEgcGxhdGZvcm0gaGVyZT8KPiAKPiB0
aGUgb25seSB0aGluZyBJIHNlZSB0aGVyZSBmb3IgZ2VuMTEgaXM6Cj4gCj4gIMKgwqDCoMKgIlBT
UjIgbWF4aW11bSBwaXBlIGhvcml6b250YWwgYWN0aXZlIHNpemUgNDA5NiBwaXhlbHMuIgo+IAo+
IEx1Y2FzIERlIE1hcmNoaQo+IAo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBzcl9tYXhfaCA9IDUxMjA7
Cj4+PiArwqDCoMKgwqDCoMKgwqAgcHNyX21heF92ID0gMzIwMDsKPj4+ICvCoMKgwqAgfSBlbHNl
IGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
KSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHBzcl9tYXhfaCA9IDQwOTY7Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgIHBzcl9tYXhfdiA9IDIzMDQ7Cj4+PiDCoMKgwqDCoCB9IGVsc2UgaWYgKElTX0dFTihk
ZXZfcHJpdiwgOSkpIHsKPj4+IC0tIAo+Pj4gMi4yMy4wCj4+Pgo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
