Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322BA2607E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 11:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41AC89817;
	Wed, 22 May 2019 09:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6317289817
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 09:30:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 02:30:06 -0700
X-ExtLoop1: 1
Received: from gsimsek-mobl2.ger.corp.intel.com (HELO [10.252.2.167])
 ([10.252.2.167])
 by fmsmga007.fm.intel.com with ESMTP; 22 May 2019 02:30:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
 <155845847818.23981.11970035434652441216@skylake-alporthouse-com>
 <da6d6099-8996-1539-690d-3822faef4547@intel.com>
 <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
 <7d69dbe8-7fa1-a03a-47b3-7f2579ee38d5@intel.com>
 <155851710985.23981.8303955033927338893@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c470039e-8eff-7c7d-f535-52c9dbed420b@intel.com>
Date: Wed, 22 May 2019 10:30:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155851710985.23981.8303955033927338893@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

T24gMjIvMDUvMjAxOSAxMDoyNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjIgMTA6MTk6NDYpCj4+IE9uIDIxLzA1LzIwMTkgMTg6NDgs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjEgMTg6MTk6NTApCj4+Pj4gT24gMjEvMDUvMjAxOSAxODowNywgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGluICgyMDE5LTA1LTIxIDE1OjA4OjU0
KQo+Pj4+Pj4gKyAgICAgICBpZiAoZWItPm9hX2NvbmZpZyAmJgo+Pj4+Pj4gKyAgICAgICAgICAg
ZWItPm9hX2NvbmZpZyAhPSBlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFtLT5vYV9j
b25maWcpIHsKPj4+Pj4gQnV0IHRoZSBvYV9jb25maWcgaXMgbm90IG9yZGVyZWQgd2l0aCByZXNw
ZWN0IHRvIHJlcXVlc3RzLCBhbmQgdGhlCj4+Pj4+IHJlZ2lzdGVycyBjaGFuZ2VkIGhlcmUgYXJl
IG5vdCBjb250ZXh0IHNhdmVkIGFuZCBzbyBtYXkgYmUgY2hhbmdlZCBieSBhCj4+Pj4+IHRoaXJk
IHBhcnR5IGJlZm9yZSBleGVjdXRpb24uIFRoZSBmaXJzdCBwYXJ0eSBtdXN0IHByZXN1bWFibHkg
ZHJvcHBlZAo+Pj4+PiB0aGUgcGVyZl9mZCBiZWZvcmUgdGhlbiwgc28gbWF5YmUgeW91IGRvbid0
IGNhcmU/IEhtbSwgZG9lc24ndCBldmVuIHRha2UKPj4+Pj4gYSB0aGlyZCBwYXJ0eSBhcyB0aGUg
cGVyZl9mZCBvd25lciBtYXkgY2hhbmdlIHRoZWlyIG1pbmQgZm9yIGRpZmZlcmVudAo+Pj4+PiBj
b250ZXh0cyBhbmQgYmUgc3VycHJpc2VkIHdoZW4gdGhlIHdyb25nIHNldCBpcyB1c2VkLgo+Pj4+
IFRoZSBPQSBjb25maWcgYmF0Y2ggc2hvdWxkIGJlIG9yZGVyZWQgd2l0aCByZWdhcmQgdG8gdGhl
IE1JX0JCUyB3ZSdyZQo+Pj4+IGRvaW5nIGp1c3QgYmVsb3cgcmlnaHQ/Cj4+PiBCdXQgeW91IG9u
bHkgZW1pdCBpZiB0aGUgb2FfY29uZmlnIGhhcyBjaGFuZ2VkLiBFcmdvLCBpdCBtYXkgaGF2ZQo+
Pj4gY2hhbmdlZCBiZXR3ZWVuIHN1Ym1pc3Npb24gYW5kIGV4ZWN1dGlvbi4KPj4+Cj4+Pj4gSXQn
cyB3cml0dGVuIGJlZm9yZSBpbiB0aGUgcmluZyBidWZmZXIuCj4+Pj4KPj4+Pgo+Pj4+IFRoYXQg
ZXNzZW50aWFsbHkgYWxsIHdlIG5lZWQgc28gdGhhdCBhcyB0aGUgcGVyZiBxdWVyaWVzIHJ1biBp
biB0aGUKPj4+PiBiYXRjaCBzdXBwbGllZCBieSB0aGUgYXBwbGljYXRpb24gcnVucyB3aXRoIHRo
ZSBjb25maWd1cmF0aW9uIG5lZWRlZC4KPj4+Pgo+Pj4+IElmIHRoZSBhcHBsaWNhdGlvbiBzaGFy
ZXMgdGhlIHBlcmYgRkQgYW5kIHNvbWVvbmUgZWxzZSBydW5zIGFub3RoZXIKPj4+PiBjb25maWd1
cmF0aW9uLCBpdCdzIHRoZSBhcHBsaWNhdGlvbiBmYXVsdC4KPj4+Pgo+Pj4+IEl0IG5lZWRzIHRv
IGhvbGQgdGhlIHBlcmYgRkQgZm9yIGFzIGxvbmcgYXMgaXQncyBkb2luZyBwZXJmIHF1ZXJpZXMg
YW5kCj4+Pj4gbm90IGFsbG93IGFueWJvZHkgZWxzZSB0byBpbnRlcmFjdCB3aXRoIHRoZSBPQSBj
b25maWd1cmF0aW9uLgo+Pj4gSWYgb25lIGFwcCBpcyB0cnlpbmcgdG8gdXNlIGRpZmZlcmVudCBj
b25maWdzIG9uIGRpZmZlcmVudCBjb250ZXh0cwo+Pj4gKHdoaWNoIHNlZW1zIHJlYXNvbmFibGUg
aWYgaXQgaXMgdHJ5aW5nIHRvIHNhbXBsZSBkaWZmZXJlbnQgc3RhdHM/KSB0aGVuCj4+PiBpdCBj
YW4gYmUgY2F1Z2h0IG91dC4gVGhlIG9yZGVyIG9mIGV4ZWN1dGlvbiBpcyBub3QgdGhlIHNhbWUg
YXMgdGhlCj4+PiBvcmRlciBvZiBzdWJtaXNzaW9uICh1bmxlc3Mgd2UgZW5mb3JjZSBpdCBieSBl
LmcuIGRlZmluaW5nIHRoZQo+Pj4gcGVyZi5vYV9jb25maWcgYXMgYSBiYXJyaWVyKS4KPj4KPj4g
VGhpbmtpbmcgYWJvdXQgdGhpcyBhIGJpdCBtb3JlLCB0aGUgdXNlIGNhc2UgaGVyZSB3YXMgYWx3
YXlzIHRoYXQgdGhlCj4+IGFwcCBpcyB0aGUgc2luZ2xlIHVzZXIgb2YgdGhlIE9BIHVuaXQuCj4+
Cj4+IEluIHRoaXMgc2NlbmFyaW8sIHRoZSBhcHAgaXMgZG9pbmcgcXVlcmllcyBhbmQgc2hvdWxk
IG5vdCBzaGFyZSB0aGUKPj4gY29uZmlndXJhdGlvbiBvZiB0aGUgT0EgSFcgd2l0aCBhbnlib2R5
IGVsc2UuCj4gV2hhdCBhYm91dCB3aXRoIGl0c2VsZj8gQW5kIGRvZXMgdGhhdCBleGN1c2UgdGhl
IGtlcm5lbCBjYXJyeWluZyBhCj4gVE9DVE9VIGJ1Zz8KPiAtQ2hyaXMKPgpZb3UgbWVhbiB3aXRo
IHNvbWV0aGluZyBsaWtlIElyaXMgdGhhdCB1c2VzIDIgY29udGV4dHM/CgpJJ20gYXNzdW1pbmcg
dGhpbmdzIGFyZSBwcm9wZXJseSBzeW5jaHJvbml6ZWQuCgoKVGhlcmUgaXMgYWxzbyBhbm90aGVy
IHByb2JsZW0gd2l0aCB0aGUgMiBjb250ZXh0cyB3aGljaCBpcyB0aGF0IHdlIG9ubHkgCmFsbG93
IGZpbHRlcmluZyBhIHNpbmdsZSBJRCBhdCB0aGUgbW9tZW50Li4uCgoKU29ycnksIEknbSBub3Qg
ZmFtaWxpYXIgd2l0aCB0aGUgVE9DVE9VIGJ1ZyA6KAoKCi1MaW9uZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
