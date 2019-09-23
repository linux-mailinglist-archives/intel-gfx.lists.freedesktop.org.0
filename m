Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BABBBAEEC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 10:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316986E21D;
	Mon, 23 Sep 2019 08:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44796E21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 08:10:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 01:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="213248765"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 01:10:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-12-chris@chris-wilson.co.uk>
 <ab3d61fb-19a8-eba0-d61b-6900e4e751f9@linux.intel.com>
 <156899734942.1196.15176789965520058157@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <54bd7e47-bcc0-7e5d-c14f-8f591b4bbbae@linux.intel.com>
Date: Mon, 23 Sep 2019 09:10:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156899734942.1196.15176789965520058157@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915: Mark up address spaces that
 may need to allocate
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

Ck9uIDIwLzA5LzIwMTkgMTc6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTIwIDE3OjIyOjQyKQo+Pgo+PiBPbiAwMi8wOS8yMDE5IDA1OjAy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBTaW5jZSB3ZSBjYW5ub3QgYWxsb2NhdGUgdW5kZXJu
ZWF0aCB0aGUgdm0tPm11dGV4IChpdCBpcyB1c2VkIGluIHRoZQo+Pj4gZGlyZWN0LXJlY2xhaW0g
cGF0aHMpLCB3ZSBuZWVkIHRvIHNoaWZ0IHRoZSBhbGxvY2F0aW9ucyBvZmYgaW50byBhCj4+PiBt
dXRleGxlc3Mgd29ya2VyIHdpdGggZmVuY2UgcmVjdXJzaW9uIHByZXZlbnRpb24uIFRvIGtub3cg
d2hlbiB3ZSBuZWVkCj4+PiB0aGlzIHByb3RlY3Rpb24sIHdlIG1hcmsgdXAgdGhlIGFkZHJlc3Mg
c3BhY2VzIHRoYXQgZG8gYWxsb2NhdGUgYmVmb3JlCj4+PiBpbnNlcnRpb24uCj4+Pgo+Pj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiAt
LS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMyArKysKPj4+
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgMiArKwo+Pj4gICAgMiBm
aWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYwo+Pj4gaW5kZXggOTA5NWYwMTcxNjJlLi41NmQyN2NmMDlhM2QgMTAwNjQ0Cj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+IEBAIC0xNTAwLDYgKzE1MDAsNyBA
QCBzdGF0aWMgc3RydWN0IGk5MTVfcHBndHQgKmdlbjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9m
cmVlX3BkOwo+Pj4gICAgICAgIH0KPj4+ICAgIAo+Pj4gKyAgICAgcHBndHQtPnZtLmJpbmRfYWxs
b2MgPSBJOTE1X1ZNQV9MT0NBTF9CSU5EOwo+Pgo+PiBTbyB0aGlzIGlzIHJlLXVzaW5nIEk5MTVf
Vk1BX0xPQ0FMX0JJTkQgYXMgYSB0cmljaz8gSXMgaXQgY2xlYXIgaG93IHRoYXQKPj4gd29ya3Mg
ZnJvbSB0aGVzZSBjYWxsIHNpdGVzPyBTaG91bGQgaXQgYmUgY2FsbGVkIGJpbmRfYWxsb2Mqcyo/
Cj4+IGJpbmRfYWxsb2NhdGVzPyBPciBiZSBhIGJvb2xlYW4gd2hpY2ggaXMgY29udmVydGVkIHRv
IGEgdHJpY2sgZmxhZyBpbgo+PiBpOTE1X3ZtYV9iaW5kIHdoZXJlIGEgY29tbWVudCBjYW4gYmUg
cHV0IGV4cGxhaW5pbmcgdGhlIHRyaWNrPwo+IAo+IElzIGl0IGEgdHJpY2s/IFdlIG5lZWQgdG8g
ZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHJlcXVlc3RzIGZvciBMT0NBTF9CSU5ELAo+IEdMT0JBTF9C
SU5ELCBMT0NBTF9CSU5EIHwgR0xPQkFMX0JJTkQsIGZvciBkaWZmZXJlbnQgdHlwZXMgb2Ygdm0u
IFRoZW4gSQo+IGhhdmUgYSBwbGFuIG9uIHVzaW5nIHRoZSB3b3JrZXIgZm9yIEdMT0JBTF9CSU5E
IG9uIGJzdy9ieHQgdG8gZGVmZXIgdGhlCj4gc3RvcF9tYWNoaW5lKCkuCgpXaGF0J3MgdGhlIGNv
bm5lY3Rpb24gYmV0d2VlbiAibWFyayB1cCB0aGUgYWRkcmVzcyBzcGFjZXMgdGhhdCBkbyAKYWxs
b2NhdGUgYmVmb3JlIGluc2VydGlvbiIgYW5kIEk5MTVfVk1BX0xPQ0FMX0JJTkQ/CgpSZWdhcmRz
LAoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
