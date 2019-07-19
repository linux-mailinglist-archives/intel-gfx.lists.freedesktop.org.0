Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 549546E845
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06006E849;
	Fri, 19 Jul 2019 15:56:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B684B6E849
 for <Intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:56:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 08:56:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="159138371"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 19 Jul 2019 08:56:31 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
 <20190719094845.6242-2-tvrtko.ursulin@linux.intel.com>
 <cf84d009-9f0f-80a1-7919-23b369f37998@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fa0568b6-ec17-e836-d731-b94d2f0a06d0@linux.intel.com>
Date: Fri, 19 Jul 2019 16:56:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <cf84d009-9f0f-80a1-7919-23b369f37998@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/guc: Turn on GuC/HuC
 auto mode"
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE5LzA3LzIwMTkgMTY6NTAsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gCj4g
Cj4gT24gNy8xOS8xOSAyOjQ4IEFNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4gRnJvbTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4KPj4gVGhpcyByZXZlcnRz
IGNvbW1pdCBmNzc0ZjA5NjQ5MTkyZjMyNmZhMDMwNTY0YWZkM2Y4ZjVkODJjMWU0Lgo+Pgo+PiBJ
ZiBHdUMgZmlybXdhcmUgaXMgbm90IHByZXNlbnQgb24gdGhlIGZpbGVzeXN0ZW0gZHJpdmVyIGNy
YXNoZXMgdGhlCj4+IG1hY2hpbmUgb24gYm9vdC4KPj4KPiAKPiBEbyB5b3UgaGF2ZSBhIGxvZz8g
SSBjYW4ndCByZXByb2R1Y2UgdGhpcyBvbiBhIFNLTCwgSSdtIGp1c3QgZ2V0dGluZzoKCkxpbmtz
IGFyZSBpbiB0aGUgY292ZXIgbGV0dGVyLiBUaGUgYm9vdCBsb2cgZG9lcyBub3Qgc2hvdyBhIGNy
YXNoIGJ1dCAKZW5kcyBzdXNwaWNpb3VzbHkgYW5kIGFsbCBJY2VsYWtlcyBpbiBCQVQgd2VyZSBy
ZXBvcnRlZCBtaXNzaW5nIGZyb20gdGhlIAp0ZXN0IHJ1bi4KClJlZ2FyZHMsCgpUdnJ0a28KCj4g
WzU1NjY3LjAyNjcwN10gaTkxNSAwMDAwOjAwOjAyLjA6IERpcmVjdCBmaXJtd2FyZSBsb2FkIGZv
ciAKPiBpOTE1L3NrbF9ndWNfMzMuMC4wLmJpbiBmYWlsZWQgd2l0aCBlcnJvciAtMgo+IFs1NTY2
Ny4wMjY3MTRdIFtkcm1dIEd1QzogRmFpbGVkIHRvIGZldGNoIGZpcm13YXJlIAo+IGk5MTUvc2ts
X2d1Y18zMy4wLjAuYmluIChlcnJvciAtMikKPiBbNTU2NjcuMDI2NzE3XSBbZHJtXSBHdUM6IEZp
cm13YXJlIGNhbiBiZSBkb3dubG9hZGVkIGZyb20gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgtZmlybXdhcmUuZ2l0L3RyZWUv
aTkxNSAKPiAKPiBbNTU2NjcuMDgxODg1XSBpOTE1IDAwMDA6MDA6MDIuMDogRGV2aWNlIGluaXRp
YWxpemF0aW9uIGZhaWxlZCAoLTgpCj4gWzU1NjY3LjA4MTk0OV0gaTkxNTogcHJvYmUgb2YgMDAw
MDowMDowMi4wIGZhaWxlZCB3aXRoIGVycm9yIC04Cj4gCj4gCj4gVGhpcyBpcyBvbiB0aGUgbGF0
ZXN0IHRpcCAoanVzdCBmZXRjaGVkKS4KPiAKPiBEYW5pZWxlCj4gCj4+IEZpeGVzOiBmNzc0ZjA5
NjQ5MTkgKCJkcm0vaTkxNS9ndWM6IFR1cm4gb24gR3VDL0h1QyBhdXRvIG1vZGUiKQo+PiBDYzog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4+IENjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBDYzogSm9vbmFzIExhaHRpbmVuIDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgo+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gLS0tCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggfCAyICstCj4+IMKgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCAKPj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4+IGluZGV4IDU3MzZjNTU2OTRmZS4uZDI5YWRlM2I3ZGU2
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPj4gQEAgLTU0LDcgKzU0LDcg
QEAgc3RydWN0IGRybV9wcmludGVyOwo+PiDCoMKgwqDCoMKgIHBhcmFtKGludCwgZGlzYWJsZV9w
b3dlcl93ZWxsLCAtMSkgXAo+PiDCoMKgwqDCoMKgIHBhcmFtKGludCwgZW5hYmxlX2lwcywgMSkg
XAo+PiDCoMKgwqDCoMKgIHBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDApIFwKPj4gLcKg
wqDCoCBwYXJhbShpbnQsIGVuYWJsZV9ndWMsIC0xKSBcCj4+ICvCoMKgwqAgcGFyYW0oaW50LCBl
bmFibGVfZ3VjLCAwKSBcCj4+IMKgwqDCoMKgwqAgcGFyYW0oaW50LCBndWNfbG9nX2xldmVsLCAt
MSkgXAo+PiDCoMKgwqDCoMKgIHBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJlX3BhdGgsIE5VTEwp
IFwKPj4gwqDCoMKgwqDCoCBwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBc
Cj4+Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
