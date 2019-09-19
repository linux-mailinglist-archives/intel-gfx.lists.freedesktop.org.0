Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52599B77B3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 12:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E08B6F4F7;
	Thu, 19 Sep 2019 10:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D202C6F4F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 10:48:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 03:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="199355900"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 19 Sep 2019 03:48:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190918145453.8800-1-chris@chris-wilson.co.uk>
 <20190918145453.8800-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <922e80d7-0c43-09b1-5a36-a3159153f967@linux.intel.com>
Date: Thu, 19 Sep 2019 11:48:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918145453.8800-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Protect timeline->hwsp
 dereferencing
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

Ck9uIDE4LzA5LzIwMTkgMTU6NTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyBub3Qgb25seSBp
cyB0aGUgc2lnbmFsLT50aW1lbGluZSB2b2xhdGlsZSwgc28gd2lsbCBiZSBhY3F1aXJpbmcgdGhl
Cj4gdGltZWxpbmUncyBIV1NQLiBXZSBtdXN0IGZpcnN0IGNhcmVmdWxseSBhY3F1aXJlIHRoZSB0
aW1lbGluZSBmcm9tIHRoZQo+IHNpZ25hbGluZyByZXF1ZXN0IGFuZCB0aGVuIGxvY2sgdGhlIHRp
bWVsaW5lLiBXaXRoIHRoZSByZW1vdmFsIG9mIHRoZQo+IHN0cnVjdF9tdXRleCBzZXJpYWxpc2F0
aW9uIG9mIHJlcXVlc3QgY29uc3RydWN0aW9uLCB3ZSBjYW4gaGF2ZSBtdWx0aXBsZQo+IHRpbWVs
aW5lcyBhY3RpdmUgYXQgb25jZSwgYW5kIHNvIHdlIG11c3QgYXZvaWQgdXNpbmcgdGhlIG5lc3Rl
ZCBtdXRleAo+IGxvY2sgYXMgaXQgaXMgcXVpdGUgcG9zc2libGUgZm9yIGJvdGggdGltZWxpbmVz
IHRvIGJlIGVzdGFibGlzaGluZwo+IHNlbWFwaG9yZXMgb24gdGhlIG90aGVyIGFuZCBzbyBkZWFk
bG9jay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMg
fCAzMiArKysrKysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfdGltZWxpbmUuYwo+IGluZGV4IDJjZTgxYmRmN2Y4Ni4uN2IxZDQwOThkZDJlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCj4gQEAgLTUwMCwxNyArNTAw
LDMyIEBAIGludCBpbnRlbF90aW1lbGluZV9yZWFkX2h3c3Aoc3RydWN0IGk5MTVfcmVxdWVzdCAq
ZnJvbSwKPiAgIAkJCSAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sCj4gICAJCQkgICAgIHUz
MiAqaHdzcCkKPiAgIHsKPiAtCXN0cnVjdCBpbnRlbF90aW1lbGluZV9jYWNoZWxpbmUgKmNsID0g
ZnJvbS0+aHdzcF9jYWNoZWxpbmU7Cj4gLQlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsID0gZnJv
bS0+dGltZWxpbmU7CgpJIHRoaW5rIHRoaXMgc2hvdWxkIGhhdmUgYmVlbiBhbm5vdGF0ZWQgaW4g
Mi80LgoKPiArCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4gICAJaW50IGVycjsKPiAgIAo+
ICsJcmN1X3JlYWRfbG9jaygpOwo+ICsJdGwgPSByY3VfZGVyZWZlcmVuY2UoZnJvbS0+dGltZWxp
bmUpOwo+ICsJaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoZnJvbSkgfHwgIWtyZWZfZ2V0X3Vu
bGVzc196ZXJvKCZ0bC0+a3JlZikpCj4gKwkJdGwgPSBOVUxMOwo+ICsJcmN1X3JlYWRfdW5sb2Nr
KCk7Cj4gKwlpZiAoIXRsKSAvKiBhbHJlYWR5IGNvbXBsZXRlZCAqLwo+ICsJCXJldHVybiAxOwo+
ICsKPiAgIAlHRU1fQlVHX09OKHJjdV9hY2Nlc3NfcG9pbnRlcih0by0+dGltZWxpbmUpID09IHRs
KTsKPiAgIAo+IC0JbXV0ZXhfbG9ja19uZXN0ZWQoJnRsLT5tdXRleCwgU0lOR0xFX0RFUFRIX05F
U1RJTkcpOwo+IC0JZXJyID0gaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChmcm9tKTsKPiAtCWlmICgh
ZXJyKQo+ICsJZXJyID0gLUVCVVNZOwo+ICsJaWYgKG11dGV4X3RyeWxvY2soJnRsLT5tdXRleCkp
IHsKPiArCQlzdHJ1Y3QgaW50ZWxfdGltZWxpbmVfY2FjaGVsaW5lICpjbCA9IGZyb20tPmh3c3Bf
Y2FjaGVsaW5lOwo+ICsKPiArCQlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChmcm9tKSkgewo+
ICsJCQllcnIgPSAxOwo+ICsJCQlnb3RvIHVubG9jazsKPiArCQl9Cj4gKwo+ICAgCQllcnIgPSBj
YWNoZWxpbmVfcmVmKGNsLCB0byk7Cj4gLQlpZiAoIWVycikgewo+ICsJCWlmIChlcnIpCj4gKwkJ
CWdvdG8gdW5sb2NrOwo+ICsKPiAgIAkJaWYgKGxpa2VseShjbCA9PSB0bC0+aHdzcF9jYWNoZWxp
bmUpKSB7Cj4gICAJCQkqaHdzcCA9IHRsLT5od3NwX29mZnNldDsKPiAgIAkJfSBlbHNlIHsgLyog
YWNyb3NzIGEgc2Vxbm8gd3JhcCwgcmVjb3ZlciB0aGUgb3JpZ2luYWwgb2Zmc2V0ICovCj4gQEAg
LTUxOCw4ICs1MzMsMTEgQEAgaW50IGludGVsX3RpbWVsaW5lX3JlYWRfaHdzcChzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpmcm9tLAo+ICAgCQkJCXB0cl91bm1hc2tfYml0cyhjbC0+dmFkZHIsIENBQ0hF
TElORV9CSVRTKSAqCj4gICAJCQkJQ0FDSEVMSU5FX0JZVEVTOwo+ICAgCQl9Cj4gKwo+ICt1bmxv
Y2s6Cj4gKwkJbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0ZXgpOwo+ICAgCX0KPiAtCW11dGV4X3VubG9j
aygmdGwtPm11dGV4KTsKPiArCWludGVsX3RpbWVsaW5lX3B1dCh0bCk7Cj4gICAKPiAgIAlyZXR1
cm4gZXJyOwo+ICAgfQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
