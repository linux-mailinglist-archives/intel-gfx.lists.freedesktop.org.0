Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78049583FE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD0546E41D;
	Thu, 27 Jun 2019 13:59:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8CA06E415;
 Thu, 27 Jun 2019 13:59:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 06:59:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="156246445"
Received: from czwolak-mobl2.ger.corp.intel.com (HELO [10.252.4.8])
 ([10.252.4.8])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 06:59:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
 <156164078479.9225.15669406077978719204@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <73df9149-e9a2-8fc7-ba53-073ca496d5aa@linux.intel.com>
Date: Thu, 27 Jun 2019 14:59:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156164078479.9225.15669406077978719204@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Silence Valgrind
 warning in synce_fence_status
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

Ck9uIDI3LzA2LzIwMTkgMTQ6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTI3IDEzOjU1OjIxKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBMZXQgVmFsZ3JpbmQga25vdyB0aGUgaW9j
dGwgaW5pdGlhbGl6ZXMgdGhlIHBhc3NlZCBpbiBpbmZvIGJsb2NrIHRvIHJlZHVjZQo+PiB0aGUg
bm9pc2Ugd2hpbGUgZGVidWdnaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBsaWIvc3dfc3luYy5jIHwg
MTEgKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvbGliL3N3X3N5bmMuYyBiL2xpYi9zd19zeW5jLmMKPj4gaW5kZXggZjIw
ODYwMzMxMmMyLi43M2YzZjcwMTVkOWQgMTAwNjQ0Cj4+IC0tLSBhL2xpYi9zd19zeW5jLmMKPj4g
KysrIGIvbGliL3N3X3N5bmMuYwo+PiBAQCAtNDEsNiArNDEsMTUgQEAKPj4gICAjaW5jbHVkZSAi
ZHJtdGVzdC5oIgo+PiAgICNpbmNsdWRlICJpb2N0bF93cmFwcGVycy5oIgo+PiAgIAo+PiArI2lm
ZGVmIEhBVkVfVkFMR1JJTkQKPj4gKyNpbmNsdWRlIDx2YWxncmluZC92YWxncmluZC5oPgo+PiAr
I2luY2x1ZGUgPHZhbGdyaW5kL21lbWNoZWNrLmg+Cj4+ICsKPj4gKyNkZWZpbmUgVkcoeCkgeAo+
PiArI2Vsc2UKPj4gKyNkZWZpbmUgVkcoeCkgZG8ge30gd2hpbGUgKDApCj4+ICsjZW5kaWYKPj4g
Kwo+PiAgIC8qKgo+PiAgICAqIFNFQ1RJT046c3dfc3luYwo+PiAgICAqIEBzaG9ydF9kZXNjcmlw
dGlvbjogU29mdHdhcmUgc3luYyAoZmVuY2luZykgc3VwcG9ydCBsaWJyYXJ5Cj4+IEBAIC0yMTgs
NiArMjI3LDggQEAgaW50IHN5bmNfZmVuY2Vfc3RhdHVzKGludCBmZW5jZSkKPj4gICAgICAgICAg
aWYgKGZpbGVfaW5mby5udW1fZmVuY2VzICE9IDEpCj4+ICAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7Cj4gCj4gXiBPdGhlcndpc2Uga25vd24gYXMgbGV0cyBwcmV0ZW5kIHdlIG5ldmVy
IHNhdyB0aGF0IGtlcm5lbCBidWcuCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoLzMxMTg4My8/c2VyaWVzPTYyMjc4JnJldj0xCj4gCj4gQW4gZXhhbXBsZSBvZiB3aHkg
aWd0IHNob3VsZCBub3QgYmUgZmlsdGVyaW5nIHRoZSBrZXJuZWwuCgpZb3UgdGhpbmsgdGhlIGxp
YnJhcnkgaGVscGVyIHNob3VsZG4ndCBiZSB0ZXN0aW5nIGZvciBudW1fZmVuY2VzID09IDEsIApl
ZyB0aGUgc2FtZSBhcyBwYXNzZWQgaW4/IEl0IGlzIHF1ZXN0aW9uYWJsZSB0aGF0IGl0IHNob3Vs
ZCByZXR1cm4gCi1FSU5WQUwgaW4gdGhpcyBjYXNlIEkgYWdyZWUgd2l0aCB0aGF0LiBJZiB0aGF0
J3Mgd2hhdCB5b3UgbWVhbnQgd2l0aCAKZmlsdGVyaW5nLgoKPiBKdXN0IGNvbXBsYWluaW5nIGJl
Y2F1c2UgUGV0cmkgZm91bmQgYSBidWcgaW4gb25lIG9mIHRlc3RzIHRoYXQgaXMgYmVpbmcKPiBi
bG9ja2VkIGJ5IG5vIG9uZSByZXZpZXdpbmcgdGhlIGtlcm5lbCBmaXggdGhhdCBpcyBibG9ja2lu
ZyBmaXhpbmcgdGhlCj4gbGlicmFyeSB0byBhbGxvdyB0aGUgYnVnIGZpeCBpbiB0aGUgdGVzdC4K
Ckl0J3Mgb25seSByZWxhdGVkIGJlY2F1c2UgaXQncyB0aGUgc2FtZSBpb2N0bC4gOikgQnV0Li4u
Cgo+PiArICAgICAgIFZHKFZBTEdSSU5EX01BS0VfTUVNX0RFRklORUQoJmZlbmNlX2luZm8sIHNp
emVvZihmZW5jZV9pbmZvKSkpOwo+IAo+IE1vcmUgZnVuIHdvdWxkIGJlIHRvCj4gCj4gc3RydWN0
IHN5bmNfZmVuY2VfaW5mbyBmZW5jZV9pbmZvID0geyAuc3RhdHVzID0gLUVOT1NZUyB9Owo+IAo+
IFNvIHRoYXQgdmFsZ3JpbmQga25vd3MgaXQgaXMgaW5pdGlhbGlzZWQgYW5kIHdlIHJlbGlhYmx5
IHJlcG9ydCBhbiBlcnJvcgo+IGlmIHRoZSBrZXJuZWwgZmFpbHMgdG8gZmlsbCBpbiB0aGUgc3Ry
dWN0LgoKLi4uIHN1cmUsIHRoaXMgaXMgYWxzbyBva2F5LiBGb3IgbWUgLUVOT1NZUyBpcyBub3Qg
c3RyaWN0bHkgbmVlZGVkIGF0IAp0aGlzIGxldmVsLiBJdCB3b3VsZCBiZSBtb3JlIG9mIGEgdW5p
dCB0ZXN0IGZvciB0aGUgaW9jdGwsIG5vdCBiZWxvbmdpbmcgCnRvIHRoZSBsaWJyYXJ5IGhlbHBl
ciwgYnV0IGl0IGlzIGFsc28gZmluZSB0byBpbmplY3Qgc29tZSBtb3JlIGV4cGxpY2l0IAp0cmFz
aCBzbyBpdCBjYW4gYmUgY2F1Z2h0IGV2ZW4gaWYgdGhlcmUgYXJlIG5vIHNwZWNpZmljIHVuaXQg
dGVzdHMuCgpJIGRvbid0IGFsc28gc2VlIGEgcHJvYmxlbSB3aXRoIFZhbGdyaW5kIGFubm90YXRp
b24uIEl0IGRvZXNuJ3QgaGlkZSAKYW55dGhpbmcsIG5vciBkb2VzIGl0IHNhbml0aXNlcy4gQnV0
IHllcywgaXQgaXMgbm90IG5lZWRlZCBpZiB3ZSBnbyBmb3IgCi1FTk9TWVMgdHJpY2suCgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
