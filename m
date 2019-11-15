Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8F8FE251
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 17:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA35F6E940;
	Fri, 15 Nov 2019 16:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44DD6E940
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 16:09:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 08:09:05 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199240476"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 08:09:04 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191115150841.880349-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <582d90ed-3f02-5a7b-1c40-8c6b1333841b@linux.intel.com>
Date: Fri, 15 Nov 2019 16:09:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115150841.880349-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Flush retire.work timer
 object on unload
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

Ck9uIDE1LzExLzIwMTkgMTU6MDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBuZWVkIHRvIHdh
aXQgdW50aWwgdGhlIHRpbWVyIG9iamVjdCBpcyBtYXJrZWQgYXMgZGVhY3RpdmF0ZWQgYmVmb3Jl
Cj4gdW5sb2FkaW5nLCBzbyBmb2xsb3cgdXAgb3VyIGdlbnRsZSBjYW5jZWxfZGVsYXllZF93b3Jr
KCkgd2l0aCB0aGUKPiBzeW5jaHJvbm91cyB2YXJpYW50IHRvIGVuc3VyZSBpdCBpcyBmbHVzaGVk
IG9mZiBhIHJlbW90ZSBjcHUgYmVmb3JlIHdlCj4gbWFyayB0aGUgbWVtb3J5IGFzIGZyZWVkLgo+
IAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTE5OTQKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgfCAx
ICsKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgfCA2ICsr
KysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaCB8IDEg
Kwo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMKPiBpbmRleCBjMzliMjFjOGQzMjguLmI1YTliODdlNGVjOSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+IEBAIC0zOTcsNiArMzk3LDcgQEAgdm9pZCBp
bnRlbF9ndF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAgdm9pZCBpbnRl
bF9ndF9kcml2ZXJfbGF0ZV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICB7Cj4gICAJ
aW50ZWxfdWNfZHJpdmVyX2xhdGVfcmVsZWFzZSgmZ3QtPnVjKTsKPiArCWludGVsX2d0X2Zpbmlf
cmVxdWVzdHMoZ3QpOwo+ICAgCWludGVsX2d0X2ZpbmlfcmVzZXQoZ3QpOwo+ICAgCWludGVsX2d0
X2ZpbmlfdGltZWxpbmVzKGd0KTsKPiAgIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3JlcXVlc3RzLmMKPiBpbmRleCBjY2JkZGRkYmJkNTIuLmE3OWU2ZWZiMzFhMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwo+IEBAIC0x
MzAsMyArMTMwLDkgQEAgdm9pZCBpbnRlbF9ndF91bnBhcmtfcmVxdWVzdHMoc3RydWN0IGludGVs
X2d0ICpndCkKPiAgIAlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJmd0LT5yZXF1ZXN0cy5yZXRpcmVf
d29yaywKPiAgIAkJCSAgICAgIHJvdW5kX2ppZmZpZXNfdXBfcmVsYXRpdmUoSFopKTsKPiAgIH0K
PiArCj4gK3ZvaWQgaW50ZWxfZ3RfZmluaV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+
ICt7Cj4gKwkvKiBXYWl0IHVudGlsIHRoZSB3b3JrIGlzIG1hcmtlZCBhcyBmaW5pc2hlZCBiZWZv
cmUgdW5sb2FkaW5nISAqLwo+ICsJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZndC0+cmVxdWVz
dHMucmV0aXJlX3dvcmspOwo+ICt9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3JlcXVlc3RzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9yZXF1ZXN0cy5oCj4gaW5kZXggYmQzMWNiY2U0N2UwLi5mZGU1NDY0MjRjNjMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaAo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmgKPiBAQCAtMjAsNSAr
MjAsNiBAQCBpbnQgaW50ZWxfZ3Rfd2FpdF9mb3JfaWRsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBs
b25nIHRpbWVvdXQpOwo+ICAgdm9pZCBpbnRlbF9ndF9pbml0X3JlcXVlc3RzKHN0cnVjdCBpbnRl
bF9ndCAqZ3QpOwo+ICAgdm9pZCBpbnRlbF9ndF9wYXJrX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9n
dCAqZ3QpOwo+ICAgdm9pZCBpbnRlbF9ndF91bnBhcmtfcmVxdWVzdHMoc3RydWN0IGludGVsX2d0
ICpndCk7Cj4gK3ZvaWQgaW50ZWxfZ3RfZmluaV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KTsKPiAgIAo+ICAgI2VuZGlmIC8qIElOVEVMX0dUX1JFUVVFU1RTX0ggKi8KPiAKClNvdW5kcyBw
bGF1c2libGUuIFZlcmlmaWVkIGZpeCBvciBzcGVjdWxhdGl2ZT8KClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
