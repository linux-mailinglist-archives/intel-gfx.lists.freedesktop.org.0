Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D62BE1D6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 17:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E9C26EBEB;
	Wed, 25 Sep 2019 15:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF076EBE9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:59:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 08:59:29 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179854000"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 08:59:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-12-chris@chris-wilson.co.uk>
 <ab3d61fb-19a8-eba0-d61b-6900e4e751f9@linux.intel.com>
 <156899734942.1196.15176789965520058157@skylake-alporthouse-com>
 <54bd7e47-bcc0-7e5d-c14f-8f591b4bbbae@linux.intel.com>
 <156939979494.4979.4044550468298995712@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cd7a61f5-a18f-63fa-1857-5ebd723f37df@linux.intel.com>
Date: Wed, 25 Sep 2019 16:59:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156939979494.4979.4044550468298995712@skylake-alporthouse-com>
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

Ck9uIDI1LzA5LzIwMTkgMDk6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTIzIDA5OjEwOjI2KQo+Pgo+PiBPbiAyMC8wOS8yMDE5IDE3OjM1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5
LTIwIDE3OjIyOjQyKQo+Pj4+Cj4+Pj4gT24gMDIvMDkvMjAxOSAwNTowMiwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBTaW5jZSB3ZSBjYW5ub3QgYWxsb2NhdGUgdW5kZXJuZWF0aCB0aGUgdm0t
Pm11dGV4IChpdCBpcyB1c2VkIGluIHRoZQo+Pj4+PiBkaXJlY3QtcmVjbGFpbSBwYXRocyksIHdl
IG5lZWQgdG8gc2hpZnQgdGhlIGFsbG9jYXRpb25zIG9mZiBpbnRvIGEKPj4+Pj4gbXV0ZXhsZXNz
IHdvcmtlciB3aXRoIGZlbmNlIHJlY3Vyc2lvbiBwcmV2ZW50aW9uLiBUbyBrbm93IHdoZW4gd2Ug
bmVlZAo+Pj4+PiB0aGlzIHByb3RlY3Rpb24sIHdlIG1hcmsgdXAgdGhlIGFkZHJlc3Mgc3BhY2Vz
IHRoYXQgZG8gYWxsb2NhdGUgYmVmb3JlCj4+Pj4+IGluc2VydGlvbi4KPj4+Pj4KPj4+Pj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+Pj4+
IC0tLQo+Pj4+PiAgICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsr
Kwo+Pj4+PiAgICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAyICsrCj4+
Pj4+ICAgICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pj4+Pgo+Pj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+Pj4+PiBpbmRleCA5MDk1ZjAxNzE2MmUuLjU2ZDI3
Y2YwOWEzZCAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+
Pj4gQEAgLTE1MDAsNiArMTUwMCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9w
cGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+Pj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfcGQ7Cj4+Pj4+ICAgICAgICAgfQo+Pj4+PiAg
ICAgCj4+Pj4+ICsgICAgIHBwZ3R0LT52bS5iaW5kX2FsbG9jID0gSTkxNV9WTUFfTE9DQUxfQklO
RDsKPj4+Pgo+Pj4+IFNvIHRoaXMgaXMgcmUtdXNpbmcgSTkxNV9WTUFfTE9DQUxfQklORCBhcyBh
IHRyaWNrPyBJcyBpdCBjbGVhciBob3cgdGhhdAo+Pj4+IHdvcmtzIGZyb20gdGhlc2UgY2FsbCBz
aXRlcz8gU2hvdWxkIGl0IGJlIGNhbGxlZCBiaW5kX2FsbG9jKnMqPwo+Pj4+IGJpbmRfYWxsb2Nh
dGVzPyBPciBiZSBhIGJvb2xlYW4gd2hpY2ggaXMgY29udmVydGVkIHRvIGEgdHJpY2sgZmxhZyBp
bgo+Pj4+IGk5MTVfdm1hX2JpbmQgd2hlcmUgYSBjb21tZW50IGNhbiBiZSBwdXQgZXhwbGFpbmlu
ZyB0aGUgdHJpY2s/Cj4+Pgo+Pj4gSXMgaXQgYSB0cmljaz8gV2UgbmVlZCB0byBkaWZmZXJlbnRp
YXRlIGJldHdlZW4gcmVxdWVzdHMgZm9yIExPQ0FMX0JJTkQsCj4+PiBHTE9CQUxfQklORCwgTE9D
QUxfQklORCB8IEdMT0JBTF9CSU5ELCBmb3IgZGlmZmVyZW50IHR5cGVzIG9mIHZtLiBUaGVuIEkK
Pj4+IGhhdmUgYSBwbGFuIG9uIHVzaW5nIHRoZSB3b3JrZXIgZm9yIEdMT0JBTF9CSU5EIG9uIGJz
dy9ieHQgdG8gZGVmZXIgdGhlCj4+PiBzdG9wX21hY2hpbmUoKS4KPj4KPj4gV2hhdCdzIHRoZSBj
b25uZWN0aW9uIGJldHdlZW4gIm1hcmsgdXAgdGhlIGFkZHJlc3Mgc3BhY2VzIHRoYXQgZG8KPj4g
YWxsb2NhdGUgYmVmb3JlIGluc2VydGlvbiIgYW5kIEk5MTVfVk1BX0xPQ0FMX0JJTkQ/Cj4gCj4g
RnVsbC1wcGd0dCBpcyBvbmx5IGFjY2Vzc2libGUgYnkgUElOX1VTRVIuCj4gCj4gQWxpYXNpbmct
cHBndHQgaXMgYWNjZXNzaWJsZSBmcm9tIGdsb2JhbC1ndHQgYXMgUElOX1VTRVIuIE9ubHkgaWYg
d2UKPiBoYXZlIGFuIGFsaWFzaW5nLWd0dCBiZWhpbmQgZ2d0dCBkbyB3ZSB3YW50IHRvIGFsbG9j
YXRlIGZvciBnZ3R0IGZvcgo+IGxvY2FsIGJpbmRzLgo+IAo+IGdsb2JhbC1ndHQgYnkgaXRzZWxm
IG5ldmVyIGFsbG9jYXRlcyBhbmQgaXMgZXhwZWN0ZWQgdG8gYmUgc3luY2hyb25vdXMuCj4gSG93
ZXZlciwgd2UgZG8gdXNlIHN0b3BfbWFjaGluZSgpIGZvciBieHQvYnN3IGFuZCB0aGF0IHVuZm9y
dHVuYXRlbHkgaXMKPiBtYXJrZWQgYXMgYW4gYWxsb2NhdGluZyBtdXRleCBzbyBvbmUgaWRlYSBJ
IGhhZCBmb3IgYXZvaWRpbmcgdGhhdAo+IGxvY2tkZXAgc3BsYXQgd2FzIHRvIG1ha2UgYnh0L2Jz
dyBQSU5fR0xPQkFMIGFzeW5jLgoKSSB0aGluayB3ZSBhcmUgbm90IHVuZGVyc3RhbmRpbmcgZWFj
aCBvdGhlciBmcm9tIHRoZSB2ZXJ5IHN0YXJ0LgoKTXkgcG9pbnQgd2FzIHRoYXQgInZtLmJpbmRf
YWxsb2MgPSBJOTE1X1ZNQV9MT0NBTF9CSU5EIiwgYXQgbGVhc3QgbXkgCnVuZGVyc3RhbmRpbmcs
IGVmZmVjdGl2ZWx5IG1lYW5zICJ1c2UgdGhlIHdvcmtlciB3aGVuIHBpbm5pbmcvYmluZGluZyAK
UElOX1VTRVIvSTkxNV9WTUFfTE9DQUxfQklORCIuIEFuZCB0aGF0IGlzIEkgdGhpbmsgbm9uLW9i
dmlvdXMuIFdoZXJlIAp5b3UgaGF2ZSBpbiB0aGUgY29kZToKCglpZiAoZmxhZ3MgJiB2bWEtPnZt
LT5iaW5kX2FsbG9jKQoKSXQgaXMgYSBzaG9ydGVyIGhhY2t5IHdheSBvZiBzYXlpbmc6CgoJaWYg
KCpmbGFncyAmIEk5MTVfVk1BX0xPQ0FMX0JJTkQpICYmCgkgICAgdm1hLT52bS0+YmluZF9hbGxv
Y2F0ZXMpCgpPciB3aGVyZSB5b3UgaGF2ZToKCglpZiAod29yayAmJiAoYmluZF9mbGFncyAmIH52
bWFfZmxhZ3MpICYgdm1hLT52bS0+YmluZF9hbGxvYykgewoKVGhpcyB3b3VsZCBiZToKCglpZiAo
d29yayAmJgoJICAgIHZtYS0+dm0tPmJpbmRfYWxsb2NhdGVzICYmCgkgICAgKGJpbmRfZmxhZ3Mg
JiBJOTE1X1ZNQV9MT0NBTF9CSU5EKSAmJgoJICAgICEodm1hX2ZsYWdzICYgSTkxNV9WTUFfTE9D
QUxfQklORCkpIHsKCkJ1dCBJIHRoaW5rIEkgc2VlIG5vdyB3aGF0IHlvdXIgY29kZSBpcyBhY3R1
YWxseSBzYXlpbmcsIHlvdSBhcmUgaGF2aW5nIAp2bS0+YmluZF9hbGxvYyBtZWFuIHZtLT5iaW5k
X2ZsYWdzX3doaWNoX2FsbG9jYXRlLiBEaWQgSSBnZXQgeW91ciAKdGhpbmtpbmcgcmlnaHQgbm93
PyBJZiBzbyBjb21wcm9taXNlIHdpdGggcmVuYW1pbmcgdG8gdm0tPmJpbmRfYWxsb2NfZmxhZ3M/
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
