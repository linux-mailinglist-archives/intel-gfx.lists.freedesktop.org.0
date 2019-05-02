Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F6C11A6B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C206894DD;
	Thu,  2 May 2019 13:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673DC894DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:43:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140674297"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 06:43:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <94ecc950-3675-2770-d75d-a5e661332b34@linux.intel.com>
Date: Thu, 2 May 2019 14:43:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501114541.10077-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915: Include fence signaled bit
 in print_request()
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

Ck9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaG93IHRoZSBmZW5j
ZSBmbGFncyB2aWV3IG9mIHJlcXVlc3QgY29tcGxldGlvbiBpbiBhZGRpdGlvbiB0byB0aGUKPiBu
b3JtYWwgaHdzcCBjaGVjayBhbmQgd2hldGhlciBzaWduYWxpbmcgaXMgZW5hYmxlZC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgNSArKysr
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gaW5kZXggNmU0MGY4
ZWE5YTZhLi5mMTc4ZjEyNjhmNGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYwo+IEBAIC0xMjI5LDggKzEyMjksMTEgQEAgc3RhdGljIHZvaWQgcHJpbnRf
cmVxdWVzdChzdHJ1Y3QgZHJtX3ByaW50ZXIgKm0sCj4gICAJCSAgIGk5MTVfcmVxdWVzdF9jb21w
bGV0ZWQocnEpID8gIiEiIDoKPiAgIAkJICAgaTkxNV9yZXF1ZXN0X3N0YXJ0ZWQocnEpID8gIioi
IDoKPiAgIAkJICAgIiIsCj4gKwkJICAgdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURf
QklULAo+ICsJCQkgICAgJnJxLT5mZW5jZS5mbGFncykgPyAgIisiIDoKPiAgIAkJICAgdGVzdF9i
aXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsCj4gLQkJCSAgICAmcnEtPmZlbmNl
LmZsYWdzKSA/ICAiKyIgOiAiIiwKPiArCQkJICAgICZycS0+ZmVuY2UuZmxhZ3MpID8gICItIiA6
Cj4gKwkJICAgIiIsCj4gICAJCSAgIGJ1ZiwKPiAgIAkJICAgamlmZmllc190b19tc2VjcyhqaWZm
aWVzIC0gcnEtPmVtaXR0ZWRfamlmZmllcyksCj4gICAJCSAgIG5hbWUpOwo+IAoKV2UgbmVlZCBh
IGRlY29kaW5nIGNoZWF0IHNoZWV0IG5vdy4uCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNhbiB3ZSBtYWtlIGl0IHNvbWV3aGF0IHNlbGYt
ZXhwbGFuYXRvcnk/IE1heWJlIG9ubHkgaW4gbXkgaGVhZC4uCgoiPi18IiAoc3RhcnRlZC9zaWdu
YWxpbmcgZW5hYmxlZC9jb21wbGV0ZWQpCgoiPisiIChzdGFydGVkL3NpZ25hbGVkKQoKSW1hZ2lu
ZSBtb3JlIGZ1biBpZiBjb21wbGV0ZWQgd291bGQgYmUgJzwnLiA6KQoKUmVnYXJkcywKClR2cnRr
bwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
