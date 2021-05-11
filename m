Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C1537A738
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73956E15E;
	Tue, 11 May 2021 12:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C316E138
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 12:57:55 +0000 (UTC)
IronPort-SDR: 7EYcIpe047LqL3wBgfY4pbt2iPHJ6nTVR9XrLm0As0OhbHrpP+EPe0U9UA8/bTSEzDnr75l+my
 r2BNipWOotTw==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="220392031"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="220392031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 05:57:54 -0700
IronPort-SDR: nCgepjE7q8efHL2BKSbHjmwPSWoTzm+8c98kXcoKciD8K/pG7q6/Ujg4PzB982GMkccdORLknN
 zycvCSxFNTxg==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="436647395"
Received: from ialvarez-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.32.67])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 05:57:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Albert Astals Cid <aacid@kde.org>
In-Reply-To: <CAAd53p4ZTBtV0KhmvnoJ1abp0b6xx2hC-grGzr2tx+AURQoOmQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210107182026.24848-1-ville.syrjala@linux.intel.com>
 <X/yY3Tvk8gq+Eg8W@intel.com>
 <CABpPkAEVbSUwoBqXDaKpckbfkq4-z=MWNC27JYOLki3FhN0PyA@mail.gmail.com>
 <3349345.6yYDney9BF@xps>
 <CAAd53p4ZTBtV0KhmvnoJ1abp0b6xx2hC-grGzr2tx+AURQoOmQ@mail.gmail.com>
