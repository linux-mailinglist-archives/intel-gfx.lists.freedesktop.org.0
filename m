Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6C7BDB8E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 11:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2363C6EB64;
	Wed, 25 Sep 2019 09:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0588C6EB64
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 09:55:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 02:55:50 -0700
X-IronPort-AV: E=Sophos;i="5.64,547,1559545200"; d="scan'208";a="179768316"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 02:55:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-21-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c6608574-f6ea-69f6-c198-c21dbeac6940@linux.intel.com>
Date: Wed, 25 Sep 2019 10:55:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902040303.14195-21-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 21/21] drm/i915: Move global activity
 tracking from GEM to GT
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

Ck9uIDAyLzA5LzIwMTkgMDU6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyBvdXIgZ2xvYmFs
IHVucGFyay9wYXJrIGtlZXAgdHJhY2sgb2YgdGhlIG51bWJlciBvZiBhY3RpdmUgdXNlcnMsIHdl
Cj4gY2FuIHNpbXBseSBtb3ZlIHRoZSBhY2NvdW50aW5nIGZyb20gdGhlIEdFTSBsYXllciB0byB0
aGUgYmFzZSBHVCBsYXllci4KPiBJdCB3YXMgcGxhY2VkIG9yaWdpbmFsbHkgaW5zaWRlIEdFTSB0
byBiZW5lZml0IGZyb20gdGhlIDEwMG1zIGV4dHJhCj4gZGVsYXkgb24gaWRsZW5lc3MsIGJ1dCB0
aGF0IGhhcyBiZWVuIGVsaW1pbmF0ZWQgYW5kIG5vdyB0aGVyZSBpcyBubwo+IHN1YnN0YW50aXZl
IGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgbGF5ZXJzLiBJbiBtb3ZpbmcgaXQsIHdlIG1vdmUgYW5v
dGhlcgo+IHBpZWNlIG9mIHRoZSBwdXp6bGUgb3V0IGZyb20gdW5kZXJuZWF0aCBzdHJ1Y3RfbXV0
ZXguCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDExICstLS0t
LS0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jICB8ICA1ICsr
KysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiBpbmRleCBiNDU5NzE5
Mzg2ZTMuLjU4MTZiZGI1YmZhMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCj4gQEAgLTEwLDE0ICsxMCw2IEBACj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcmVx
dWVzdHMuaCIKPiAgIAo+ICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gLSNpbmNsdWRlICJpOTE1
X2dsb2JhbHMuaCIKPiAtCj4gLXN0YXRpYyB2b2lkIGk5MTVfZ2VtX3Bhcmsoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gLXsKPiAtCWk5MTVfdm1hX3BhcmtlZChpOTE1KTsKPiAtCj4g
LQlpOTE1X2dsb2JhbHNfcGFyaygpOwo+IC19Cj4gICAKPiAgIHN0YXRpYyBpbnQgcG1fbm90aWZp
ZXIoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKPiAgIAkJICAgICAgIHVuc2lnbmVkIGxvbmcg
YWN0aW9uLAo+IEBAIC0yOCwxMSArMjAsMTAgQEAgc3RhdGljIGludCBwbV9ub3RpZmllcihzdHJ1
Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAo+ICAgCj4gICAJc3dpdGNoIChhY3Rpb24pIHsKPiAgIAlj
YXNlIElOVEVMX0dUX1VOUEFSSzoKPiAtCQlpOTE1X2dsb2JhbHNfdW5wYXJrKCk7Cj4gICAJCWJy
ZWFrOwo+ICAgCj4gICAJY2FzZSBJTlRFTF9HVF9QQVJLOgo+IC0JCWk5MTVfZ2VtX3BhcmsoaTkx
NSk7Cj4gKwkJaTkxNV92bWFfcGFya2VkKGk5MTUpOwo+ICAgCQlicmVhazsKPiAgIAl9Cj4gICAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBpbmRleCBmYTk2ZTFhZDdiZDgu
LmQzMWFkMmQ2MzE3NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwo+
IEBAIC01LDYgKzUsNyBAQAo+ICAgICovCj4gICAKPiAgICNpbmNsdWRlICJpOTE1X2Rydi5oIgo+
ICsjaW5jbHVkZSAiaTkxNV9nbG9iYWxzLmgiCj4gICAjaW5jbHVkZSAiaTkxNV9wYXJhbXMuaCIK
PiAgICNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfZW5naW5l
X3BtLmgiCj4gQEAgLTI2LDYgKzI3LDggQEAgc3RhdGljIGludCBfX2d0X3VucGFyayhzdHJ1Y3Qg
aW50ZWxfd2FrZXJlZiAqd2YpCj4gICAKPiAgIAlHRU1fVFJBQ0UoIlxuIik7Cj4gICAKPiArCWk5
MTVfZ2xvYmFsc191bnBhcmsoKTsKPiArCj4gICAJLyoKPiAgIAkgKiBJdCBzZWVtcyB0aGF0IHRo
ZSBETUMgbGlrZXMgdG8gdHJhbnNpdGlvbiBiZXR3ZWVuIHRoZSBEQyBzdGF0ZXMgYSBsb3QKPiAg
IAkgKiB3aGVuIHRoZXJlIGFyZSBubyBjb25uZWN0ZWQgZGlzcGxheXMgKG5vIGFjdGl2ZSBwb3dl
ciBkb21haW5zKSBkdXJpbmcKPiBAQCAtNzcsNiArODAsOCBAQCBzdGF0aWMgaW50IF9fZ3RfcGFy
ayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCj4gICAJR0VNX0JVR19PTighd2FrZXJlZik7Cj4g
ICAJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgUE9XRVJfRE9NQUlOX0dUX0lSUSwgd2Fr
ZXJlZik7Cj4gICAKPiArCWk5MTVfZ2xvYmFsc19wYXJrKCk7Cj4gKwo+ICAgCXJldHVybiAwOwo+
ICAgfQo+ICAgCj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
