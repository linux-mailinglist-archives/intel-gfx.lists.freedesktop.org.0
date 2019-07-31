Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D56BA7CA17
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 19:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1F489D7F;
	Wed, 31 Jul 2019 17:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1442089D7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 17:14:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:14:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="200831992"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2019 10:14:38 -0700
Received: from fmsmsx115.amr.corp.intel.com ([169.254.4.194]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.32]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:14:38 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: Sasha Levin <sashal@kernel.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
Thread-Index: AQHVPPA32UuiQAqQX0GQuUuHjAoekqbRkfmAgBKYLYCAABJ4gIABRbaA
Date: Wed, 31 Jul 2019 17:14:38 +0000
Message-ID: <1689B7E0-5CA6-4B27-B2A8-F352618096EA@intel.com>
References: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
 <20190719004526.B0CC521850@mail.kernel.org>
 <CABVU7+sbS8mw+4O1Ct8EY_5cj+fnmNFzyd6_=v2_RmCgBRA13g@mail.gmail.com>
 <20190730214851.GF29162@sasha-vm>
In-Reply-To: <20190730214851.GF29162@sasha-vm>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.196.66]
Content-ID: <12F8BF15E0B9324CB1CE296363467821@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IE9uIEp1bCAzMCwgMjAxOSwgYXQgMjo0OCBQTSwgU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
ZWwub3JnPiB3cm90ZToKPiAKPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAwMTo0Mjo0NVBNIC0w
NzAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4+IEhpIFNhc2hhLAo+IAo+IEhlbGxvIQo+IAo+PiBP
biBUaHUsIEp1bCAxOCwgMjAxOSBhdCA1OjQ1IFBNIFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4+PiAKPj4+IEhpLAo+Pj4gCj4+PiBbVGhpcyBpcyBhbiBhdXRvbWF0ZWQg
ZW1haWxdCj4+IAo+PiBXaGVyZSBkaWQgeW91IGdldCB0aGlzIHBhdGNoIGZyb20/IFNpbmNlIHN0
YWJsZSBuZWVkcyBwYXRjaGVzIG1lcmdlZAo+IAo+IFRoaXMgYm90IGdyYWJzIHRoZW0gZnJvbSB2
YXJpb3VzIG1haWxpbmcgbGlzdHMuCj4gCj4+IG9uIExpbnVzIHRyZWUsCj4+IHNob3VsZG4ndCB5
b3VyIHNjcmlwdHMgcnVuIHRvIHRyeSBiYWNrcG9ydGluZyBvbmx5IHBhdGNoZXMgZnJvbSB0aGVy
ZT8KPiAKPiBUaGVyZSdzIGEgbm90ZSBhIGZldyBsaW5lcyBkb3duIHRoYXQgc2F5czoKPiAKPiAg
ICJOT1RFOiBUaGUgcGF0Y2ggd2lsbCBub3QgYmUgcXVldWVkIHRvIHN0YWJsZSB0cmVlcyB1bnRp
bCBpdCBpcyB1cHN0cmVhbS4iCj4gCj4gT3RoZXJ3aXNlLCBubywgdGhlcmUncyBubyBydWxlIHRo
YXQgc2F5cyB3ZSBjYW4ndCBsb29rIGF0IHBhdGNoZXMgYmVmb3JlCj4gdGhleSBhcmUgdXBzdHJl
YW0uIFdlIGNhbid0IHF1ZXVlIHRoZW0gdXAsIGJ1dCB3ZSBzdXJlIGNhbiBwb2tlIHRoZW0uCj4g
Cj4gVGhlIHJlYXNvbmluZyBiZWhpbmQgdGhpcyBpcyB0aGF0IGl0J3MgZWFzaWVyIHRvIGdldCBy
ZXBsaWVzIChhbmQKPiBiYWNrcG9ydHMpIGZyb20gZm9sa3Mgd2hvIGFyZSBhY3RpdmVseSB3b3Jr
aW5nIG9uIHRoZSBwYXRjaCBub3csCgoKVGhpcyBpcyBhIHZlcnkgZ29vZCByZWFzb24gaW5kZWVk
Li4uCgo+IHJhdGhlcgo+IHRoYW4gYSBmZXcgd2Vla3MgbGF0ZXIgd2hlbiBHcmVnIHNlbmRzIGhp
cyAiRkFJTEVEOiIgbWFpbHMgYW5kIGdldHMKPiBpZ25vcmVkIGJlY2F1c2Ugc2FpZCBmb2xrcyBo
YXZlIG1vdmVkIG9uLgoKaG93ZXZlciB0aGlzIGNvdWxkIHBvdGVudGlhbGx5IGNhdXNlIGV4dHJh
IHdvcmsgYW5kIGNvbmZ1c2lvbiBsaWtlIHdlIGNhbiBzZWUgb24gdGhpcwp0aHJlYWQgd2hlcmUg
dGhlIGRldmVsb3BlciBpbW1lZGlhdGVseSByZXNwb25kZWQgdG8geW91ciBlbWFpbCBhbmQgc2Vu
dCB0aGUKYmFja3BvcnRlZCBwYXRjaCB0byB0aGUgc3RhYmxlIG1haWxpbmcgbGlzdC4KCk1heWJl
IGl0IGlzIGp1c3QgYmVjYXVzZSB3ZSBhcmUgdXNlZCB0byBHcmVnJ3MgZmFpbGVkIHRvIGFwcGx5
IGVtYWlsIG9yIG1heWJlCml0IHdhcyBqdXN0IGEgbWF0dGVyIG9mIGVkdWNhdGlvbi4uLiAKCkJ1
dCBJIHdvbmRlciBpZiB0aGVyZSBpc24ndCBzb21ldGhpbmcgdGhhdCBjb3VsZCBiZSBpbXByb3Zl
ZCBvbiB0aGUgYXV0b21hdGVkCm1lc3NhZ2UgaGVyZS4gU29tZSBtZXNzYWdlIGNsZWFybHkgc3Rh
dGluZzoKCi0gTm8gYWN0aW9uIHJlcXVpcmVkIGF0IHRoaXMgcG9pbnQKLSB5b3UgY2FuIHdvcmsg
dG8gcHJlcGFyZSB0aGUgYmFja3BvcnQgaW4gYWR2YW5jZQotICBkb24ndCBzZW5kIGl0IHRvIHN0
YWJsZSBiZWZvcmUgcmVxdWVzdGVkIGJ5IEdyZWcKCkFueXdheSwganVzdCBmZXcgaWRlYXMuIEkg
anVzdCByZWFjaGVkIHlvdSB0byB1bmRlcnN0YW5kIHRoZSBmbG93IGFuZCBJJ20gYWxyZWFkeQpo
YXBweSB0byB1bmRlcnN0YW5kIHdoYXQgaGFwcGVuZWQgaGVyZS4KClRoYW5rcyBhIGxvdCBmb3Ig
dGhhdCwKUm9kcmlnby4KCgo+IAo+IC0tCj4gVGhhbmtzLAo+IFNhc2hhCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
