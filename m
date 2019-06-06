Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7601736FAD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA95893EC;
	Thu,  6 Jun 2019 09:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12984893ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:19:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:19:12 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2019 02:19:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190604152408.24468-1-chris@chris-wilson.co.uk>
 <9ea334bb-024c-2e1f-92e4-7563ad690c87@linux.intel.com>
 <155981219692.19464.13852789202039173857@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d307ed67-3d81-6ed6-de46-1e1a78435a6f@linux.intel.com>
Date: Thu, 6 Jun 2019 10:19:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155981219692.19464.13852789202039173857@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip context_barrier emission for
 unused contexts
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

Ck9uIDA2LzA2LzIwMTkgMTA6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTA1IDExOjQwOjI3KQo+Pgo+PiBPbiAwNC8wNi8yMDE5IDE2OjI0
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBUaGUgaW50ZW50IHdhcyB0byBza2lwIHVudXNlZCBI
VyBjb250ZXh0cyBieSBjaGVja2luZyBjZS0+c3RhdGUuCj4+PiBIb3dldmVyLCB0aGlzIG9ubHkg
d29ya3MgZm9yIGV4ZWNsaXN0cyB3aGVyZSB0aGUgcHBHVFQgcG9pbnRlcnMgaXMKPj4+IHN0b3Jl
ZCBpbnNpZGUgdGhlIEhXIGNvbnRleHQuIEZvciBnZW43LCB0aGUgcHBHVFQgaXMgYWxvbmdzaWRl
IHRoZQo+Pj4gbG9naWNhbCBzdGF0ZSBhbmQgbXVzdCBiZSB1cGRhdGVkIG9uIGFsbCBhY3RpdmUg
ZW5naW5lcyBidXQsIGNydWNpYWxseSwKPj4+IG9ubHkgb24gYWN0aXZlIGVuZ2luZXMuIEFzIHdl
IG5lZWQgZGlmZmVyZW50IGNoZWNrcywgYW5kIHRvIGtlZXAKPj4+IGNvbnRleHRfYmFycmllcl90
YXNrKCkgYWdub3N0aWMsIHBhc3MgaW4gdGhlIHByZWRpY2F0ZS4KPj4+Cj4+PiBCdWd6aWxsYTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODM2Cj4+PiBG
aXhlczogNjJjOGU0MjM0NTBkICgiZHJtL2k5MTU6IFNraXAgdW51c2VkIGNvbnRleHRzIGZvciBj
b250ZXh0X2JhcnJpZXJfdGFzaygpIikKPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMgICB8IDE1ICsrKysrKysrKysrKysrLQo+Pj4gICAgLi4uL2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgMTkgKysrKysrKysrKysr
KysrLS0tLQo+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYwo+Pj4gaW5kZXggMDg3MjFlZjYyZTRlLi42ODE5YjU5OGQyMjYgMTAwNjQ0Cj4+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4+PiBAQCAtOTAyLDYg
KzkwMiw3IEBAIHN0YXRpYyB2b2lkIGNiX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKmJhc2Up
Cj4+PiAgICBJOTE1X1NFTEZURVNUX0RFQ0xBUkUoc3RhdGljIGludGVsX2VuZ2luZV9tYXNrX3Qg
Y29udGV4dF9iYXJyaWVyX2luamVjdF9mYXVsdCk7Cj4+PiAgICBzdGF0aWMgaW50IGNvbnRleHRf
YmFycmllcl90YXNrKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaW50ZWxfZW5naW5lX21hc2tfdCBlbmdpbmVzLAo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCAoKnNraXApKHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSwgdm9pZCAqZGF0YSksCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW50ICgqZW1pdCkoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHZvaWQgKmRhdGEpLAo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKCp0YXNrKSh2b2lkICpkYXRhKSwKPj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpkYXRhKQo+Pj4gQEAgLTkzMSw3
ICs5MzIsMTAgQEAgc3RhdGljIGludCBjb250ZXh0X2JhcnJpZXJfdGFzayhzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4LAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4+ICAg
ICAgICAgICAgICAgIH0KPj4+ICAgIAo+Pj4gLSAgICAgICAgICAgICBpZiAoIShjZS0+ZW5naW5l
LT5tYXNrICYgZW5naW5lcykgfHwgIWNlLT5zdGF0ZSkKPj4+ICsgICAgICAgICAgICAgaWYgKCEo
Y2UtPmVuZ2luZS0+bWFzayAmIGVuZ2luZXMpKQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNv
bnRpbnVlOwo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICBpZiAoc2tpcCAmJiBza2lwKGNlLCBkYXRh
KSkKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4+PiAgICAKPj4+ICAgICAg
ICAgICAgICAgIHJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChjZSk7Cj4+PiBAQCAt
MTA1OCw2ICsxMDYyLDE0IEBAIHN0YXRpYyBpbnQgZW1pdF9wcGd0dF91cGRhdGUoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIHZvaWQgKmRhdGEpCj4+PiAgICAgICAgcmV0dXJuIDA7Cj4+PiAgICB9
Cj4+PiAgICAKPj4+ICtzdGF0aWMgYm9vbCBza2lwX3BwZ3R0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UsIHZvaWQgKmRhdGEpCj4+PiArewo+Pj4gKyAgICAgaWYgKEhBU19MT0dJQ0FM
X1JJTkdfQ09OVEVYVFMoY2UtPmVuZ2luZS0+aTkxNSkpCj4+PiArICAgICAgICAgICAgIHJldHVy
biAhY2UtPnN0YXRlOwo+Pj4gKyAgICAgZWxzZQo+Pj4gKyAgICAgICAgICAgICByZXR1cm4gIWF0
b21pY19yZWFkKCZjZS0+cGluX2NvdW50KTsKPj4KPj4gV291bGQgInJldHVybiAhYXRvbWljX3Jl
YWQoJmNlLT5waW5fY291bnQpIHx8ICFjZS0+c3RhdGU7IiB3b3JrIGFuZAo+PiBhdm9pZCB0aGUg
c29tZXdoYXQgaXJreSBIQVNfTE9HSUNBTF9SSU5HX0NPTlRFWFRTIGNoZWNrPwo+IAo+IE5vLCBi
ZWNhdXNlIHdlIG5lZWQgdGhlIGJhcnJpZXIgb24gZ2VuNyAhcmNzIHdoaWNoIGRvZXNuJ3QgaGF2
ZQo+IGNlLT5zdGF0ZSAoYnV0IGRvZXMgbmVlZCB0byBzd2l0Y2ggbW0pLgoKVGhhdCdzIG5vdCB0
aGUgcGF0aCB3aGljaCB3b3VsZCBiZSBjb3ZlcmVkIGJ5ICFhdG9taWNfcmVhZCgmY2UtPnBpbl9j
b3VudCkgPwoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
