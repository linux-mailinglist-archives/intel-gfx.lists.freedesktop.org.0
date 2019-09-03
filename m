Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2976DA6341
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 09:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D1D89690;
	Tue,  3 Sep 2019 07:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CAB89690
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 07:59:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 00:59:43 -0700
X-IronPort-AV: E=Sophos;i="5.64,462,1559545200"; d="scan'208";a="173132219"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 00:59:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sharma\, Shashank" <shashank.sharma@intel.com>, "Manna\,
 Animesh" <animesh.manna@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DFD252C@BGSMSX101.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190830124533.26573-1-animesh.manna@intel.com>
 <20190830124533.26573-9-animesh.manna@intel.com> <878sra6ap4.fsf@intel.com>
 <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DFD252C@BGSMSX101.gar.corp.intel.com>
Date: Tue, 03 Sep 2019 10:59:39 +0300
Message-ID: <8736hd6c9g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 08/10] drm/i915/dsb: Enable gamma lut
 programming using DSB.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMyBTZXAgMjAxOSwgIlNoYXJtYSwgU2hhc2hhbmsiIDxzaGFzaGFuay5zaGFybWFA
aW50ZWwuY29tPiB3cm90ZToKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTog
SW50ZWwtZ2Z4IFttYWlsdG86aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
XSBPbiBCZWhhbGYgT2YgSmFuaQo+PiBOaWt1bGEKPj4gU2VudDogRnJpZGF5LCBBdWd1c3QgMzAs
IDIwMTkgNzowMiBQTQo+PiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBTdWJqZWN0OiBSZTogW0lu
dGVsLWdmeF0gW1BBVENIIHY0IDA4LzEwXSBkcm0vaTkxNS9kc2I6IEVuYWJsZSBnYW1tYSBsdXQK
Pj4gcHJvZ3JhbW1pbmcgdXNpbmcgRFNCLgo+PiBZb3UgaGF2ZSB0b25zIG9mIGZ1bmN0aW9ucyBo
ZXJlIHRoYXQgd2lsbCBuZXZlciBoYXZlIGEgRFNCIGVuZ2luZSwgaXQKPj4gbWFrZXMgbm8gc2Vu
c2UgdG8gY29udmVydCBhbGwgb2YgdGhlbSB0byB1c2UgdGhlIERTQi4KPj4gCj4gSmFuaSwgCj4g
SSB3YXMgdGhpbmtpbmcgZXZlbiBhbW9uZyB0aGUgMyBlbmdpbmVzIGF2YWlsYWJsZSBwZXIgcGlw
ZSwgd291bGQgaXQKPiBtYWtlIG1vcmUgc2Vuc2UgdG8ga2VlcCB0aGVtIHJlc2VydmUgb24gdGhl
IGJhc2lzIG9mIHVzZXIgPyBsaWtlIERTQjAKPiBmb3IgYWxsIHBpcGUgb3BlcmF0aW9ucywgRFNC
MSBmb3IgYWxsIHBsYW5lLCBhbmQgRFNCMiBmb3IgYWxsIGVuY29kZXIKPiByZWxhdGVkIHN0dWZm
LiBXZSBjYW4gY3JlYXRlIGEgRFNCIHVzZXIgKGxpa2Ugd2UgaGF2ZSBmb3Igc2NhbGVyKSBhbmQK
PiBpbmRleCB0aGVzZSBlbmdpbmVzIGJhc2VkIG9uIHRoYXQuIERvIHlvdSB0aGluayBzbyA/CgpB
bmQgcGVyaGFwcyB1c2Ugc29tZSBEU0IgZW5naW5lcyB0byB3cml0ZSBpbW1lZGlhdGVseSwgc29t
ZSB0byB3cml0ZSBhdAp2YmxhbmsuIEhvd2V2ZXIsIGFsbCBvZiB0aGlzIHNob3VsZCBiZSBwb3N0
cG9uZWQgdG8gZm9sbG93LXVwIHdvcmsuCgpGb3Igbm93LCBpZiB3ZSB1c2UgaW50ZWxfZHNiX3dy
aXRlIGFuZCBmcmllbmRzIHdpdGggdGhlIGRzYiBwYXJhbWV0ZXIgYXMKbG9jYWwgdmFyaWFibGUg
cGFzc2VkIGluLCBjb252ZXJ0aW5nIHRvIHVzZSBhIGRpZmZlcmVudCBlbmdpbmUgaXMgYQptZXR0
ZXIgb2YgY2hhbmdpbmcgdGhlIHByZWNlZGluZyBpbnRlbF9kc2JfZ2V0IGNhbGwgdG8gZmV0Y2gg
dGhlIGRzYgpwb2ludGVyLgoKQ29uc2lkZXJpbmcgdGhlIHByb2dyZXNzIG9mIGEgcGF0Y2ggc2Vy
aWVzLCB0aGUgZm9jdXMgc2hvdWxkIGJlIG9uCmdldHRpbmcgcGF0Y2hlcyBtZXJnZWQuIEdldHRp
bmcgdGhlIG1pbmltdW0gc2Vic2libGUgZW5hYmxpbmcgb2YgRFNCCm1lcmdlZCBzaG91bGQgYmUg
dGhlIGZvY3VzIGhlcmUuIFRoZSBmdXJ0aGVyIGl0ZXJhdGlvbiBzaG91bGQgaGFwcGVuCmluLXRy
ZWUsIG5vdCBvdXQtb2YtdHJlZS4KCkJSLApKYW5pLgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
