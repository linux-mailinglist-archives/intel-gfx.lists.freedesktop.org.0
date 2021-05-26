Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014D9391A6B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5FA6EDBE;
	Wed, 26 May 2021 14:38:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22EE36EDA3;
 Wed, 26 May 2021 14:38:01 +0000 (UTC)
IronPort-SDR: KWNmkJ1CM7Zmg8P2Lkwxr4o2gruB2eJVXF0B/1Uytb5VdX3IjDFxCvuInPuaUN6MmpjUg0EVln
 tM8dZw3sCDdw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="189857485"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="189857485"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:38:01 -0700
IronPort-SDR: 71E0ovy/GqX7eJCY2VdooB68HT3FQCbFmfiezQn9gjK2jtrNXaw6/RwMPiy8Fj/uxvgwxaMGQf
 HYwe7MJMOKBA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476968841"
Received: from astiegle-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.167])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20210526141946.2347085-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210526100006.2205062-1-tvrtko.ursulin@linux.intel.com>
 <20210526141946.2347085-1-tvrtko.ursulin@linux.intel.com>
Date: Wed, 26 May 2021 17:37:54 +0300
Message-ID: <87fsy9blx9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/params: Align visibility of
 device level and global modparams
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNiBNYXkgMjAyMSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPgo+IFdlIGhhdmUgYSBmZXcgbW9kcGFyYW1zIHdoaWNoIGdldCBjb25kaXRp
b25hbHkgZXhwb3NlZCBiYXNlZCBvbiBhIEtjb25maWcKPiBvcHRpb25zIGFuZCBpbiBtb3N0IGNh
c2VzIHRoaXMgYWxzbyBtZWFucyBwb3J0aW9ucyBvZiB0aGUgZHJpdmVyCj4gaW1wbGVtZW50aW5n
IHRoZSByZXNwZWN0aXZlIGZlYXR1cmUgYXJlIGFsc28gbGVmdCBvdXQuCj4KPiBBbGlnbiB0aGUg
dmlzaWJpbGl0eSBvZiBkZXZpY2UgbGV2ZWwgYW5kIGdsb2JhbCBtb2RwYXJhbXMgdG8gbWFrZSB0
aGVtCj4gY29uc2lzdGVudCBpbiB0aGlzIHJlc3BlY3QuCj4KPiB2MjoKPiAgKiBGaXggbWlzcGxh
Y2VkIHBhcmVudGhlc2VzLgo+Cj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKSSdk
IGhhcHBpbHkgYWNjZXB0IHBhdGNoZXMgcmVtb3Zpbmcgc29tZSBvZiB0aGUgbW9kdWxlIHBhcmFt
cywgYW5kIGp1c3QKbGVhdmluZyB0aGUgZGVidWdmcyBkZXZpY2UgcGFyYW1zIGluIHBsYWNlLiA7
KQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8IDggKysrKy0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAo+IGluZGV4IDE0Y2Q2NGNjNjFkMC4uNGExMTRh
NWFkMDAwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4gQEAgLTcxLDE4ICs3
MSwxOCBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7Cj4gIAlwYXJhbShpbnQsIGZhc3Rib290LCAtMSwg
MDYwMCkgXAo+ICAJcGFyYW0oaW50LCBlbmFibGVfZHBjZF9iYWNrbGlnaHQsIC0xLCAwNjAwKSBc
Cj4gIAlwYXJhbShjaGFyICosIGZvcmNlX3Byb2JlLCBDT05GSUdfRFJNX0k5MTVfRk9SQ0VfUFJP
QkUsIDA0MDApIFwKPiAtCXBhcmFtKHVuc2lnbmVkIGxvbmcsIGZha2VfbG1lbV9zdGFydCwgMCwg
MDQwMCkgXAo+IC0JcGFyYW0odW5zaWduZWQgaW50LCByZXF1ZXN0X3RpbWVvdXRfbXMsIENPTkZJ
R19EUk1fSTkxNV9SRVFVRVNUX1RJTUVPVVQsIDA2MDApIFwKPiArCXBhcmFtKHVuc2lnbmVkIGxv
bmcsIGZha2VfbG1lbV9zdGFydCwgMCwgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfVU5TVEFC
TEVfRkFLRV9MTUVNKSA/IDA0MDAgOiAwKSBcCj4gKwlwYXJhbSh1bnNpZ25lZCBpbnQsIHJlcXVl
c3RfdGltZW91dF9tcywgQ09ORklHX0RSTV9JOTE1X1JFUVVFU1RfVElNRU9VVCwgQ09ORklHX0RS
TV9JOTE1X1JFUVVFU1RfVElNRU9VVCA/IDA2MDAgOiAwKSBcCj4gIAkvKiBsZWF2ZSBib29scyBh
dCB0aGUgZW5kIHRvIG5vdCBjcmVhdGUgaG9sZXMgKi8gXAo+ICAJcGFyYW0oYm9vbCwgZW5hYmxl
X2hhbmdjaGVjaywgdHJ1ZSwgMDYwMCkgXAo+ICAJcGFyYW0oYm9vbCwgbG9hZF9kZXRlY3RfdGVz
dCwgZmFsc2UsIDA2MDApIFwKPiAgCXBhcmFtKGJvb2wsIGZvcmNlX3Jlc2V0X21vZGVzZXRfdGVz
dCwgZmFsc2UsIDA2MDApIFwKPiAtCXBhcmFtKGJvb2wsIGVycm9yX2NhcHR1cmUsIHRydWUsIDA2
MDApIFwKPiArCXBhcmFtKGJvb2wsIGVycm9yX2NhcHR1cmUsIHRydWUsIElTX0VOQUJMRUQoQ09O
RklHX0RSTV9JOTE1X0NBUFRVUkVfRVJST1IpID8gMDYwMCA6IDApIFwKPiAgCXBhcmFtKGJvb2ws
IGRpc2FibGVfZGlzcGxheSwgZmFsc2UsIDA0MDApIFwKPiAgCXBhcmFtKGJvb2wsIHZlcmJvc2Vf
c3RhdGVfY2hlY2tzLCB0cnVlLCAwKSBcCj4gIAlwYXJhbShib29sLCBudWNsZWFyX3BhZ2VmbGlw
LCBmYWxzZSwgMDQwMCkgXAo+ICAJcGFyYW0oYm9vbCwgZW5hYmxlX2RwX21zdCwgdHJ1ZSwgMDYw
MCkgXAo+IC0JcGFyYW0oYm9vbCwgZW5hYmxlX2d2dCwgZmFsc2UsIDA0MDApCj4gKwlwYXJhbShi
b29sLCBlbmFibGVfZ3Z0LCBmYWxzZSwgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfR1ZUKSA/
IDA0MDAgOiAwKQo+ICAKPiAgI2RlZmluZSBNRU1CRVIoVCwgbWVtYmVyLCAuLi4pIFQgbWVtYmVy
Owo+ICBzdHJ1Y3QgaTkxNV9wYXJhbXMgewoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
