Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB01CB62A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 10:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017606EAF4;
	Fri,  4 Oct 2019 08:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFE16EAF4;
 Fri,  4 Oct 2019 08:31:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 01:31:42 -0700
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="191520378"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 04 Oct 2019 01:31:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191003210100.22250-1-chris@chris-wilson.co.uk>
 <20191003210100.22250-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <77665d18-fdea-a49d-c790-e8936bb462c4@linux.intel.com>
Date: Fri, 4 Oct 2019 09:31:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003210100.22250-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] dma-fence: Serialise signal enabling
 (dma_fence_enable_sw_signaling)
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzEwLzIwMTkgMjI6MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBNYWtlIGRtYV9mZW5j
ZV9lbmFibGVfc3dfc2lnbmFsaW5nKCkgYmVoYXZlIGxpa2UgaXRzCj4gZG1hX2ZlbmNlX2FkZF9j
YWxsYmFjaygpIGFuZCBkbWFfZmVuY2VfZGVmYXVsdF93YWl0KCkgY291bnRlcnBhcnRzIGFuZAo+
IHBlcmZvcm0gdGhlIHRlc3QgdG8gZW5hYmxlIHNpZ25hbGluZyB1bmRlciB0aGUgZmVuY2UtPmxv
Y2ssIGFsb25nIHdpdGgKPiB0aGUgYWN0aW9uIHRvIGRvIHNvLiBUaGlzIGVuc3VyZSB0aGF0IHNo
b3VsZCBhbiBpbXBsZW1lbnRhdGlvbiBiZSB0cnlpbmcKPiB0byBmbHVzaCB0aGUgY2JfbGlzdCAo
Ynkgc2lnbmFsaW5nKSBvbiByZXRpcmVtZW50IGJlZm9yZSBmcmVlaW5nIHRoZQo+IGZlbmNlLCBp
dCBjYW4gZG8gc28gaW4gYSByYWNlLWZyZWUgbWFubmVyLgo+IAo+IFNlZSBhbHNvIDBmYzg5YjY4
MDJiYSAoImRtYS1mZW5jZTogU2ltcGx5IHdyYXAgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQKPiB3
aXRoIGRtYV9mZW5jZV9zaWduYWwiKS4KPiAKPiB2MjogUmVmYWN0b3IgYWxsIDMgZW5hYmxlX3Np
Z25hbGluZyBwYXRocyB0byB1c2UgYSBjb21tb24gZnVuY3Rpb24uCj4gCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCA3OCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgNDMgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+IGluZGV4IDJjMTM2YWVlM2U3OS4uYjU4NTI4YzFj
YzlkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+ICsrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+IEBAIC0yNzMsNiArMjczLDMwIEBAIHZvaWQgZG1h
X2ZlbmNlX2ZyZWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4gICB9Cj4gICBFWFBPUlRfU1lN
Qk9MKGRtYV9mZW5jZV9mcmVlKTsKPiAgIAo+ICtzdGF0aWMgYm9vbCBfX2RtYV9mZW5jZV9lbmFi
bGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ICt7Cj4gKwlib29sIHdhc19z
ZXQ7Cj4gKwo+ICsJbG9ja2RlcF9hc3NlcnRfaGVsZChmZW5jZS0+bG9jayk7Cj4gKwo+ICsJd2Fz
X3NldCA9IHRlc3RfYW5kX3NldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQs
Cj4gKwkJCQkgICAmZmVuY2UtPmZsYWdzKTsKPiArCj4gKwlpZiAodGVzdF9iaXQoRE1BX0ZFTkNF
X0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4g
Kwo+ICsJaWYgKCF3YXNfc2V0ICYmIGZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcpIHsKPiAr
CQlpZiAoIWZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcoZmVuY2UpKSB7Cj4gKwkJCWRtYV9m
ZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsKPiArCQkJcmV0dXJuIGZhbHNlOwo+ICsJCX0KPiAr
Cj4gKwkJdHJhY2VfZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwoZmVuY2UpOwoKVHJhY2Vwb2ludCB1
c2VkIHRvIGNvbWUgYmVmb3JlIHRoZSBlbmFibGVfc2lnbmFsaW5nIGNhbGwgc28gcHJvYmFibHkg
CmJlc3QgdG8ga2VlcCBpdCBsaWtlIHRoYXQuCgo+ICsJfQo+ICsKPiArCXJldHVybiB0cnVlOwo+
ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyAtIGVu
YWJsZSBzaWduYWxpbmcgb24gZmVuY2UKPiAgICAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIGVuYWJs
ZQo+IEBAIC0yODUsMTkgKzMwOSwxMiBAQCB2b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFs
aW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ICAgewo+ICAgCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7Cj4gICAKPiAtCWlmICghdGVzdF9hbmRfc2V0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVf
U0lHTkFMX0JJVCwKPiAtCQkJICAgICAgJmZlbmNlLT5mbGFncykgJiYKPiAtCSAgICAhdGVzdF9i
aXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSAmJgo+IC0JICAg
IGZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcpIHsKPiAtCQl0cmFjZV9kbWFfZmVuY2VfZW5h
YmxlX3NpZ25hbChmZW5jZSk7Cj4gLQo+IC0JCXNwaW5fbG9ja19pcnFzYXZlKGZlbmNlLT5sb2Nr
LCBmbGFncyk7Cj4gLQo+IC0JCWlmICghZmVuY2UtPm9wcy0+ZW5hYmxlX3NpZ25hbGluZyhmZW5j
ZSkpCj4gLQkJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsKPiArCWlmICh0ZXN0X2Jp
dChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQo+ICsJCXJldHVy
bjsKPiAgIAo+IC0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsK
PiAtCX0KPiArCXNwaW5fbG9ja19pcnFzYXZlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4gKwlfX2Rt
YV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKGZlbmNlKTsKPiArCXNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNl
X2VuYWJsZV9zd19zaWduYWxpbmcpOwo+ICAgCj4gQEAgLTMzMSw3ICszNDgsNiBAQCBpbnQgZG1h
X2ZlbmNlX2FkZF9jYWxsYmFjayhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRtYV9m
ZW5jZV9jYiAqY2IsCj4gICB7Cj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAgIAlpbnQgcmV0
ID0gMDsKPiAtCWJvb2wgd2FzX3NldDsKPiAgIAo+ICAgCWlmIChXQVJOX09OKCFmZW5jZSB8fCAh
ZnVuYykpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+IEBAIC0zNDMsMjUgKzM1OSwxNCBAQCBpbnQg
ZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRt
YV9mZW5jZV9jYiAqY2IsCj4gICAKPiAgIAlzcGluX2xvY2tfaXJxc2F2ZShmZW5jZS0+bG9jaywg
ZmxhZ3MpOwo+ICAgCj4gLQl3YXNfc2V0ID0gdGVzdF9hbmRfc2V0X2JpdChETUFfRkVOQ0VfRkxB
R19FTkFCTEVfU0lHTkFMX0JJVCwKPiAtCQkJCSAgICZmZW5jZS0+ZmxhZ3MpOwo+IC0KPiAtCWlm
ICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQo+
IC0JCXJldCA9IC1FTk9FTlQ7Cj4gLQllbHNlIGlmICghd2FzX3NldCAmJiBmZW5jZS0+b3BzLT5l
bmFibGVfc2lnbmFsaW5nKSB7Cj4gLQkJdHJhY2VfZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwoZmVu
Y2UpOwo+IC0KPiAtCQlpZiAoIWZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcoZmVuY2UpKSB7
Cj4gLQkJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsKPiAtCQkJcmV0ID0gLUVOT0VO
VDsKPiAtCQl9Cj4gLQl9Cj4gLQo+IC0JaWYgKCFyZXQpIHsKPiArCWlmIChfX2RtYV9mZW5jZV9l
bmFibGVfc2lnbmFsaW5nKGZlbmNlKSkgewo+ICAgCQljYi0+ZnVuYyA9IGZ1bmM7Cj4gICAJCWxp
c3RfYWRkX3RhaWwoJmNiLT5ub2RlLCAmZmVuY2UtPmNiX2xpc3QpOwo+IC0JfSBlbHNlCj4gKwl9
IGVsc2Ugewo+ICAgCQlJTklUX0xJU1RfSEVBRCgmY2ItPm5vZGUpOwo+ICsJCXJldCA9IC1FTk9F
TlQ7Cj4gKwl9Cj4gKwo+ICAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZs
YWdzKTsKPiAgIAo+ICAgCXJldHVybiByZXQ7Cj4gQEAgLTQ2MSw3ICs0NjYsNiBAQCBkbWFfZmVu
Y2VfZGVmYXVsdF93YWl0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIsIHNpZ25l
ZCBsb25nIHRpbWVvdXQpCj4gICAJc3RydWN0IGRlZmF1bHRfd2FpdF9jYiBjYjsKPiAgIAl1bnNp
Z25lZCBsb25nIGZsYWdzOwo+ICAgCXNpZ25lZCBsb25nIHJldCA9IHRpbWVvdXQgPyB0aW1lb3V0
IDogMTsKPiAtCWJvb2wgd2FzX3NldDsKPiAgIAo+ICAgCWlmICh0ZXN0X2JpdChETUFfRkVOQ0Vf
RkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQo+ICAgCQlyZXR1cm4gcmV0Owo+IEBA
IC00NzMsMjEgKzQ3Nyw5IEBAIGRtYV9mZW5jZV9kZWZhdWx0X3dhaXQoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UsIGJvb2wgaW50ciwgc2lnbmVkIGxvbmcgdGltZW91dCkKPiAgIAkJZ290byBvdXQ7
Cj4gICAJfQo+ICAgCj4gLQl3YXNfc2V0ID0gdGVzdF9hbmRfc2V0X2JpdChETUFfRkVOQ0VfRkxB
R19FTkFCTEVfU0lHTkFMX0JJVCwKPiAtCQkJCSAgICZmZW5jZS0+ZmxhZ3MpOwo+IC0KPiAtCWlm
ICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQo+
ICsJaWYgKCFfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKGZlbmNlKSkKPiAgIAkJZ290byBv
dXQ7Cj4gICAKPiAtCWlmICghd2FzX3NldCAmJiBmZW5jZS0+b3BzLT5lbmFibGVfc2lnbmFsaW5n
KSB7Cj4gLQkJdHJhY2VfZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwoZmVuY2UpOwo+IC0KPiAtCQlp
ZiAoIWZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcoZmVuY2UpKSB7Cj4gLQkJCWRtYV9mZW5j
ZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsKPiAtCQkJZ290byBvdXQ7Cj4gLQkJfQo+IC0JfQo+IC0K
PiAgIAlpZiAoIXRpbWVvdXQpIHsKPiAgIAkJcmV0ID0gMDsKPiAgIAkJZ290byBvdXQ7Cj4gCgpU
aGUgcmVzdCBsb29rcyBjb3JyZWN0IHRvIG1lLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
