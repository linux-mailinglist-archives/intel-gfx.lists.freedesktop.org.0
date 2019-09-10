Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A622AE1BC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 02:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E07E892D8;
	Tue, 10 Sep 2019 00:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F6B892D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 00:59:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 17:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="183992706"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2019 17:59:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190909225536.7037-2-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <80c54575-7622-b75d-382d-924edf05eb02@intel.com>
Date: Mon, 9 Sep 2019 17:59:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909225536.7037-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Only unwedge if we can
 reset first
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

CgpPbiA5LzkvMTkgMzo1NSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFVud2VkZ2luZyB0aGUg
R1BVIHJlcXVpcmVzIGEgc3VjY2Vzc2Z1bCBHUFUgcmVzZXQgYmVmb3JlIHdlIHJlc3RvcmUgdGhl
Cj4gZGVmYXVsdCBzdWJtaXNzaW9uLCBvciBlbHNlIHdlIG1heSBzZWUgcmVzaWR1YWwgY29udGV4
dCBzd2l0Y2ggZXZlbnRzCj4gdGhhdCB3ZSB3ZXJlIG5vdCBleHBlY3RpbmcuCj4gCj4gUmVwb3J0
ZWQtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXgu
aW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYyB8IDcgKysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+IGlu
ZGV4IGZlNTcyOTZiNzkwYy4uNTI0MjQ5NmE4OTNhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jCj4gQEAgLTgwOSw2ICs4MDksNyBAQCBzdGF0aWMgYm9vbCBfX2ludGVs
X2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAgCXN0cnVjdCBpbnRlbF9n
dF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZndC0+dGltZWxpbmVzOwo+ICAgCXN0cnVjdCBpbnRl
bF90aW1lbGluZSAqdGw7Cj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPiArCWJvb2wgb2s7Cj4g
ICAKPiAgIAlpZiAoIXRlc3RfYml0KEk5MTVfV0VER0VELCAmZ3QtPnJlc2V0LmZsYWdzKSkKPiAg
IAkJcmV0dXJuIHRydWU7Cj4gQEAgLTg1NCw3ICs4NTUsMTEgQEAgc3RhdGljIGJvb2wgX19pbnRl
bF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgIAl9Cj4gICAJc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gICAKPiAtCWludGVs
X2d0X3Nhbml0aXplKGd0LCBmYWxzZSk7Cj4gKwlvayA9IGZhbHNlOwo+ICsJaWYgKCFyZXNldF9j
bG9iYmVyc19kaXNwbGF5KGd0LT5pOTE1KSkKPiArCQlvayA9IF9faW50ZWxfZ3RfcmVzZXQoZ3Qs
IEFMTF9FTkdJTkVTKSA9PSAwOwoKT2YgdGhlIHRoaW5nIHdlIGhhZCBpbiB0aGUgZ3Rfc2FuaXRp
emUsIHdlJ3JlIG9rIHNraXBwaW5nIHRoZSAKdWNfc2FuaXRpemUoKSBiZWNhdXNlIHdlIHRha2Ug
Y2FyZSBvZiB0aGF0IGR1cmluZyB3ZWRnZSAoZnJvbSAKaW50ZWxfdWNfcmVzZXRfcHJlcGFyZSks
IGJ1dCB3aGF0IGFib3V0IHRoZSBsb29wIG9mIApfX2ludGVsX2VuZ2luZV9yZXNldCgpPyBJcyB0
aGF0IHNhZmUgdG8gc2tpcCBoZXJlPwoKQXBhcnQgZnJvbSB0aGF0LCB0aGUgcGF0Y2ggTEdUTS4g
V29ydGggbm90aW5nIHRoYXQgd2l0aCB0aGlzIGNoYW5nZSBhIApzdWNjZXNzZnVsIHJlc2V0IGlz
IHJlcXVpcmVkIHRvIHVud2VkZ2UgZXZlbiBhZnRlciBhIHN1c3BlbmQvcmVzdW1lIApjeWNsZSAo
aW4gZ2VtX3Nhbml0aXplKSwgd2hpY2ggaXMgYSBnb29kIHRoaW5nIElNTy4KCkRhbmllbGUKCj4g
KwlpZiAoIW9rKQo+ICsJCXJldHVybiBmYWxzZTsKPiAgIAo+ICAgCS8qCj4gICAJICogVW5kbyBu
b3Bfc3VibWl0X3JlcXVlc3QuIFdlIHByZXZlbnQgYWxsIG5ldyBpOTE1IHJlcXVlc3RzIGZyb20K
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