Date: Tue, 11 May 2021 15:57:48 +0300
Message-ID: <874kf9v35f.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Emanuele Panigati <ilpanich@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxMSBNYXkgMjAyMSwgS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmlj
YWwuY29tPiB3cm90ZToKPiBPbiBUdWUsIE1heSAxMSwgMjAyMSBhdCAyOjA2IEFNIEFsYmVydCBB
c3RhbHMgQ2lkIDxhYWNpZEBrZGUub3JnPiB3cm90ZToKPj4KPj4gWWVzLCBJIGFsc28gaGF2ZSB0
aGUgc2FtZS4KPj4KPj4gSSBnaXQgYmlzZWN0ZWQgdGhhdCBhbmQgZm91bmQgdGhpcyB0byBiZSB0
aGUgY2F1c2UsIGkgc3RhcnRlZCBhIG5ldyBlbWFpbCB0aHJlYWQgYmVjYXVzZSBpIGNvdWxkbid0
IGZpbmQgdGhpcyBlbWFpbCBeX14KPgo+IFNob3VsZCBiZSBmaXhlZCBieQo+IGh0dHBzOi8vY2dp
dC5mcmVlZGVza3RvcC5vcmcvZHJtLXRpcC9jb21taXQvP2lkPWFjY2E3NzYyZWI3MWJjMDVhOGYy
OGQyOTMyMGQxOTMxNTAwNTFmNzkKCkkndmUgcGlja2VkIHVwIGFjY2E3NzYyZWI3MSAoImRybS9p
OTE1L2RwOiBVc2Ugc2xvdyBhbmQgd2lkZSBsaW5rCnRyYWluaW5nIGZvciBldmVyeXRoaW5nIikg
dG8gZHJtLWludGVsLWZpeGVzLCBhbmQgaXQgc2hvdWxkIGZpbmQgaXRzZWxmCmluIHY1LjEzLXJj
MiBhbmQgc3Vic2VxdWVudGx5IHY1LjEyIHN0YWJsZSBpbiB0aGUgY29taW5nIHdlZWtzLgoKQlIs
CkphbmkuCgoKPgo+IEthaS1IZW5nCj4KPj4KPj4gQ2hlZXJzLAo+PiAgIEFsYmVydAo+Pgo+PiBF
bCBkaWxsdW5zLCAxMCBkZSBtYWlnIGRlIDIwMjEsIGEgbGVzIDEwOjA3OjMzIChDRVNUKSwgRW1h
bnVlbGUgUGFuaWdhdGkgdmEgZXNjcml1cmU6Cj4+ID4gSGksCj4+ID4gICBvbiBteSBEZWxsIFhQ
UyAxNSA5NTcwIGxhcHRvcCBJIG1pZ2h0IGhhdmUgYSByZWdyZXNzaW9uIHdpdGggQXJjaCBMaW51
eAo+PiA+IChrZXJuZWwgNS4xMi4yLWFyY2gxLTE6IGR1cmluZyBib290IHRoZSBsYXB0b3AgbW9u
aXRvciBnb2VzIGJsYWNrIHdoaWxlCj4+ID4gZXh0ZXJuYWwgbW9uaXRvcnMgc3RpbGwgd29ya3Mu
Li4KPj4gPgo+PiA+Cj4+ID4gUGFuaWNoCj4+ID4KPj4gPgo+PiA+IElsIGdpb3JubyBsdW4gMTEg
Z2VuIDIwMjEgYWxsZSBvcmUgMTk6MjggVmlsbGUgU3lyasOkbMOkIDwKPj4gPiB2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gaGEgc2NyaXR0bzoKPj4gPgo+PiA+ID4gT24gVGh1LCBKYW4g
MDcsIDIwMjEgYXQgMDg6MjA6MjVQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPj4gPiA+
ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
Pj4gPiA+ID4KPj4gPiA+ID4gU29tZSBuZXcgZURQIHBhbmVscyBkb24ndCBsaWtlIHRvIG9wZXJh
dGUgYXQgdGhlIG1heCBwYXJhbWV0ZXJzLCBhbmQKPj4gPiA+ID4gaW5zdGVhZCB3ZSBuZWVkIHRv
IGdvIGZvciBhbiBvcHRpbWFsIGNvbmZpdWdyYXRpb24uIFRoYXQgdW5mb3J0dW5hdGVseQo+PiA+
ID4gPiBkb2Vzbid0IHdvcmsgd2l0aCBvbGRlciBlRFAgcGFuZWxzIHdoaWNoIGFyZSBnZW5lcmFs
bHkgb25seSBndWFyYW50ZWVkCj4+ID4gPiA+IHRvIHdvcmsgYXQgdGhlIG1heCBwYXJhbWV0ZXJz
Lgo+PiA+ID4gPgo+PiA+ID4gPiBUbyBzb2x2ZSB0aGVzZSB0d28gY29uZmxpY3RpbmcgcmVxdWly
ZW1lbnRzIGxldCdzIHN0YXJ0IHdpdGggdGhlIG9wdGltYWwKPj4gPiA+ID4gc2V0dXAsIGFuZCBp
ZiB0aGF0IGZhaWxzIHdlIHN0YXJ0IGFnYWluIHdpdGggdGhlIG1heCBwYXJhbWV0ZXJzLiBUaGUK
Pj4gPiA+ID4gZG93bnNpZGUgaXMgcHJvYmFibHkgYW4gZXh0cmEgbW9kZXNldCB3aGVuIHdlIHN3
aXRjaCBzdHJhdGVnaWVzIGJ1dAo+PiA+ID4gPiBJIGRvbid0IHNlZSBhIGdvb2Qgd2F5IHRvIGF2
b2lkIHRoYXQuCj4+ID4gPiA+Cj4+ID4gPiA+IEZvciBhIGJpdCBvZiBoaXN0b3J5IHdlIGZpcnN0
IHRyaWVkIHRvIGdvIGZvciB0aGUgZmFzdCtuYXJyb3cgaW4KPj4gPiA+ID4gY29tbWl0IDc3Njlk
YjU4ODM4NCAoImRybS9pOTE1L2RwOiBvcHRpbWl6ZSBlRFAgMS40KyBsaW5rIGNvbmZpZwo+PiA+
ID4gPiBmYXN0IGFuZCBuYXJyb3ciKS4gYnV0IHRoYXQgaGFkIHRvIGJlIHJldmVydGVkIGR1ZSB0
byByZWdyZXNzaW9uCj4+ID4gPiA+IG9uIG9sZGVyIHBhbmVscyBpbiBjb21taXQgZjExY2IxYzE5
YWQwICgiZHJtL2k5MTUvZHA6IHJldmVydCBiYWNrCj4+ID4gPiA+IHRvIG1heCBsaW5rIHJhdGUg
YW5kIGxhbmUgY291bnQgb24gZURQIikuIFNvIG5vdyB3ZSB0cnkgdG8gZ2V0Cj4+ID4gPiA+IHRo
ZSBiZXN0IG9mIGJvdGggd29ybGRzIGJ5IHVzaW5nIGJvdGggc3RyYXRlZ2llcy4KPj4gPiA+Cj4+
ID4gPiBQdXNoZWQuIEZpbmdlcnMgY3Jvc3NlZCBmb3Igbm8gcmVncmVzc2lvbnMuLi4KPj4gPiA+
Cj4+ID4gPiAtLQo+PiA+ID4gVmlsbGUgU3lyasOkbMOkCj4+ID4gPiBJbnRlbAo+PiA+ID4KPj4g
Pgo+Pgo+Pgo+Pgo+PgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
