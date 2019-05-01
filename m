Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AF010A54
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 17:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA388923C;
	Wed,  1 May 2019 15:56:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694F389229;
 Wed,  1 May 2019 15:56:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 08:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; d="scan'208";a="140401164"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 01 May 2019 08:56:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190501114259.16158-1-tvrtko.ursulin@linux.intel.com>
 <20190501114259.16158-3-tvrtko.ursulin@linux.intel.com>
 <155671156003.1850.8570225810057290177@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <88974c5a-3fbe-f51b-ffc6-7ac83b795046@linux.intel.com>
Date: Wed, 1 May 2019 16:56:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155671156003.1850.8570225810057290177@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915_query: Engine
 discovery tests
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAxLzA1LzIwMTkgMTI6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAxIDEyOjQyOjU5KQo+PiArICAgICAgICAgICAgICAgc3dpdGNo
IChlbmdpbmUtPmVuZ2luZS5lbmdpbmVfY2xhc3MpIHsKPj4gKyAgICAgICAgICAgICAgIGNhc2Ug
STkxNV9FTkdJTkVfQ0xBU1NfUkVOREVSOgo+PiArICAgICAgICAgICAgICAgICAgICAgICAvKiBX
aWxsIGJlIHRlc3RlZCBsYXRlci4gKi8KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7
Cj4+ICsgICAgICAgICAgICAgICBjYXNlIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFk6Cj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGlndF9hc3NlcnQoZ2VtX2hhc19ibHQoZmQpKTsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4+ICsgICAgICAgICAgICAgICBjYXNlIEk5MTVfRU5H
SU5FX0NMQVNTX1ZJREVPOgo+PiArICAgICAgICAgICAgICAgICAgICAgICBzd2l0Y2ggKGVuZ2lu
ZS0+ZW5naW5lLmVuZ2luZV9pbnN0YW5jZSkgewo+PiArICAgICAgICAgICAgICAgICAgICAgICBj
YXNlIDA6Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWd0X2Fzc2VydChnZW1f
aGFzX2JzZChmZCkpOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
PiArICAgICAgICAgICAgICAgICAgICAgICBjYXNlIDE6Cj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaWd0X2Fzc2VydChnZW1faGFzX2JzZDIoZmQpKTsKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAKPiAKPiBJcyB0aGF0IHJlbGF0aW9uc2hpcCBh
IGdpdmVuPwo+IAo+IE9uZSBjb3VsZCBhcmd1ZSB0aGF0IGdlbV9oYXNfYmx0KCkgbWVhbnMgdGhh
dCBJOTE1X0VYRUNfQkxUIHdvcmtzLCBidXQKPiB3aXRob3V0ICFnZW1faGFzX2JsdCgpIHdlIGNv
dWxkIHN0aWxsIGFjY2VzcyBDTEFTU19DT1BZOjAgdmlhCj4gY3R4LT5lbmdpbmVzW10uCgoid2l0
aG91dCAhZ2VtX2hhc19ibHQoKSIuLiBobW1tIHdoYXQgZG8geW91IG1lYW4/IElmIHlvdSBtZWFu
IApnZW1faGFzX2JsdCgpIGlzIGZhbHNlIGJ1dCBiY3M6MCBpcyBzdGlsbCBhY2Nlc3NpYmxlIHZp
YSBjdHgtPmVuZ2luZXNbXSAKdGhlbiBob3c/Cgo+PiArICAgICAgICAgICAgICAgICAgICAgICB9
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+PiArICAgICAgICAgICAgICAgY2Fz
ZSBJOTE1X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNFOgo+PiArICAgICAgICAgICAgICAgICAg
ICAgICBpZ3RfYXNzZXJ0KGdlbV9oYXNfdmVib3goZmQpKTsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4+ICsgICAgICAgICAgICAgICBkZWZhdWx0Ogo+PiArICAgICAgICAgICAg
ICAgICAgICAgICBpZ3RfYXNzZXJ0KDApOwo+PiArICAgICAgICAgICAgICAgfQo+PiArICAgICAg
IH0KPj4gKwo+PiArICAgICAgIC8qIFJldmVyc2UgY2hlY2sgdG8gdGhlIGFib3ZlIC0gYWxsIEdF
VF9QQVJBTSBlbmdpbmVzIGFyZSBwcmVzZW50LiAqLwo+PiArICAgICAgIGlndF9hc3NlcnQoaGFz
X2VuZ2luZShlbmdpbmVzLCBJOTE1X0VOR0lORV9DTEFTU19SRU5ERVIsIDApKTsKPj4gKyAgICAg
ICBpZiAoZ2VtX2hhc19ibHQoZmQpKQo+PiArICAgICAgICAgICAgICAgaWd0X2Fzc2VydChoYXNf
ZW5naW5lKGVuZ2luZXMsIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFksIDApKTsKPj4gKyAgICAgICBp
ZiAoZ2VtX2hhc19ic2QoZmQpKQo+PiArICAgICAgICAgICAgICAgaWd0X2Fzc2VydChoYXNfZW5n
aW5lKGVuZ2luZXMsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAwKSk7Cj4+ICsgICAgICAgaWYg
KGdlbV9oYXNfYnNkMihmZCkpCj4+ICsgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0KGhhc19lbmdp
bmUoZW5naW5lcywgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDEpKTsKPj4gKyAgICAgICBpZiAo
Z2VtX2hhc192ZWJveChmZCkpCj4+ICsgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0KGhhc19lbmdp
bmUoZW5naW5lcywgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU9fRU5IQU5DRSwKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCkpOwo+IAo+IFdoZXJlYXMgdGhpcyBzaG91
bGQgYWx3YXlzIG1ha2Ugc2Vuc2UsIGdpdmVuIHRoZSBsZWdhY3kgaW50ZXJmYWNlIGFuZAo+IHRo
ZSBtb2Rlcm4gaW50ZXJmYWNlLCB0aGUgbW9kZXJuIGludGVyZmFjZSBzaG91bGQgYmUgYSBzdXBl
cnNldCBvZiB0aGUKPiBsZWdhY3kuCj4gCj4gSnVzdCB0aGlua2luZyBhbG91ZC4KClN1cmUsIG5v
IGhhcm0gaW4gbG9va2luZyBhdCBpdCBhZ2Fpbi4gVGhlIHRlc3Qgd2FzIHdyaXR0ZW4gbG9uZyB0
aW1lIGFnby4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
