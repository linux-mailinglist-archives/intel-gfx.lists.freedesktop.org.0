Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACF1118C9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 14:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151F2893E7;
	Thu,  2 May 2019 12:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D21B893E7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 12:14:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 05:14:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="169895256"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 05:14:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190430142901.7302-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190430142901.7302-1-ville.syrjala@linux.intel.com>
Date: Thu, 02 May 2019 15:16:25 +0300
Message-ID: <874l6doxuu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Don't skip audio enable if
 ELD is bogus
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

T24gVHVlLCAzMCBBcHIgMjAxOSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBXZSd2ZSBhbHJlYWR5IGNvbW1pdHRlZCB0byBlbmFibGluZyBh
dWRpbyB3aGVuIGludGVsX2F1ZGlvX2NvZGVjX2VuYWJsZSgpCj4gaXMgY2FsbGVkLiBXZSBjYW4n
dCBiYWNrIG91dCBldmVuIGlmIHRoZSBFTEQgaGFzIHR1cm5lZCBzb3VyIGluIHRoZQo+IG1lYW50
aW1lLiBTbyBqdXN0IHNwZXcgc29tZSBkZWJ1ZyBsb2cgYW5kIHBsb3cgYWhlYWQuIE90aGVyd2lz
ZSB0aGUKPiBzdGF0ZSBjaGVja2VyIGdldHMgdW5oYXBweSB3aGVuIGF1ZGlvIGlzbid0IGVuYWJs
ZWQgd2hlbiBpdCBpcwo+IGV4cGVjdGVkIHRvIGJlLgo+Cj4gSSBzdXBwb3NlIHdlIHJlYWxseSBv
dWdodCB0byBwcmVjb21wdXRlIHRoZSBFTEQgYXMgd2VsbCwgYnV0Cj4gbGV0J3MganVzdCB0b3Nz
IGluIGEgRklYTUUgZm9yIHRoZSBmdXR1cmUuCj4KPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzODQxCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfYXVkaW8uYyB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfYXVkaW8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F1ZGlv
LmMKPiBpbmRleCBiY2E0Y2MwMjVkM2QuLjY4YTI0ZGFkYTQ0YyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfYXVkaW8uYwo+IEBAIC02NDQsOCArNjQ0LDEwIEBAIHZvaWQgaW50ZWxfYXVkaW9f
Y29kZWNfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJZW51bSBwb3J0
IHBvcnQgPSBlbmNvZGVyLT5wb3J0Owo+ICAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+
ICAKPiArCS8qIEZJWE1FIHByZWNvbXB1dGUgdGhlIEVMRCBpbiAuY29tcHV0ZV9jb25maWcoKSAq
Lwo+ICAJaWYgKCFjb25uZWN0b3ItPmVsZFswXSkKPiAtCQlyZXR1cm47Cj4gKwkJRFJNX0RFQlVH
X0tNUygiQm9ndXMgRUxEIG9uIFtDT05ORUNUT1I6JWQ6JXNdXG4iLAo+ICsJCQkgICAgICBjb25u
ZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+bmFtZSk7Cj4gIAo+ICAJRFJNX0RFQlVHX0RSSVZF
UigiRUxEIG9uIFtDT05ORUNUT1I6JWQ6JXNdLCBbRU5DT0RFUjolZDolc11cbiIsCj4gIAkJCSBj
b25uZWN0b3ItPmJhc2UuaWQsCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
