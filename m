Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 525201B620
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 14:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 165A789292;
	Mon, 13 May 2019 12:38:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E139589292;
 Mon, 13 May 2019 12:38:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 05:38:52 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 05:38:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-5-tvrtko.ursulin@linux.intel.com>
 <155749295460.28545.15011576295551611615@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <01347d44-f940-79b2-f224-96c9bd64c6b3@linux.intel.com>
Date: Mon, 13 May 2019 13:38:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749295460.28545.15011576295551611615@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 04/21] trace.pl: Virtual engine
 preemption support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA1LzIwMTkgMTM6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjQxKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBVc2UgdGhlICdjb21wbGV0ZWQ/JyB0cmFj
ZXBvaW50IGZpZWxkIHRvIGRldGVjdCBtb3JlIHJvYnVzdGx5IHdoZW4gYQo+PiByZXF1ZXN0IGhh
cyBiZWVuIHByZWVtcHRlZCBhbmQgcmVtb3ZlIGl0IGZyb20gdGhlIGVuZ2luZSBkYXRhYmFzZSBp
ZiBzby4KPj4KPj4gT3RoZXJ3aXNlIHRoZSBzY3JpcHQgY2FuIGhpdCBhIHNjZW5hcmlvIHdoZXJl
IHRoZSBzYW1lIGdsb2JhbCBzZXFubyB3aWxsCj4+IGJlIG1lbnRpb25lZCBtdWx0aXBsZSB0aW1l
cyAob24gYW4gZW5naW5lIHNlcW5vKSB3aGljaCBhYm9ydHMgcHJvY2Vzc2luZy4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4g
LS0tCj4+ICAgc2NyaXB0cy90cmFjZS5wbCB8IDggKysrKy0tLS0KPj4gICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc2Ny
aXB0cy90cmFjZS5wbCBiL3NjcmlwdHMvdHJhY2UucGwKPj4gaW5kZXggNmNjMzMyYmI2ZTJhLi5j
YjdjYzQ2ZGYyMmUgMTAwNzU1Cj4+IC0tLSBhL3NjcmlwdHMvdHJhY2UucGwKPj4gKysrIGIvc2Ny
aXB0cy90cmFjZS5wbAo+PiBAQCAtNDgzLDE3ICs0ODMsMTcgQEAgd2hpbGUgKDw+KSB7Cj4+ICAg
ICAgICAgICAgICAgICAgJHJpbmdtYXB7JHJpbmdzeyRyaW5nfX0gPSAkcmluZzsKPj4gICAgICAg
ICAgICAgICAgICAkZGJ7JGtleX0gPSBcJXJlcTsKPj4gICAgICAgICAgfSBlbHNpZiAoJHRwX25h
bWUgZXEgJ2k5MTU6aTkxNV9yZXF1ZXN0X291dDonKSB7Cj4+IC0gICAgICAgICAgICAgICBteSAk
Z2tleTsKPj4gLQo+PiAgICAgICAgICAgICAgICAgIGRpZSB1bmxlc3MgZXhpc3RzICRjdHhlbmdp
bmVzeyRjdHh9Owo+PiAgIAo+PiAtICAgICAgICAgICAgICAgJGdrZXkgPSBkYl9rZXkoJGN0eGVu
Z2luZXN7JGN0eH0sICRjdHgsICRzZXFubyk7Cj4+IC0KPj4gICAgICAgICAgICAgICAgICBpZiAo
JHRweydjb21wbGV0ZWQ/J30pIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgbXkgJGdrZXk7
Cj4+ICsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGRpZSB1bmxlc3MgZXhpc3RzICRkYnsk
a2V5fTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGRpZSB1bmxlc3MgZXhpc3RzICRkYnsk
a2V5fS0+eydzdGFydCd9Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgZGllIGlmIGV4aXN0
cyAkZGJ7JGtleX0tPnsnZW5kJ307Cj4+ICAgCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICRn
a2V5ID0gZGJfa2V5KCRjdHhlbmdpbmVzeyRjdHh9LCAkY3R4LCAkc2Vxbm8pOwo+IAo+IEknbSBs
b3N0LCBob3cgZG9lcyBkbyB0aGUgY29tbWl0IG1lc3NhZ2U/IEkgdGhvdWdodCBkYl9rZXkoKSBq
dXN0IGdhdmUKPiB0aGUgaGFzaCB2YWx1ZSBhbmQgbm90IGFsdGVyIHRoZSBkYj8KClRoaXMgc2Vl
bXMgdG8gYmUgYSByZWJhc2luZyBmYWlsLiBJIG5lZWQgdG8gc3F1YXNoIHRoaXMgd2l0aCAKInNj
cmlwdHMvdHJhY2UucGw6IEZpeCBhZnRlciBpbnRlbF9lbmdpbmVfbm90aWZ5IHJlbW92YWwiLiBP
ciBtYXliZSAKYmV0dGVyIG1vdmUgdGhpcyBodW5rIGJhY2sgZnJvbSB0aGF0IHBhdGNoIHRvIHRo
aXMgb25lLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
