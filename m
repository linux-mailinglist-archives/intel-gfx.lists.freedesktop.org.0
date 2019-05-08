Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F75817435
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BC389815;
	Wed,  8 May 2019 08:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F06789815
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:48:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 01:48:42 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 08 May 2019 01:48:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190425092004.9995-1-chris@chris-wilson.co.uk>
 <20190425092004.9995-20-chris@chris-wilson.co.uk>
 <c7f4a6c4-bc48-12bf-3161-d1133ef6688a@linux.intel.com>
 <155724839080.14384.3877831842632246771@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6592235d-6bcd-ce10-c9fb-5ae17ff0ff48@linux.intel.com>
Date: Wed, 8 May 2019 09:48:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155724839080.14384.3877831842632246771@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 20/45] drm/i915: Apply an execution_mask to
 the virtual_engine
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

Ck9uIDA3LzA1LzIwMTkgMTc6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA0LTI5IDE1OjEyOjIzKQo+Pgo+PiBPbiAyNS8wNC8yMDE5IDEwOjE5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiAgICBzdGF0aWMgdm9pZCB2aXJ0dWFsX3N1Ym1pc3Np
b25fdGFza2xldCh1bnNpZ25lZCBsb25nIGRhdGEpCj4+PiAgICB7Cj4+PiAgICAgICAgc3RydWN0
IHZpcnR1YWxfZW5naW5lICogY29uc3QgdmUgPSAoc3RydWN0IHZpcnR1YWxfZW5naW5lICopZGF0
YTsKPj4+ICAgICAgICBjb25zdCBpbnQgcHJpbyA9IHZlLT5iYXNlLmV4ZWNsaXN0cy5xdWV1ZV9w
cmlvcml0eV9oaW50Owo+Pj4gKyAgICAgaW50ZWxfZW5naW5lX21hc2tfdCBtYXNrOwo+Pj4gICAg
ICAgIHVuc2lnbmVkIGludCBuOwo+Pj4gICAgCj4+PiArICAgICByY3VfcmVhZF9sb2NrKCk7Cj4+
PiArICAgICBtYXNrID0gdmlydHVhbF9zdWJtaXNzaW9uX21hc2sodmUpOwo+Pj4gKyAgICAgcmN1
X3JlYWRfdW5sb2NrKCk7Cj4+PiArICAgICBpZiAodW5saWtlbHkoIW1hc2spKQo+Pgo+PiBJcyB0
aGUgcmN1X2xvY2sgdGhpbmsgc29sZWx5IGZvciB0aGUgc2FtZSBwcm90ZWN0aW9uIGFnYWluc3Qg
d2VkZ2luZyBpbgo+PiBzdWJtaXRfbm90aWZ5Pwo+IAo+IE5vLiBXZSBtYXkgc3RpbGwgYmUgaW4g
dGhlIHJidHJlZSBvZiB0aGUgcGh5c2ljYWwgZW5naW5lcyBhbmQKPiB2ZS0+cmVxdWVzdCBtYXkg
YmUgcGx1Y2tlZCBvdXQgZnJvbSB1bmRlcm5lYXRoIHVzIGFzIHdlIHJlYWQgaXQuIEFuZCBpbgo+
IHRoZSB0aW1lIGl0IHRha2VzIHRvIHRyYWNlaywgdGhhdCByZXF1ZXN0IG1heSBoYXZlIGJlZW4g
ZXhlY3V0ZWQsCj4gcmV0aXJlZCBhbmQgZnJlZWQuIFRvIHByZXZlbnQgdGhlIGRhbmdsaW5nIHN0
YWxlIGRlcmVmZXJlbmNlLCB3ZSB1c2UKPiByY3VfcmVhZF9sb2NrKCkgaGVyZSBhcyB3ZSBwZWVr
IGludG8gdGhlIHJlcXVlc3QsIGFuZCBzcGlubG9ja3MgYXJvdW5kCj4gdGhlIGFjdHVhbCB0cmFu
c2ZlciB0byB0aGUgZXhlY3V0aW9uIGJhY2tlbmQuCgpTbyBpdCdzIG5vdCBhY3R1YWxseSBhYm91
dCB2ZS0+cmVxdWVzdCBhcyBzIG1lbWJlciBwb2ludGVyLCBidXQgdGhlIApyZXF1ZXN0IG9iamVj
dCBpdHNlbGYuIFRoYXQgY291bGQgbWFrZSBzZW5zZSwgYnV0IHRoZW4gd291bGRuJ3QgeW91IG5l
ZWQgCnRvIGhvbGQgdGhlIHJjdV9yZWFkX2xvY2sgb3ZlciB0aGUgd2hvbGUgdGFza2xldD8gVGhl
cmUgaXMgYW5vdGhlciAKdmUtPnJlcXVlc3QgcmVhZCBpbiB0aGUgZm9yIGxvb3AganVzdCBiZWxv
dywgYWx0aG91Z2ggbm90IGFuIGFjdHVhbCAKZGVyZWZlcmVuY2UuIEkgZ3Vlc3MgSSBqdXN0IGFu
c3dlcmVkIGl0IHRvIG15c2VsZi4gT2theSwgbG9va3MgZ29vZCB0aGVuLgoKUmVnYXJkcywKClR2
cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
