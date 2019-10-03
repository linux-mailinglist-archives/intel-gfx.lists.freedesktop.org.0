Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9D4C9F3B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 15:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A186E9C4;
	Thu,  3 Oct 2019 13:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A8F6E9C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 13:18:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 06:18:19 -0700
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="191265335"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 03 Oct 2019 06:18:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191003093639.10186-1-chris@chris-wilson.co.uk>
 <20191003093639.10186-2-chris@chris-wilson.co.uk>
 <157010818568.2173.17563179133662647600@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <54c10307-35f4-0c7e-0090-0bada2bbe656@linux.intel.com>
Date: Thu, 3 Oct 2019 14:18:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157010818568.2173.17563179133662647600@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/22] dma-fence: Serialise signal enabling
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzEwLzIwMTkgMTQ6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMC0wMyAxMDozNjoxOCkKPj4gTWFrZSBkbWFfZmVuY2VfZW5hYmxlX3N3
X3NpZ25hbGluZygpIGJlaGF2ZSBsaWtlIGl0cwo+PiBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKCkg
YW5kIGRtYV9mZW5jZV9kZWZhdWx0X3dhaXQoKSBjb3VudGVycGFydHMgYW5kCj4+IHBlcmZvcm0g
dGhlIHRlc3QgdG8gZW5hYmxlIHNpZ25hbGluZyB1bmRlciB0aGUgZmVuY2UtPmxvY2ssIGFsb25n
IHdpdGgKPj4gdGhlIGFjdGlvbiB0byBkbyBzby4gVGhpcyBlbnN1cmUgdGhhdCBzaG91bGQgYW4g
aW1wbGVtZW50YXRpb24gYmUgdHJ5aW5nCj4+IHRvIGZsdXNoIHRoZSBjYl9saXN0IChieSBzaWdu
YWxpbmcpIG9uIHJldGlyZW1lbnQgYmVmb3JlIGZyZWVpbmcgdGhlCj4+IGZlbmNlLCBpdCBjYW4g
ZG8gc28gaW4gYSByYWNlLWZyZWUgbWFubmVyLgo+Pgo+PiBTZWUgYWxzbyAwZmM4OWI2ODAyYmEg
KCJkbWEtZmVuY2U6IFNpbXBseSB3cmFwIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkCj4+IHdpdGgg
ZG1hX2ZlbmNlX3NpZ25hbCIpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gLS0tCj4+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIHwgMTEgKysrKystLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+IGluZGV4IDJjMTM2YWVl
M2U3OS4uNTg3NzI3MDg5MTM0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMKPj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+IEBAIC0yODUsMTkg
KzI4NSwxOCBAQCB2b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlKQo+PiAgIHsKPj4gICAgICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPj4g
ICAKPj4gKyAgICAgICBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAm
ZmVuY2UtPmZsYWdzKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPj4gKwo+PiArICAgICAg
IHNwaW5fbG9ja19pcnFzYXZlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4+ICAgICAgICAgIGlmICgh
dGVzdF9hbmRfc2V0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwKPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICZmZW5jZS0+ZmxhZ3MpICYmCj4+IC0gICAgICAg
ICAgICF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3Mp
ICYmCj4gCj4gU3RhcmluZyBhdCB0aGlzIGluIGRpc2N1c3Npb24gd2l0aCBUdnJ0a28sIHdlIGNh
bid0IGRyb3AgdGhpcyBjaGVjawo+IGVpdGhlci4gQWZ0ZXIgd2hpY2ggdGhpcyBsb29rcyBhbG1v
c3QgaWRlbnRpY2FsIHdpdGggdGhlIG90aGVyCj4gZW5hYmxlX3NpZ25hbGluZyBjYWxsZXJzLgoK
QWggeWVzIHRydWUsIERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCBoYXMgdG8gYmUgcmVsaWFi
bHkgY2hlY2tlZCAKYmVmb3JlIHRoZSBlbmFibGVfc2lnbmFsbGluZyBjYWxsYmFjay4gSSByZXRy
YWN0IG15IHByZXZpb3VzIHItYi4gOikKClJlZ2FyZHMsCgpUdnJ0a28KCgo+PiAgICAgICAgICAg
ICAgZmVuY2UtPm9wcy0+ZW5hYmxlX3NpZ25hbGluZykgewo+PiAgICAgICAgICAgICAgICAgIHRy
YWNlX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsKGZlbmNlKTsKPj4gLQo+PiAtICAgICAgICAgICAg
ICAgc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKPj4gLQo+PiAgICAgICAg
ICAgICAgICAgIGlmICghZmVuY2UtPm9wcy0+ZW5hYmxlX3NpZ25hbGluZyhmZW5jZSkpCj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7Cj4+
IC0KPj4gLSAgICAgICAgICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ss
IGZsYWdzKTsKPj4gICAgICAgICAgfQo+PiArICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUo
ZmVuY2UtPmxvY2ssIGZsYWdzKTsKPj4gICB9Cj4+ICAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vf
ZW5hYmxlX3N3X3NpZ25hbGluZyk7Cj4+ICAgCj4+IC0tIAo+PiAyLjIzLjAKPj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
