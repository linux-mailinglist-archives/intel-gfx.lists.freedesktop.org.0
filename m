Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 914251B6B7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6810989939;
	Mon, 13 May 2019 13:08:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1547F89935;
 Mon, 13 May 2019 13:08:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:08:19 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 06:08:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-11-tvrtko.ursulin@linux.intel.com>
 <155749443195.28545.5808007073578767822@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <901f652b-bf5f-5b79-c0c4-8ca4d6bd7646@linux.intel.com>
Date: Mon, 13 May 2019 14:08:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749443195.28545.5808007073578767822@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 10/21] gem_wsim: Extract str
 to engine lookup
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

Ck9uIDEwLzA1LzIwMTkgMTQ6MjAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjQ3KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBiZW5jaG1hcmtzL2dl
bV93c2ltLmMgfCAzNCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4+
IGluZGV4IDUyNDU2OTJkZjZlYi4uZjY1NGRlY2IyNGNjIDEwMDY0NAo+PiAtLS0gYS9iZW5jaG1h
cmtzL2dlbV93c2ltLmMKPj4gKysrIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4+IEBAIC0zMTgs
NiArMzE4LDE4IEBAIHdzaW1fZXJyKGNvbnN0IGNoYXIgKmZtdCwgLi4uKQo+PiAgICAgICAgICB9
IFwKPj4gICB9Cj4+ICAgCj4+ICtzdGF0aWMgaW50IHN0cl90b19lbmdpbmUoY29uc3QgY2hhciAq
c3RyKQo+PiArewo+PiArICAgICAgIHVuc2lnbmVkIGludCBpOwo+PiArCj4+ICsgICAgICAgZm9y
IChpID0gMDsgaSA8IEFSUkFZX1NJWkUocmluZ19zdHJfbWFwKTsgaSsrKSB7Cj4+ICsgICAgICAg
ICAgICAgICBpZiAoIXN0cmNhc2VjbXAoc3RyLCByaW5nX3N0cl9tYXBbaV0pKQo+PiArICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gaTsKPj4gKyAgICAgICB9Cj4+ICsKPj4gKyAgICAgICBy
ZXR1cm4gLTE7Cj4+ICt9Cj4+ICsKPj4gICBzdGF0aWMgc3RydWN0IHdvcmtsb2FkICoKPj4gICBw
YXJzZV93b3JrbG9hZChzdHJ1Y3Qgd19hcmcgKmFyZywgdW5zaWduZWQgaW50IGZsYWdzLCBzdHJ1
Y3Qgd29ya2xvYWQgKmFwcF93KQo+PiAgIHsKPj4gQEAgLTQ4MCwyMiArNDkyLDE4IEBAIHBhcnNl
X3dvcmtsb2FkKHN0cnVjdCB3X2FyZyAqYXJnLCB1bnNpZ25lZCBpbnQgZmxhZ3MsIHN0cnVjdCB3
b3JrbG9hZCAqYXBwX3cpCj4+ICAgICAgICAgICAgICAgICAgfQo+PiAgIAo+PiAgICAgICAgICAg
ICAgICAgIGlmICgoZmllbGQgPSBzdHJ0b2tfcihmc3RhcnQsICIuIiwgJmZjdHgpKSAhPSBOVUxM
KSB7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvbGRfdmFsaWQgPSB2
YWxpZDsKPj4gLQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgZnN0YXJ0ID0gTlVMTDsKPj4g
ICAKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUo
cmluZ19zdHJfbWFwKTsgaSsrKSB7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aWYgKCFzdHJjYXNlY21wKGZpZWxkLCByaW5nX3N0cl9tYXBbaV0pKSB7Cj4+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGVwLmVuZ2luZSA9IGk7Cj4+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoc3RlcC5lbmdpbmUgPT0gQkNTKQo+
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiY3NfdXNl
ZCA9IHRydWU7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YWxp
ZCsrOwo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfQo+PiAtICAgICAgICAgICAgICAgICAg
ICAgICB9Cj4+IC0KPj4gLSAgICAgICAgICAgICAgICAgICAgICAgY2hlY2tfYXJnKG9sZF92YWxp
ZCA9PSB2YWxpZCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaSA9IHN0cl90b19lbmdpbmUo
ZmllbGQpOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBjaGVja19hcmcoaSA8IDAsCj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIkludmFsaWQgZW5naW5lIGlkIGF0IHN0
ZXAgJXUhXG4iLCBucl9zdGVwcyk7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChpID49
IDApCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsaWQrKzsKPiAKPiBjaGVj
a19hcmcoKSByZXR1cm5lZCBhbHJlYWR5IGZvciBhbGwgaSA8IDAsIG5vPwoKWWVzLCBhbmQgaXQg
bG9va3MgdGhlIHZlcnkgbmV4dCBwYXRjaCByZW1vdmVzIHRoZSBpZi4gSSdsbCBwdWxsIGl0IGhl
cmUuCgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KClRoYW5rcyEKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
