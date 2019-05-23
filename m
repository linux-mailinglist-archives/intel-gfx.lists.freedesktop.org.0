Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E82C27959
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92C689D5B;
	Thu, 23 May 2019 09:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C1D789D5B;
 Thu, 23 May 2019 09:35:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 02:35:03 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 02:35:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190523080649.29466-1-chris@chris-wilson.co.uk>
 <f386b249-b3a3-11b4-915d-d99c0d8a649d@linux.intel.com>
 <155860258858.28319.3356284881218976685@skylake-alporthouse-com>
 <155860288158.28319.1379621732185163417@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <52f533b4-ad1a-23ac-d247-4d266180326f@linux.intel.com>
Date: Thu, 23 May 2019 10:35:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155860288158.28319.1379621732185163417@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Improve static engine map for
 legacy
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIzLzA1LzIwMTkgMTA6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wNS0yMyAxMDowOTo0OCkKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0wNS0yMyAwOTo0NjowOCkKPj4+Cj4+PiBPbiAyMy8wNS8yMDE5IDA5OjA2LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4gICAgY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUy
IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzMltdID0gewo+Pj4+IC0gICAgIHsgInJjczAiLCBJOTE1
X0VOR0lORV9DTEFTU19SRU5ERVIsIDAgfSwKPj4+PiAtICAgICB7ICJiY3MwIiwgSTkxNV9FTkdJ
TkVfQ0xBU1NfQ09QWSwgMCB9LAo+Pj4+IC0gICAgIHsgInZjczAiLCBJOTE1X0VOR0lORV9DTEFT
U19WSURFTywgMCB9LAo+Pj4+IC0gICAgIHsgInZjczEiLCBJOTE1X0VOR0lORV9DTEFTU19WSURF
TywgMSB9LAo+Pj4+IC0gICAgIHsgInZjczIiLCBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMiB9
LAo+Pj4+IC0gICAgIHsgInZlY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU9fRU5IQU5DRSwg
MCB9LAo+Pj4+ICsgICAgIHsgInJjczAiLCBJOTE1X0VOR0lORV9DTEFTU19SRU5ERVIsIDAsIEk5
MTVfRVhFQ19SRU5ERVIgfSwKPj4+PiArICAgICB7ICJiY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1Nf
Q09QWSwgMCwgSTkxNV9FWEVDX0JMVCB9LAo+Pj4+ICsgICAgIHsgInZjczAiLCBJOTE1X0VOR0lO
RV9DTEFTU19WSURFTywgMCwgSTkxNV9FWEVDX0JTRCB8IEk5MTVfRVhFQ19CU0RfUklORzEgfSwK
Pj4+Cj4+PiBleGVjYnVmIHdpbGwgcmVqZWN0IHRoaXMgb24gc2luZ2xlIHZjcyBwYXJ0cy4gOigg
QW0gSSBub3Qgc2VlaW5nIHNvbWUKPj4+IHBsYWNlIHdoZXJlIHlvdSBmdWRnZSBpdCBpbnRvIGNv
bXBsaWFuY2U/Cj4+Cj4+Cj4+ICAgICAgICAgIGlmICh1c2VyX3JpbmdfaWQgPT0gSTkxNV9FWEVD
X0JTRCAmJiBIQVNfRU5HSU5FKGRldl9wcml2LCBWQ1MxKSkgewo+PiAgICAgICAgICAgICAgICAg
IHVuc2lnbmVkIGludCBic2RfaWR4ID0gYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfQlNEX01BU0s7
Cj4+Cj4+ICAgICAgICAgICAgICAgICAgaWYgKGJzZF9pZHggPT0gSTkxNV9FWEVDX0JTRF9ERUZB
VUxUKSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBic2RfaWR4ID0gZ2VuOF9kaXNwYXRj
aF9ic2RfZW5naW5lKGRldl9wcml2LCBmaWxlKTsKPj4gICAgICAgICAgICAgICAgICB9IGVsc2Ug
aWYgKGJzZF9pZHggPj0gSTkxNV9FWEVDX0JTRF9SSU5HMSAmJgo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYnNkX2lkeCA8PSBJOTE1X0VYRUNfQlNEX1JJTkcyKSB7Cj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICBic2RfaWR4ID4+PSBJOTE1X0VYRUNfQlNEX1NISUZUOwo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgYnNkX2lkeC0tOwo+PiAgICAgICAgICAgICAgICAgIH0gZWxz
ZSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoImV4ZWNidWYgd2l0aCB1
bmtub3duIGJzZCByaW5nOiAldVxuIiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBic2RfaWR4KTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
PiAgICAgICAgICAgICAgICAgIH0KPj4KPj4gICAgICAgICAgICAgICAgICBlbmdpbmUgPSBkZXZf
cHJpdi0+ZW5naW5lW19WQ1MoYnNkX2lkeCldOwo+PiAgICAgICAgICB9IGVsc2Ugewo+PiAgICAg
ICAgICAgICAgICAgIGVuZ2luZSA9IGRldl9wcml2LT5lbmdpbmVbdXNlcl9yaW5nX21hcFt1c2Vy
X3JpbmdfaWRdXTsKPj4gICAgICAgICAgfQo+Pgo+PiBMb29rcyBvayB0byBtZS4uLiBJIHdhcyB0
cnlpbmcgdG8gZG91YmxlIGNoZWNrIGJ1dCBkaWYgZGlkbid0IGJvb3Qgb24KPj4gYnN3LiBTaWdo
Lgo+IAo+IFNvIGluc3RlYWQgSSByZW1vdmVkIHZjczEgZnJvbSBiZHcsIGFuZCB2Y3MwIGNvbnRp
bnVlcyB0byB3b3JrLgo+IAo+IFdoYXQgaXMgc3RpbGwgaW5jb3JyZWN0IHRob3VnaDoKPiAkIC4v
YnVpbGQvdGVzdHMvZ2VtX2V4ZWNfcGFyYWxsZWwgLS1saXN0LXN1YnRlc3RzCj4gLi4uCj4gdmNz
MAo+IHZjczAtY29udGV4dHMKPiB2Y3MwLWZkcwo+IHZjczEKPiB2Y3MxLWNvbnRleHRzCj4gdmNz
MS1mZHMKPiB2Y3MyCj4gdmNzMi1jb250ZXh0cwo+IHZjczItZmRzCj4gLi4uCgpBcyB5b3Uga25v
dyB0aGlzIHBhcnQgaXMgY29ycmVjdCBzaW5jZSBDSSBtYW5kYXRlcyB3ZSBsaXN0IHN1YnRlc3Rz
IG5vdCAKYXBwbGljYWJsZSB0byBydW5uaW5nIHBsYXRmb3JtLgoKPiAkIHN1ZG8gLi9idWlsZC90
ZXN0cy9nZW1fZXhlY19wYXJhbGxlbCAtLXJ1biB2Y3MxCj4gSUdULVZlcnNpb246IDEuMjMtZzgy
MTM3YmE0ICh4ODZfNjQpIChMaW51eDogNS4yLjAtcmMxKyB4ODZfNjQpCj4gKGdlbV9leGVjX3Bh
cmFsbGVsOjE2MjE5KSBpZ3RfY29yZS1XQVJOSU5HOiBVbmtub3duIHN1YnRlc3Q6IHZjczEKCkkg
Z3Vlc3Mgd2UgbmVlZCB0byBtYWtlIHRoZSBsaWJyYXJ5IGZ1bmN0aW9uIGlndF9za2lwIGluc3Rl
YWQgb2Ygbm90IAplbnVtZXJhdGluZyB0aGUgaW1wb3NzaWJsZSBhbmQgbWlzc2luZyBlbmdpbmVz
LgoKQnV0IGl0IGRvZXNuJ3Qgd29yay4uIHNraXBzIG5lZWQgdG8gYmUgaW4gZWl0aGVyIHN1YnRl
c3RzIG9yIGZpeHR1cmVzLgoKUGVyaGFwcyB0aGUgaWRlYSBvZiB1c2luZyBhIHNpbmdsZSBjb250
ZXh0IGF3YXJlIGl0ZXJhdG9yIGhhcyB0aGVyZWZvcmUgCmZhaWwgYW5kIHdlIGRvIG5lZWQgdHdv
IHNlcGFyYXRlIG9uZXMuIDooIE9uZSBqdXN0IGZvciBzdWJ0ZXN0IAplbnVtZXJhdGlvbiB3aGlj
aCAqb25seSogdXNlcyB0aGUgc3RhdGljIGxpc3QsIGFuZCBhbm90aGVyIGZvciB1c2UgaW4gCnRl
c3RzLCB3aGljaCBza2lwcyBtaXNzaW5nL2ltcG9zc2libGUgZW5naW5lcyBkZXBlbmRpbmcgb24g
Y29udGV4dC4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
