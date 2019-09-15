Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E102B2FB9
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2019 13:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DADD6E03F;
	Sun, 15 Sep 2019 11:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43E66E82E
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Sep 2019 11:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Sep 2019 04:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="188346770"
Received: from mseifert-mobl.ger.corp.intel.com (HELO [10.252.38.245])
 ([10.252.38.245])
 by orsmga003.jf.intel.com with ESMTP; 15 Sep 2019 04:27:59 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
 <20190913230620.15906-4-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c2755dc3-c69a-7292-ee8f-9c6c6d322723@intel.com>
Date: Sun, 15 Sep 2019 14:27:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190913230620.15906-4-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Add the report format
 with a non-power-of-2 size
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

T24gMTQvMDkvMjAxOSAwMjowNiwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IEFkZCB0
aGUgcmVwb3J0IGZvcm1hdCB3aXRoIHNpemUgdGhhdCBpcyBub3QgYSBwb3dlciBvZiAyLiBUaGlz
IGFsbG93cwo+IHVzZSBvZiBhbGwgcmVwb3J0IGZvcm1hdHMgZGVmaW5lZCBpbiBoYXJkd2FyZS4K
Pgo+IE1vdmUgdGhlIGZvcm1hdCBkZWZpbml0aW9uIHRvIGVuZCB0byBhdm9pZCBicmVha2luZyBB
UEkgKExpb25lbCkKPgo+IFNpZ25lZC1vZmYtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1l
c2gubmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KCgpJIHRoaW5rIHRoYXQgbGlrZSBhbnkgY2hh
bmdlIHRvIHRoZSB1QVBJIHNob3VsZCBiZSB2ZXJzaW9uZWQgc28gYW4gCmFwcGxpY2F0aW9uIGNh
biBrbm93IHdoYXQncyBhdmFpbGFibGUgd2l0aG91dCB0cnlpbmcgdG8gb3BlbiB0aGUgc3RyZWFt
IAp0byB0ZXN0IHdoZXRoZXIgYSBnaXZlbiBwYXJhbWV0ZXIgaXMgYXZhaWxhYmxlLgoKSSB3b3Vs
ZCBwdWxsIHRoZSBwYXRjaCBpbiB0aGUgbGluayBiZWZvcmUgdGhpcyBvbmUgOiAKaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMyOTcyMy8/c2VyaWVzPTY2NDE4JnJldj0x
CgpBbmQgYnVtcCB0aGUgdmVyc2lvbiBudW1iZXIgdG8gMiBpbiB0aGlzIHBhdGNoLgoKCkNoZWVy
cywKCgotTGlvbmVsCgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
IHwgIDIgKy0KPiAgIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgIHwgMTEgKysrKysr
LS0tLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBpbmRleCA0ODJmY2EzZGE3ZGUuLjc4MWZj
NTg5MjQ5MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gQEAgLTMxMiwxMSArMzEy
LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9vYV9mb3JtYXQgaHN3X29hX2Zvcm1hdHNb
STkxNV9PQV9GT1JNQVRfTUFYXSA9IHsKPiAgIAlbSTkxNV9PQV9GT1JNQVRfQTEzXQkgICAgPSB7
IDAsIDY0IH0sCj4gICAJW0k5MTVfT0FfRk9STUFUX0EyOV0JICAgID0geyAxLCAxMjggfSwKPiAg
IAlbSTkxNV9PQV9GT1JNQVRfQTEzX0I4X0M4XSAgPSB7IDIsIDEyOCB9LAo+IC0JLyogQTI5X0I4
X0M4IERpc2FsbG93ZWQgYXMgMTkyIGJ5dGVzIGRvZXNuJ3QgZmFjdG9yIGludG8gYnVmZmVyIHNp
emUgKi8KPiAgIAlbSTkxNV9PQV9GT1JNQVRfQjRfQzhdCSAgICA9IHsgNCwgNjQgfSwKPiAgIAlb
STkxNV9PQV9GT1JNQVRfQTQ1X0I4X0M4XSAgPSB7IDUsIDI1NiB9LAo+ICAgCVtJOTE1X09BX0ZP
Uk1BVF9CNF9DOF9BMTZdICA9IHsgNiwgMTI4IH0sCj4gICAJW0k5MTVfT0FfRk9STUFUX0M0X0I4
XQkgICAgPSB7IDcsIDY0IH0sCj4gKwlbSTkxNV9PQV9GT1JNQVRfQTI5X0I4X0M4XSAgPSB7IDMs
IDE5MiB9LAo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X29hX2Zvcm1h
dCBnZW44X3BsdXNfb2FfZm9ybWF0c1tJOTE1X09BX0ZPUk1BVF9NQVhdID0gewo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmgKPiBpbmRleCA0NjlkYzUxMmNjYTMuLjRlMmQ0ZTQ5MmIwNiAxMDA2NDQKPiAtLS0gYS9p
bmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmgKPiBAQCAtMTgyOSwxMiArMTgyOSwxMyBAQCBlbnVtIGRybV9pOTE1X29hX2Zvcm1hdCB7
Cj4gICAJSTkxNV9PQV9GT1JNQVRfQjRfQzgsCSAgICAvKiBIU1cgb25seSAqLwo+ICAgCUk5MTVf
T0FfRk9STUFUX0E0NV9COF9DOCwgICAvKiBIU1cgb25seSAqLwo+ICAgCUk5MTVfT0FfRk9STUFU
X0I0X0M4X0ExNiwgICAvKiBIU1cgb25seSAqLwo+IC0JSTkxNV9PQV9GT1JNQVRfQzRfQjgsCSAg
ICAvKiBIU1crICovCj4gKwlJOTE1X09BX0ZPUk1BVF9DNF9COCwJICAgIC8qIEhTVyBvbmx5ICov
Cj4gICAKPiAtCS8qIEdlbjgrICovCj4gLQlJOTE1X09BX0ZPUk1BVF9BMTIsCj4gLQlJOTE1X09B
X0ZPUk1BVF9BMTJfQjhfQzgsCj4gLQlJOTE1X09BX0ZPUk1BVF9BMzJ1NDBfQTR1MzJfQjhfQzgs
Cj4gKwlJOTE1X09BX0ZPUk1BVF9BMTIsCQkJLyogR2VuOCsgKi8KPiArCUk5MTVfT0FfRk9STUFU
X0ExMl9COF9DOCwJCS8qIEdlbjgrICovCj4gKwlJOTE1X09BX0ZPUk1BVF9BMzJ1NDBfQTR1MzJf
QjhfQzgsCS8qIEdlbjgrICovCj4gKwo+ICsJSTkxNV9PQV9GT1JNQVRfQTI5X0I4X0M4LCAgIC8q
IEhTVyBvbmx5ICovCj4gICAKPiAgIAlJOTE1X09BX0ZPUk1BVF9NQVgJICAgIC8qIG5vbi1BQkkg
Ki8KPiAgIH07CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
