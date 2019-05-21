Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B744F25706
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 19:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38973895B6;
	Tue, 21 May 2019 17:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C5F895B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 17:52:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 10:52:19 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.239.89]) ([10.103.239.89])
 by orsmga006.jf.intel.com with ESMTP; 21 May 2019 10:52:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
 <c90e9682-0ee6-5f4a-d4fd-177ee0789aea@intel.com>
 <155845904644.23981.2155227400765332509@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a58ae613-a497-d713-cea7-48654bec299b@intel.com>
Date: Tue, 21 May 2019 18:52:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155845904644.23981.2155227400765332509@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

T24gMjEvMDUvMjAxOSAxODoxNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjEgMTc6NTA6MzApCj4+IE9uIDIxLzA1LzIwMTkgMTc6MzYs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjEgMTU6MDg6NTIpCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4+PiBp
bmRleCBmMjYzYTgzNzQyNzMuLjJhZDk1OTc3ZjdhOCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCj4+Pj4gQEAgLTIwODUsNyArMjA4NSw3IEBAIHN0YXRpYyBpbnQg
Z2VuOV9lbWl0X2JiX3N0YXJ0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+Pj4+ICAgICAgICAg
ICBpZiAoSVNfRVJSKGNzKSkKPj4+PiAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihj
cyk7Cj4+Pj4gICAgCj4+Pj4gLSAgICAgICAqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBNSV9BUkJf
RU5BQkxFOwo+Pj4+ICsgICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwgcnEtPmh3X2NvbnRl
eHQtPmFyYl9lbmFibGU7Cj4+PiBNeSBwcmVkaWN0aW9uIGlzIHRoYXQgdGhpcyB3aWxsIHJlc3Vs
dCBpbiB0aGlzIGNvbnRleHQgYmVpbmcgcmVzZXQgZHVlCj4+PiB0byBwcmVlbXB0aW9uIHRpbWVv
dXRzIGFuZCB0aGUgY29udGV4dCB1bmRlciBwcm9maWxlIGJlaW5nIGJhbm5lZC4KPj4+IE5vdGUg
dGhhdCBwcmVlbXB0aW9uIHRpbWVvdXRzIHdpbGwgYmUgdGhlIHByaW1hcnkgbWVhbnMgZm9yIGhh
bmcKPj4+IGRldGVjdGlvbiBmb3IgZW5kbGVzcyBiYXRjaGVzLiAtQ2hyaXMKPj4gVGhhbmtzLAo+
Pgo+PiBPbmUgcXVlc3Rpb24gOiBob3cgaXMgdGhhdCBkZWFsdCB3aXRoIHdpdGggY29tcHV0ZSB3
b3JrbG9hZHMgYXQgdGhlIG1vbWVudD8KPj4gSSB0aG91Z2ggdGhvc2Ugd2hlcmUgc3RpbGwgbm90
IGZ1bGx5IHByZWVtcHRhYmxlLgo+IE5vdCBibG9ja2luZyBpcyB0aGUgY29uZGl0aW9uIHVuZGVy
IHdoaWNoIHRoZXkgZ2V0IHRvIHVzZSBlbmRsZXNzLi4uCj4gY29tcHV0ZSBqb2JzIGFyZSBwcmVl
bXB0aWJsZSBmcm9tIGdlbjkgYWZhaWssIGdlbjggd2FzIHByb2JsZW1hdGljIGFuZCBzbwo+IGRp
c2FibGVkLgo+ICAgCj4+IEkgbmVlZCB0byByZXdvcmsgdGhpcyB3aXRoIGEgbW9yZSAic29mdHdh
cmUiIGFwcHJvYWNoIGhvbGRpbmcgb24gcHJlZW1wdGlvbi4KPj4gQWRkaW5nIGEgY29uZGl0aW9u
IGluIGludGVsX2xyYy5jIG5lZWRfcHJlZW1wdCgpIGxvb2tzIGxpa2UgdGhlIHJpZ2h0Cj4+IGRp
cmVjdGlvbj8KPiBFdmVuIGxlc3MgaWYgdGhhdCBpcyBvdXIgbWVhbnMgb2YgaGFuZ2NoZWNrLgo+
IC1DaHJpcwo+CgpDYW4gd2UgZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIGEgaGFuZ2NoZWNrICYgYSBo
aWdoIHByaW9yaXR5IHJlcXVlc3Q/CgpJZiBJIHJlbWVtYmVyIGNvcnJlY3RseSwgd2UgY2FuIHNl
dCB0aGUgaGFuZ2NoZWNrIHRpbWVvdXQgc29tZXdoZXJlIGluIC9zeXMuCgpJIHRoaW5rIGl0J3Mg
ZmluZSB0byBiYW4gdGhlIGNvbnRleHQgZG9pbmcgYSBwZXJmIHF1ZXJ5IGlmIGl0J3MgdGFraW5n
IAp0b28gbG9uZy4KCgpJZiBhIHVzZXIgcnVucyBpbnRvIHRoYXQgc2NlbmFyaW8gd2UgY2FuIHRl
bGwgdGhlbSB0byBpbmNyZWFzZSB0aGUgdGltZW91dC4KCgotTGlvbmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
