Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C8CA806C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 12:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DD2896D8;
	Wed,  4 Sep 2019 10:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F44B896D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 10:37:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 03:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="176900006"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2019 03:37:02 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190903165227.6056-1-shashank.sharma@intel.com>
 <20190903165227.6056-2-shashank.sharma@intel.com> <87h85s4j1w.fsf@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <0a9fb241-d444-31f5-5c80-b5b4b48eb985@intel.com>
Date: Wed, 4 Sep 2019 16:07:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87h85s4j1w.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Indicate integer up-scaling
 ratios
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
Cc: Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvNC8yMDE5IDEyOjU4IFBNLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBPbiBUdWUsIDAzIFNl
cCAyMDE5LCBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+IHdyb3Rl
Ogo+PiBJZiB0aGUgdXBzY2FsaW5nIHJhdGlvIGlzIGEgY29tcGxldGUgaW50ZWdlciwgSW50ZWwg
ZGlzcGxheSBIVyBjYW4KPj4gcGlja3VwIHNwZWNpYWwgc2NhbGluZyBtb2RlLCB3aGljaCBjYW4g
cHJvZHVjZSBiZXR0ZXIgbm9uLWJsdXJyeQo+PiBvdXRwdXRzLiBUaGlzIHBhdGNoIGFkZHMgYSBj
aGVjayB0byBpbmRpY2F0ZSBpZiB0aGlzIGlzIHN1Y2ggYW4gdXBzY2FsaW5nCj4+IG9wcG9ydHVu
aXR5LCB3aGlsZSBjYWxjdWxhdGluZyB0aGUgc2NhbGVyIGNvbmZpZywgYW5kIHN0b3JlcyBpdCBp
bnRvIHNjYWxlcgo+PiBzdGF0ZS4KPj4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4+
IENjOiBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBTaWduZWQtb2Zm
LWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4+IC0tLQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDIxICsr
KysrKysrKysrKysrKysrKysKPj4gICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggICAgfCAgNyArKysrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRp
b25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4+IGluZGV4IGVlNTRkOTY1OWM5OS4uNjEzMTMwZGIzYzA1IDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBAQCAtNTM4OCw2ICs1
Mzg4LDE5IEBAIHUxNiBza2xfc2NhbGVyX2NhbGNfcGhhc2UoaW50IHN1YiwgaW50IHNjYWxlLCBi
b29sIGNocm9tYV9jb3NpdGVkKQo+PiAgICNkZWZpbmUgU0tMX01JTl9ZVVZfNDIwX1NSQ19XIDE2
Cj4+ICAgI2RlZmluZSBTS0xfTUlOX1lVVl80MjBfU1JDX0ggMTYKPj4gICAKPj4gK3N0YXRpYyBp
bmxpbmUgYm9vbAo+IFBsZWFzZSBkb24ndCBhZGQgc3VwZXJmbHVvdXMgaW5saW5lcyB0byBzdGF0
aWMgZnVuY3Rpb25zIGluIC5jCj4gZmlsZXMuIExldCB0aGUgY29tcGlsZXIgZG8gaXRzIGpvYi4K
U3VyZSwgZ290IGl0ICEKPiBCUiwKPiBKYW5pLgo+Cj4+ICtzY2FsaW5nX3JhdGlvX2ludGVnZXIo
aW50IHNyY193LCBpbnQgZHN0X3csIGludCBzcmNfaCwgaW50IGRzdF9oKQo+PiArewo+PiArCS8q
IEludGVnZXIgbW9kZSBzY2FsaW5nIGlzIGFwcGxpY2FibGUgb25seSBmb3IgdXBzY2FsaW5nIHNj
ZW5hcmlvcyAqLwo+PiArCWlmIChkc3RfdyA8IHNyY193IHx8IGRzdF9oIDwgc3JjX2gpCj4+ICsJ
CXJldHVybiBmYWxzZTsKPj4gKwo+PiArCWlmIChkc3RfdyAlIHNyY193ID09IDAgJiYgZHN0X2gg
JSBzcmNfaCA9PSAwKQo+PiArCQlyZXR1cm4gdHJ1ZTsKPj4gKwo+PiArCXJldHVybiBmYWxzZTsK
Pj4gK30KPj4gKwo+PiAgIHN0YXRpYyBpbnQKPj4gICBza2xfdXBkYXRlX3NjYWxlcihzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwgYm9vbCBmb3JjZV9kZXRhY2gsCj4+ICAgCQkg
IHVuc2lnbmVkIGludCBzY2FsZXJfdXNlciwgaW50ICpzY2FsZXJfaWQsCj4+IEBAIC01NDIyLDYg
KzU0MzUsMTQgQEAgc2tsX3VwZGF0ZV9zY2FsZXIoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsIGJvb2wgZm9yY2VfZGV0YWNoLAo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAg
CX0KPj4gICAKPj4gKwkvKgo+PiArCSAqIElmIHdlIGFyZSB1cHNjYWxpbmcsIGFuZCB0aGUgc2Nh
bGluZyByYXRpb3MgYXJlIGludGVnZXIsIHdlIGNhbgo+PiArCSAqIHBpY2sgbmVhcmVzdC1uZWln
aGJvdXIgbWV0aG9kIGluIEhXIGZvciBzY2FsaW5nLCB3aGljaCBwcm9kdWNlcwo+PiArCSAqIGJs
dXJsZXNzIG91dHB1dHMgaW4gc3VjaCBzY2VuYXJpb3MuCj4+ICsJICovCj4+ICsJaWYgKHNjYWxp
bmdfcmF0aW9faW50ZWdlcihzcmNfdywgZHN0X3csIHNyY19oLCBkc3RfaCkpCj4+ICsJCXNjYWxl
cl9zdGF0ZS0+aW50ZWdlcl9zY2FsaW5nID0gdHJ1ZTsKPj4gKwo+PiAgIAkvKgo+PiAgIAkgKiBp
ZiBwbGFuZSBpcyBiZWluZyBkaXNhYmxlZCBvciBzY2FsZXIgaXMgbm8gbW9yZSByZXF1aXJlZCBv
ciBmb3JjZSBkZXRhY2gKPj4gICAJICogIC0gZnJlZSBzY2FsZXIgYmluZGVkIHRvIHRoaXMgcGxh
bmUvY3J0Ywo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAo+PiBpbmRleCAzYzFhNWYzZTFkMjIuLjZiYjMyZmJmMzE1MyAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgKPj4gQEAgLTYxMyw2ICs2MTMsMTMgQEAgc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0
YXRlIHsKPj4gICAKPj4gICAJLyogc2NhbGVyIHVzZWQgYnkgY3J0YyBmb3IgcGFuZWwgZml0dGlu
ZyBwdXJwb3NlICovCj4+ICAgCWludCBzY2FsZXJfaWQ7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIE5l
YXJlc3QtbmVpZ2hib3IgbWV0aG9kIG9mIHVwc2NhbGluZyBnaWV2ZXMgYmx1cmxlc3Mgb3V0cHV0
IGlmCj4+ICsJICogdGhlIHVwc2NhbGluZyByYXRpbyBpcyBhIGNvbXBsZXRlIGludGVnZXIuIFRo
aXMgYm9vbCBpcyB0byBpbmRpY2F0ZQo+PiArCSAqIHN1Y2ggYW4gb3Bwb3J0dW5pdHkuCj4+ICsJ
ICovCj4+ICsJYm9vbCBpbnRlZ2VyX3NjYWxpbmc7Cj4+ICAgfTsKPj4gICAKPj4gICAvKiBkcm1f
bW9kZS0+cHJpdmF0ZV9mbGFncyAqLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
