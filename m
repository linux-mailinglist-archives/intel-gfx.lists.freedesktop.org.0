Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0FF16204
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2279189F6F;
	Tue,  7 May 2019 10:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3366E89F6F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:34:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:34:29 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:34:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503135229.32039-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <822fe5cf-ab26-2b01-dc14-e5b6b5915a72@linux.intel.com>
Date: Tue, 7 May 2019 11:34:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503135229.32039-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check the target has not already
 completed before waiting on it
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

Ck9uIDAzLzA1LzIwMTkgMTQ6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIHdlIHdhbnQg
dG8gd2FpdCBmb3IgYSByZXF1ZXN0IHRvIGJlIGV4ZWN1dGVkLCB3ZSBmaXJzdCBhc2sgaWYgaXQg
aXMKPiBub3Qgb24gdGhlIEdQVSAgYXMgaWYgaXQncyBvbiB0aGUgZ3B1LCB0aGVyZSdzIG5vIG5l
ZWQgdG8gd2FpdC4gSG93ZXZlciwKPiB3ZSBoYXZlIHRvIHRha2UgaW50byBhY2NvdW50IHRoYXQg
YSByZXF1ZXN0IG1heSBub3QgYmUgb24gdGhlIEdQVQo+IGJlY2F1c2UgaXQgaGFzIGFscmVhZHkg
Y29tcGxldGVkIQo+IAo+IFRoZSB3aW5kb3cgaXMgc21hbGwgZHVlIHRvIHRoZSBudW1lcm91cyBw
cmVjZWRpbmcgY2hlY2tzIHRoYXQgb3VyIHRhcmdldAo+IGhhcyBub3QgeWV0IGNvbXBsZXRlZCwg
eWV0IHRoZXJlIGlzIHN0aWxsIGEgdmVyeSBzbWFsbCB3aW5kb3cgYWNyb3NzIHRoZQo+IGttYWxs
b2MuCj4gCj4gRml4ZXM6IGU4ODYxOTY0Njk3MSAoImRybS9pOTE1OiBVc2UgSFcgc2VtYXBob3Jl
cyBmb3IgaW50ZXItZW5naW5lIHN5bmNocm9uaXNhdGlvbiBvbiBnZW44KyIpCj4gVGVzdGNhc2U6
IGlndC9nZW1fY29uY3VycmVudF9ibGl0Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3Qu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5kZXggZDA2YzQ1MzA1
YjAzLi42ZGJmOGRjNWNkNmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZXF1ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+
IEBAIC0zNzMsNyArMzczLDcgQEAgaTkxNV9yZXF1ZXN0X2F3YWl0X2V4ZWN1dGlvbihzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwKPiAgIAlpbml0X2lycV93b3JrKCZjYi0+d29yaywgaXJxX2V4ZWN1
dGVfY2IpOwo+ICAgCj4gICAJc3Bpbl9sb2NrX2lycSgmc2lnbmFsLT5sb2NrKTsKPiAtCWlmIChp
OTE1X3JlcXVlc3RfaXNfYWN0aXZlKHNpZ25hbCkpIHsKPiArCWlmIChpOTE1X3JlcXVlc3RfaXNf
YWN0aXZlKHNpZ25hbCkgfHwgaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChzaWduYWwpKSB7Cj4gICAJ
CWk5MTVfc3dfZmVuY2VfY29tcGxldGUoY2ItPmZlbmNlKTsKPiAgIAkJa21lbV9jYWNoZV9mcmVl
KGdsb2JhbC5zbGFiX2V4ZWN1dGVfY2JzLCBjYik7Cj4gICAJfSBlbHNlIHsKPiAKClJldmlld2Vk
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywK
ClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
