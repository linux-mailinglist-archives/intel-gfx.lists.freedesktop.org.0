Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CED159486
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CA489F2E;
	Tue, 11 Feb 2020 16:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E0EC89F2E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:12:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:12:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226550953"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:12:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <871rr2w4n5.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200210184057.296698-1-jose.souza@intel.com>
 <871rr2w4n5.fsf@intel.com>
Date: Tue, 11 Feb 2020 18:12:26 +0200
Message-ID: <87a75pyufp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: Set intel_dp_set_m_n() for
 MST slaves
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMCBGZWIgMjAyMCwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gTW9uLCAxMCBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+PiBDb21taXQgMWM5ZDJlYjI0MTUzICgiZHJtL2k5
MTU6IG1vdmUgaW50ZWxfZHBfc2V0X21fbigpIHRvIGVuY29kZXIgZm9yCj4+IERESSBwbGF0Zm9y
bXMiKSBtb3ZlZCB0aGUgaW50ZWxfZHBfc2V0X21fbigpIGZyb20gaHN3X2NydGNfZW5hYmxlKCkK
Pj4gdG8gaW50ZWxfZGRpX3ByZV9lbmFibGVfZHAoKSBidXQgaXQgbWlzc2VkIGFkZCBpdCB0bwo+
PiBpbnRlbF9tc3RfcHJlX2VuYWJsZV9kcCgpIGNhdXNpbmcgTVNUIHNsYXZlcyB0byBub3Qgd29y
ay4KPj4KPj4gRml4ZXM6IDFjOWQyZWIyNDE1MyAoImRybS9pOTE1OiBtb3ZlIGludGVsX2RwX3Nl
dF9tX24oKSB0byBlbmNvZGVyIGZvciBEREkgcGxhdGZvcm1zIikKPj4gQ2M6IFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4KPiBEYW1uIGl0LCB0aGlzIGlzIHRoZSBzZWNv
bmQgRFAgTVNUIHRoaW5nIEkgbWlzc2VkIGluIHRoZSBzYW1lCj4gc2VyaWVzLiAqZmFjZXBhbG0q
LiBUaGUgZmlyc3QgZ29vZi11cCB3YXMgZml4ZWQgaW4gY29tbWl0IDI3NDk1OTYyMjAxNwo+ICgi
ZHJtL2k5MTUvbXN0OiBmaXggcGlwZSBhbmQgdmJsYW5rIGVuYWJsZSIpLiBXZSByZWFsbHkgbmVl
ZCBtb3JlIE1TVCBpbgo+IENJLgoKQWN0dWFsbHksIHdvbmRlcmluZyBpZiB0aGUgaW50ZWxfZHBf
c2V0X21fbigpIGNhbGwgaW4KaW50ZWxfZGRpX3ByZV9lbmFibGVfZHAoKSBub3cgbmVlZHMgdG8g
YmUgd3JhcHBlZCBpbgoKCWlmICghaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRF
TF9PVVRQVVRfRFBfTVNUKSkKClNpbWlsYXIgdG8gaW50ZWxfZGRpX3NldF9kcF9tc2EoKS4KCkJS
LApKYW5pLgoKCj4KPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmMgfCAyICsrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+PiBpbmRleCA5Y2Q1
OTE0MTk1M2QuLmQ3YmZhN2MzNTBlOSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCj4+IEBAIC00ODAsNiArNDgwLDggQEAgc3RhdGljIHZvaWQg
aW50ZWxfbXN0X3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+
ICAJCWludGVsX2RkaV9lbmFibGVfcGlwZV9jbG9jayhwaXBlX2NvbmZpZyk7Cj4+ICAKPj4gIAlp
bnRlbF9kZGlfc2V0X2RwX21zYShwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7Cj4+ICsKPj4gKwlp
bnRlbF9kcF9zZXRfbV9uKHBpcGVfY29uZmlnLCBNMV9OMSk7Cj4+ICB9Cj4+ICAKPj4gIHN0YXRp
YyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
