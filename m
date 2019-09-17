Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18208B556B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 20:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B256E048;
	Tue, 17 Sep 2019 18:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2247C6E048
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 18:36:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 11:36:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="201884787"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.254.107.190])
 ([10.254.107.190])
 by fmsmga001.fm.intel.com with ESMTP; 17 Sep 2019 11:36:36 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
 <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a714318c-4fb2-763c-a5a5-8da2e64330cd@intel.com>
Date: Tue, 17 Sep 2019 11:36:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix SFC reset flow
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
Cc: Owen Zhang <owen.zhang@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzE3LzIwMTkgMTI6NTcgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDktMTYgMjI6NDE6MDQpCj4+IE91ciBhc3N1bXB0
aW9uIHRoYXQgdGhlIHdlIGNhbiBhc2sgdGhlIEhXIHRvIGxvY2sgdGhlIFNGQyBldmVuIGlmIG5v
dAo+PiBjdXJyZW50bHkgaW4gdXNlIGRvZXMgbm90IG1hdGNoIHRoZSBIVyBjb21taXRtZW50LiBU
aGUgZXhwZWN0YXRpb24gZnJvbQo+PiB0aGUgSFcgaXMgdGhhdCBTVyB3aWxsIG5vdCB0cnkgdG8g
bG9jayB0aGUgU0ZDIGlmIHRoZSBlbmdpbmUgaXMgbm90Cj4+IHVzaW5nIGl0IGFuZCBpZiB3ZSBk
byB0aGF0IHRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQ7IG9uIElDTCB0aGUgSFcKPj4gZW5kcyB1
cCB0byByZXR1cm5pbmcgdGhlIGFjayBhbmQgaWdub3Jpbmcgb3VyIGxvY2sgcmVxdWVzdCwgYnV0
IHRoaXMgaXMKPj4gbm90IGd1YXJhbnRlZWQgYW5kIHdlIHNob3VsZG4ndCBleHBlY3QgaXQgZ29p
bmcgZm9yd2FyZC4KPj4KPj4gUmVwb3J0ZWQtYnk6IE93ZW4gWmhhbmcgPG93ZW4uemhhbmdAaW50
ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+IEBAIC0zNjYsMTAgKzM2OCwxMyBAQCBz
dGF0aWMgdTMyIGdlbjExX2xvY2tfc2ZjKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2ZjX2ZvcmNlZF9s
b2NrX2Fja19iaXQsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHNmY19mb3JjZWRfbG9ja19hY2tfYml0LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAxMDAwLCAwLCBOVUxMKSkgewo+PiAtICAgICAgICAgICAgICAgRFJNX0RF
QlVHX0RSSVZFUigiV2FpdCBmb3IgU0ZDIGZvcmNlZCBsb2NrIGFjayBmYWlsZWRcbiIpOwo+PiAr
ICAgICAgICAgICAgICAgLyogZGlkIHdlIHJhY2UgdGhlIHVubG9jaz8gKi8KPj4gKyAgICAgICAg
ICAgICAgIGlmIChpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIHNmY191c2FnZSkgJiBzZmNf
dXNhZ2VfYml0KQo+PiArICAgICAgICAgICAgICAgICAgICAgICBEUk1fRVJST1IoIldhaXQgZm9y
IFNGQyBmb3JjZWQgbG9jayBhY2sgZmFpbGVkXG4iKTsKPiBXaGF0J3Mgb3VyIHBsYW4gaWYgdGhp
cyAqRVJST1IqIGlzIGV2ZXIgdHJpZ2dlcmVkPwo+Cj4gSWYgaXQgcmVtYWlucyBkbyBub3RoaW5n
IGFuZCBjaGVjayB0aGUgbG9ncyBvbiBkZWF0aCwgdGhlbiBpdCByZW1haW5zCj4ganVzdCBhIGRl
YnVnIHNwbGF0LiBJZiB0aGVyZSBpcyBhIHBsYW4gdG8gYWN0dWFsbHkgZG8gc29tZXRoaW5nIHRv
Cj4gaGFuZGxlIHRoZSBlcnJvciwgZG8gaXQhCj4gLUNocmlzCgpBRkFJVSB0aGUgb25seSB0aGlu
ZyB3ZSBjYW4gZG8gaXMgZXNjYWxhdGUgdG8gZnVsbCBncHUgcmVzZXQuIEhvd2V2ZXIsIAp0aGUg
cHJvYmFiaWxpdHkgb2YgdGhpcyBmYWlsaW5nIHNob3VsZCBiZSBuZXh0IHRvIG5vbi1leGlzdGVu
dCAob25seSBvbmUgCmVuZ2luZSBjYW4gdXNlIHRoZSBTRkMgYXQgYW55IHRpbWUgc28gdGhlcmUg
aXMgbm8gbG9jayBjb250ZW50aW9uKSwgc28gCkknbSBub3QgY29udmluY2VkIHRoZSBmYWxsYmFj
ayBpcyB3b3J0aCB0aGUgZWZmb3J0LiBUaGUgZXJyb3IgaXMgc3RpbGwgCnVzZWZ1bCBJTU8gdG8g
Y2F0Y2ggdW5leHBlY3RlZCBiZWhhdmlvciBvbiBuZXcgcGxhdGZvcm1zLCBhcyBpdCBoYXBwZW5l
ZCAKaW4gdGhpcyBjYXNlIHdpdGggdGhlIG1lZGlhIHRlYW0gcmVwb3J0aW5nIHNlZWluZyB0aGlz
IG1lc3NhZ2Ugb24gZ2VuMTIgCndpdGggdGhlIHByZXZpb3VzIGJlaGF2aW9yLiBUaGlzIHNhaWQs
IEknbSBoYXBweSB0byBhZGQgdGhlIGV4dHJhIGxvZ2ljIAppZiB5b3UgYmVsaWV2ZSBpdCBpcyB3
b3J0aCBpdC4KCkRhbmllbGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
