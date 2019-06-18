Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F09499B5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 09:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3270C6E0DA;
	Tue, 18 Jun 2019 07:02:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F6566E0DA
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 07:02:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 00:02:16 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 00:02:15 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
 <20190617181236.7981-24-tvrtko.ursulin@linux.intel.com>
 <156080171882.7889.15606389303716351391@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b81b1e23-896d-d3d8-3c20-ac4b2a505d2c@linux.intel.com>
Date: Tue, 18 Jun 2019 08:02:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156080171882.7889.15606389303716351391@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 23/33] drm/i915: Convert
 i915_gem_flush_ggtt_writes to intel_gt
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

Ck9uIDE3LzA2LzIwMTkgMjE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE3IDE5OjEyOjI2KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBIYXZpbmcgaW50cm9kdWNlZCBzdHJ1Y3Qg
aW50ZWxfZ3QgKG5hbWVkIHRoZSBhbm9ueW1vdXMgc3RydWN0dXJlIGluIGk5MTUpCj4+IHdlIGNh
biBzdGFydCB1c2luZyBpdCB0byBjb21wYXJ0bWVudGFsaXplIG91ciBjb2RlIGJldHRlci4gSXQg
bWFrZXMgbW9yZQo+PiBzZW5zZSBsb2dpY2FsbHkgdG8gaGF2ZSB0aGUgY29kZSBpbnRlcm5hbGx5
IGxpa2UgdGhpcyBhbmQgaXQgd2lsbCBhbHNvCj4+IGhlbHAgd2l0aCBmdXR1cmUgc3BsaXQgYmV0
d2VlbiBndCBhbmQgZGlzcGxheSBpbiBpOTE1Lgo+Pgo+PiB2MjoKPj4gICAqIEtlZXAgZ2d0dCBm
bHVzaCBiZWZvcmUgZmIgb2JqIGZsdXNoLiAoQ2hyaXMpCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8IDEyICsrKy0tLQo+PiAg
IC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICAzICstCj4+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAgICAgIHwgNDEgKysr
KysrKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0Lmgg
ICAgICAgICAgICB8ICAyICsKPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAg
ICAgICAgICAgICAgfCAgMiAtCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAg
ICAgICAgICAgICAgIHwgNDAgLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYyAgICAgICAgICAgICAgIHwgIDMgKy0KPj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCAgMiArLQo+PiAgIDggZmlsZXMgY2hh
bmdlZCwgNTQgaW5zZXJ0aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPj4gaW5kZXggYTQwNDdhNTg1YzhiLi5m
NThkNDVhZTEwZDAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3QuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMKPj4gQEAgLTIyLDYgKzIyLDcgQEAKPj4gICAgKgo+PiAgICAqLwo+PiAgIAo+PiAr
I2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCj4+ICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+ICAg
I2luY2x1ZGUgImk5MTVfZ2VtX2NsZmx1c2guaCIKPj4gICAjaW5jbHVkZSAiaTkxNV9nZW1fY29u
dGV4dC5oIgo+PiBAQCAtMzY3LDcgKzM2OCw2IEBAIHZvaWQKPj4gICBpOTE1X2dlbV9vYmplY3Rf
Zmx1c2hfd3JpdGVfZG9tYWluKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBmbHVzaF9kb21h
aW5zKQo+PiAgIHsKPj4gLSAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOwo+PiAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZt
YTsKPj4gICAKPj4gICAgICAgICAgYXNzZXJ0X29iamVjdF9oZWxkKG9iaik7Cj4+IEBAIC0zNzcs
MTcgKzM3NywxNyBAQCBpOTE1X2dlbV9vYmplY3RfZmx1c2hfd3JpdGVfZG9tYWluKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4+ICAgCj4+ICAgICAgICAgIHN3aXRjaCAob2JqLT53
cml0ZV9kb21haW4pIHsKPj4gICAgICAgICAgY2FzZSBJOTE1X0dFTV9ET01BSU5fR1RUOgo+PiAt
ICAgICAgICAgICAgICAgaTkxNV9nZW1fZmx1c2hfZ2d0dF93cml0ZXMoZGV2X3ByaXYpOwo+PiAt
Cj4+IC0gICAgICAgICAgICAgICBpbnRlbF9mYl9vYmpfZmx1c2gob2JqLAo+PiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGZiX3dyaXRlX29yaWdpbihvYmosIEk5MTVfR0VNX0RP
TUFJTl9HVFQpKTsKPj4gLQo+PiAgICAgICAgICAgICAgICAgIGZvcl9lYWNoX2dndHRfdm1hKHZt
YSwgb2JqKSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAodm1hLT5pb21hcCkKPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4+ICAgCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHZtYS0+dm0tPmd0
KTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfdm1hX3Vuc2V0X2dndHRfd3JpdGUo
dm1hKTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gCj4gU28gd2Ugbm8gbG9u
Z2VyIGZsdXNoIHdyaXRlcyBmcm9tIHVzZXIgR0dUVCBtbWFwcywgbm9yIGNsZWFyIGFsbCB0aGUK
PiBkaXJ0eSBiaXRzPyBBbmQgbm93IGRlc3BpdGUgdGhlIG1vdmUgdG8gYmUgZ3QgY2VudHJpYyB3
ZSBlbmQgdXAgYXNzdW1pbmcKPiB0aGF0IGl0IGlzIHN0aWxsIHJlYWxseSBkZXZpY2UgY2VudHJp
YyAoYnJlYWtpbmcgYWZ0ZXIgb25lIGd0IGZsdXNoKS4KCkkgZGlkIG5vdCByZWFsaXplIHRoZSBz
aWduaWZpY2FuY2Ugb2Ygdm1hLT5pb21hcCBhbmQgdGhlIGJyZWFrIHdhcyBub3QgCnN1cHBvc2Vk
IHRvIGJlIHRoZXJlLCBzbmVha2VkIHVwIGFmdGVyIHNvbWUgYmFjayBhbmQgZm9ydGggcmVmYWN0
b3JpbmcuCgpTbyBpdCBzb3VuZHMgbGlrZSBpdCBuZWVkcyB0byBiZSB0d28gbG9vcHMgdG8gcHJl
c2VydmUgZXhpc3RpbmcgYmVoYXZpb3VyLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
