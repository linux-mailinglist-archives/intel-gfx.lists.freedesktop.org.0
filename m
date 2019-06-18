Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 098D34A1B7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA856E16D;
	Tue, 18 Jun 2019 13:08:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBAA46E16D
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:08:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16940620-1500050 for multiple; Tue, 18 Jun 2019 14:08:39 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
 <20190618130345.6135-24-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190618130345.6135-24-tvrtko.ursulin@linux.intel.com>
Message-ID: <156086332004.31375.10376621989945295169@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 14:08:40 +0100
Subject: Re: [Intel-gfx] [PATCH 23/33] drm/i915: Convert
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOCAxNDowMzozNSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEhhdmluZyBpbnRyb2R1
Y2VkIHN0cnVjdCBpbnRlbF9ndCAobmFtZWQgdGhlIGFub255bW91cyBzdHJ1Y3R1cmUgaW4gaTkx
NSkKPiB3ZSBjYW4gc3RhcnQgdXNpbmcgaXQgdG8gY29tcGFydG1lbnRhbGl6ZSBvdXIgY29kZSBi
ZXR0ZXIuIEl0IG1ha2VzIG1vcmUKPiBzZW5zZSBsb2dpY2FsbHkgdG8gaGF2ZSB0aGUgY29kZSBp
bnRlcm5hbGx5IGxpa2UgdGhpcyBhbmQgaXQgd2lsbCBhbHNvCj4gaGVscCB3aXRoIGZ1dHVyZSBz
cGxpdCBiZXR3ZWVuIGd0IGFuZCBkaXNwbGF5IGluIGk5MTUuCj4gCj4gdjI6Cj4gICogS2VlcCBn
Z3R0IGZsdXNoIGJlZm9yZSBmYiBvYmogZmx1c2guIChDaHJpcykKPiAKPiB2MzoKPiAgKiBGaXgg
cmVmYWN0b3JpbmcgZmFpbC4KPiAgKiBBbHdheXMgZmx1c2ggZ2d0dCB3cml0ZXMuIChDaHJpcykK
PiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMg
ICAgfCAgNyArKy0tCj4gIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4u
YyAgICB8ICAzICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAg
ICAgICB8IDQxICsrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuaCAgICAgICAgICAgIHwgIDIgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAgMiAtCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgICAgICAgICAgICAgICB8IDQwIC0tLS0tLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAgICAgfCAgMyArLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCAgMiArLQo+ICA4IGZpbGVzIGNo
YW5nZWQsIDUyIGluc2VydGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiBpbmRleCAyNzJjZTMwY2UxZDMuLmY5
NGM4YjJkODVkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMKPiBAQCAtMjMsNyArMjMsNyBAQAo+ICAgKi8KPiAgCj4gICNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX2Zyb250YnVmZmVyLmgiCj4gLQo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiAg
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gICNpbmNsdWRlICJpOTE1X2dlbV9jbGZsdXNoLmgiCj4g
ICNpbmNsdWRlICJpOTE1X2dlbV9jb250ZXh0LmgiCj4gQEAgLTM2OCw3ICszNjgsNiBAQCB2b2lk
Cj4gIGk5MTVfZ2VtX29iamVjdF9mbHVzaF93cml0ZV9kb21haW4oc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2ln
bmVkIGludCBmbHVzaF9kb21haW5zKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOwo+ICAgICAgICAgc3RydWN0
IGk5MTVfdm1hICp2bWE7Cj4gIAo+ICAgICAgICAgYXNzZXJ0X29iamVjdF9oZWxkKG9iaik7Cj4g
QEAgLTM3OCw3ICszNzcsOCBAQCBpOTE1X2dlbV9vYmplY3RfZmx1c2hfd3JpdGVfZG9tYWluKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAo+ICAgICAgICAgc3dpdGNoIChvYmot
PndyaXRlX2RvbWFpbikgewo+ICAgICAgICAgY2FzZSBJOTE1X0dFTV9ET01BSU5fR1RUOgo+IC0g
ICAgICAgICAgICAgICBpOTE1X2dlbV9mbHVzaF9nZ3R0X3dyaXRlcyhkZXZfcHJpdik7Cj4gKyAg
ICAgICAgICAgICAgIGZvcl9lYWNoX2dndHRfdm1hKHZtYSwgb2JqKQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHZtYS0+dm0tPmd0KTsKClRoZSBy
ZXBldGl0aW9uIHN0aWxsIGJvdGhlcnMgbWUsIGJ1dApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
