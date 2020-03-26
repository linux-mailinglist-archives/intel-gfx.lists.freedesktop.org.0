Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7295B193B39
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 09:43:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE406E0DB;
	Thu, 26 Mar 2020 08:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B2A6E0DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 08:43:18 +0000 (UTC)
IronPort-SDR: XL6yqoG3Bx34dIAfitNDhVeG3QmIcHesihFcizmA4i6K/QlQtvoniKizd/SMHXlmpHXXlDjj+J
 jK4RqTHRUJ1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 01:43:18 -0700
IronPort-SDR: 1F/BOCR1/thHynU4oCiY1FojYlZF1Ac2w8vrZRh6jRMmvSM+vmt+9VVCL1oZ6JbS4KVHh0GnE6
 ksEwacmPDFNw==
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; d="scan'208";a="420616653"
Received: from mschuste-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.32.130])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 01:43:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200326082838.16357-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200326082838.16357-1-chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 10:43:12 +0200
Message-ID: <87d08zik0v.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove useless but deadly
 local
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNiBNYXIgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IEJld2FyZSBkZXJlZmVyZW5jaW5nIHRoZSBOVUxMIHBvaW50ZXIgcHJpb3Ig
dG8gY2hlY2tpbmcgZm9yIGl0cwo+IGV4aXN0ZW5jZS4KCkh1aCwgSSBkb24ndCBzZWUgdGhlIGZh
aWx1cmUgbW9kZS4gUGxlYXNlIGVubGlnaHRlbiBtZS4KCkJSLApKYW5pLgoKPgo+IEZpeGVzOiA0
MTkxOTA0MjljZDEgKCJkcm0vaTkxNS9oZG1pOiB1c2Ugc3RydWN0IGRybV9kZXZpY2UgYmFzZWQg
bG9nZ2luZyIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IFdhbWJ1aSBLYXJ1Z2EgPHdhbWJ1aS5rYXJ1Z2F4QGdtYWlsLmNvbT4K
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogIlZpbGxlIFN5
cmrDpGzDpCIgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDUgKystLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gaW5kZXggMzk1ZGMxOTJiYWEwLi4wMDc2YWJj
NjM4NTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+
IEBAIC02OTEsNyArNjkxLDYgQEAgdm9pZCBpbnRlbF9yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJICB1bmlvbiBoZG1pX2luZm9mcmFtZSAqZnJhbWUp
Cj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZW5j
X3RvX2RpZ19wb3J0KGVuY29kZXIpOwo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKPiAgCXU4IGJ1ZmZlcltW
SURFT19ESVBfREFUQV9TSVpFXTsKPiAgCWludCByZXQ7Cj4gIAo+IEBAIC03MDgsMTMgKzcwNywx
MyBAQCB2b2lkIGludGVsX3JlYWRfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ICAJLyogc2VlIGNvbW1lbnQgYWJvdmUgZm9yIHRoZSByZWFzb24gZm9yIHRoaXMgb2Zm
c2V0ICovCj4gIAlyZXQgPSBoZG1pX2luZm9mcmFtZV91bnBhY2soZnJhbWUsIGJ1ZmZlciArIDEs
IHNpemVvZihidWZmZXIpIC0gMSk7Cj4gIAlpZiAocmV0KSB7Cj4gLQkJZHJtX2RiZ19rbXMoJmk5
MTUtPmRybSwKPiArCQlkcm1fZGJnX2ttcyhlbmNvZGVyLT5iYXNlLmRldiwKPiAgCQkJICAgICJG
YWlsZWQgdG8gdW5wYWNrIGluZm9mcmFtZSB0eXBlIDB4JTAyeFxuIiwgdHlwZSk7Cj4gIAkJcmV0
dXJuOwo+ICAJfQo+ICAKPiAgCWlmIChmcmFtZS0+YW55LnR5cGUgIT0gdHlwZSkKPiAtCQlkcm1f
ZGJnX2ttcygmaTkxNS0+ZHJtLAo+ICsJCWRybV9kYmdfa21zKGVuY29kZXItPmJhc2UuZGV2LAo+
ICAJCQkgICAgIkZvdW5kIHRoZSB3cm9uZyBpbmZvZnJhbWUgdHlwZSAweCV4IChleHBlY3RlZCAw
eCUwMngpXG4iLAo+ICAJCQkgICAgZnJhbWUtPmFueS50eXBlLCB0eXBlKTsKPiAgfQoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
