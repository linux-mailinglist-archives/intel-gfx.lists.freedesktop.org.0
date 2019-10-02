Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9DAC4A05
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 10:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB5A6E919;
	Wed,  2 Oct 2019 08:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18A1C6E917
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 08:54:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 01:54:14 -0700
X-IronPort-AV: E=Sophos;i="5.64,573,1559545200"; d="scan'208";a="190880814"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 02 Oct 2019 01:54:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
 <20191001172624.26479-2-ramalingam.c@intel.com>
 <156995140060.1880.8316101890209937172@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <10417c78-1fc4-25c1-3539-393d9d65e975@linux.intel.com>
Date: Wed, 2 Oct 2019 09:54:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156995140060.1880.8316101890209937172@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Skip Wa_1604555607
 verification at A0
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

Ck9uIDAxLzEwLzIwMTkgMTg6MzYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFJhbWFs
aW5nYW0gQyAoMjAxOS0xMC0wMSAxODoyNjoyNCkKPj4gUmVhZCBvZiBGRl9NT0RFMiByZWdpc3Rl
ciBpcyBicm9rZW4gYXQgVEdMIEEwLiBIZW5jZSB2ZXJpZmljYXRpb24gb2YgdGhlCj4+IFdhXzE2
MDQ1NTU2MDcgYXNzb2NpYXRlZCB0byB0aGF0IHJlZ2lzdGVyIG5lZWRzIHRvIGJlIHNraXBwZWQu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNv
bT4KPj4gY2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+
Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
fCAyMiArKysrKysrKysrKysrKysrKysrKy0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgIHwgIDYgKysrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyNyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiBpbmRleCA0MDQ5Yjg3NjQ5MmEuLmM2M2Q4YzNkZjRk
MyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4+IEBAIC05OTEsMTAgKzk5MSwyMSBAQCB3YV9saXN0X2FwcGx5KHN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSwgY29uc3Qgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+PiAgIAo+PiAgICAg
ICAgICBmb3IgKGkgPSAwLCB3YSA9IHdhbC0+bGlzdDsgaSA8IHdhbC0+Y291bnQ7IGkrKywgd2Er
Kykgewo+PiAgICAgICAgICAgICAgICAgIGludGVsX3VuY29yZV9ybXdfZncodW5jb3JlLCB3YS0+
cmVnLCB3YS0+bWFzaywgd2EtPnZhbCk7Cj4+IC0gICAgICAgICAgICAgICBpZiAoSVNfRU5BQkxF
RChDT05GSUdfRFJNX0k5MTVfREVCVUdfR0VNKSkKPj4gKyAgICAgICAgICAgICAgIGlmIChJU19F
TkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19HRU0pKSB7Cj4+ICsKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgLyoKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICogUmVhZCBvZiBGRl9N
T0RFMiBpcyBicm9rZW4gb24gVEdMIEEwLgo+PiArICAgICAgICAgICAgICAgICAgICAgICAgKiBI
ZW5jZSBza2lwIHRoZSBjb3JyZXNwb25kaW5nIFdBIHZlcmlmaWNhdGlvbi4KPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICovCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19UR0xf
UkVWSUQodW5jb3JlLT5pOTE1LCAwLCBUR0xfUkVWSURfQTApICYmCj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpOTE1X21taW9fcmVnX2VxdWFsKHdhLT5yZWcsIEZGX01PREUyKSAmJgo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgd2EtPm1hc2sgPT0gRkZfTU9ERTJfVERTX1RJ
TUVSX01BU0spCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4g
Cj4gVGhpcyBkb2VzIG5vdCBzY2FsZSB2ZXJ5IHdlbGwuIFlvdSB3aWxsIG5vdGUgdGhhdCB3YV92
ZXJpZnkoKSBhbHJlYWR5Cj4gaW5jbHVkZXMgYSBkZXRhaWwgb24gd2hpY2ggYml0cyBjYW4gYmUg
cmVhZCBiYWNrIGZyb20gSFcuCgpGb3IgdGhlIHJlY29yZCBDaHJpcyBpcyByZWZlcnJpbmcgdG8g
d2EtPnJlYWQgd2hpY2ggeW91IGNhbiBzZXQgdG8gemVybyAKZm9yIHRoaXMgcGFydGljdWxhciB3
YSBhbmQgdGhpcyBzaG91bGQgYXV0b21hZ2ljYWxseSB3b3JrLgoKVGhlbiBpbiBJR1QvZ2VtX3dv
cmthcm91bmRzLmMgeW91IGFsc28gaGF2ZSBleGlzdGluZyBmcmFtZXdvcmsgZm9yIAptYXJraW5n
IHJlZ2lzdGVycyBhcyB3cml0ZS1vbmx5LiBJdCBtYXkgbmVlZCBleHRlbmRpbmcgdG8gYWNjb3Vu
dCBmb3IgCnN0ZXBwaW5ncyBhbmQgc28uCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
