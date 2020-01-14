Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEDF13A89D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 12:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9568932D;
	Tue, 14 Jan 2020 11:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9BC8932D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 11:45:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 03:45:33 -0800
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="213307767"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Jan 2020 03:45:32 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
 <157899996519.27314.1692935781998209144@skylake-alporthouse-com>
 <ffaddcf2-0c6a-398a-2b1b-2f67b4094ade@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <93c812a6-ddc8-8710-f97e-d54a8e163bc7@linux.intel.com>
Date: Tue, 14 Jan 2020 11:45:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ffaddcf2-0c6a-398a-2b1b-2f67b4094ade@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Correct the rc6 offset
 upon enabling
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzAxLzIwMjAgMTE6MzcsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDE0LzAx
LzIwMjAgMTE6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBDaHJpcyBXaWxzb24g
KDIwMjAtMDEtMTQgMTA6NTY6NDcpCj4+PiBUaGUgcmM2IHJlc2lkZW5jeSBzdGFydHMgdGlja2lu
ZyBmcm9tIDAgZnJvbSBCSU9TIFBPU1QsIGJ1dCB0aGUga2VybmVsCj4+PiBzdGFydHMgbWVhc3Vy
aW5nIHRoZSB0aW1lIGZyb20gaXRzIGJvb3QuIElmIHdlIHN0YXJ0IG1lYXN1cnVpbmcKPj4+IEk5
MTVfUE1VX1JDNl9SRVNJREVOQ1kgd2hpbGUgdGhlIEdUIGlzIGlkbGUsIHdlIHN0YXJ0IG91ciBz
YW1wbGluZyBmcm9tCj4+PiAwIGFuZCB0aGVuIHVwb24gZmlyc3QgYWN0aXZpdHkgKHBhcmsvdW5w
YXJrKSBhZGQgaW4gYWxsIHRoZSByYzYKPj4+IHJlc2lkZW5jeSBzaW5jZSBib290LiBBZnRlciB0
aGUgZmlyc3QgcGFyayB3aXRoIHRoZSBzYW1wbGVyIGVuZ2FnZWQsIHRoZQo+Pj4gc2xlZXAvYWN0
aXZlIGNvdW50ZXJzIGFyZSBhbGlnbmVkLgo+Pj4KPj4+IHYyOiBXaXRoIGEgd2FrZXJlZiB0byBi
ZSBzdXJlCj4+Pgo+Pj4gRml4ZXM6IGRmNmE0MjA1MzUxMyAoImRybS9pOTE1L3BtdTogRW5zdXJl
IG1vbm90b25pYyByYzYiKQo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUu
YyB8IDEyICsrKysrKysrKysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyAK
Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+Pj4gaW5kZXggMjhhODJjODQ5
YmFjLi5lYzAyOTk0OTBkZDQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BtdS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4+PiBA
QCAtNjM3LDggKzYzNywxMCBAQCBzdGF0aWMgdm9pZCBpOTE1X3BtdV9lbmFibGUoc3RydWN0IHBl
cmZfZXZlbnQgCj4+PiAqZXZlbnQpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb250YWluZXJfb2YoZXZlbnQtPnBtdSwgdHlwZW9mKCppOTE1KSwgcG11LmJhc2UpOwo+Pj4g
wqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgYml0ID0gZXZlbnRfZW5hYmxlZF9iaXQoZXZl
bnQpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaTkxNV9wbXUgKnBtdSA9ICZpOTE1LT5w
bXU7Cj4+PiArwqDCoMKgwqDCoMKgIGludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+Pj4gwqDCoMKg
wqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4gK8KgwqDCoMKgwqDCoCB3YWtlcmVm
ID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwo+IAo+IEkgdGhpbmsg
aXQgd291bGQgYmUgbmljZXIgdG8gdXNlIHdpdGhfaW50ZWxfcnVudGltZV9wbSBkaXJlY3RseSBh
dCB0aGUgCj4gX19nZXRfcmM2IGNhbGwgc2l0ZS4gVGhhdCB3b3VsZCBzaG93L2xvY2FsaXNlIHdo
ZXJlIGl0IGlzIGFjdHVhbGx5IG5lZWRlZC4KClNwaW5sb2NrIHRob3VnaCwgbXkgYmFkLgoKUmVn
YXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
