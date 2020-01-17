Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9351406EF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 10:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E2D6F4BA;
	Fri, 17 Jan 2020 09:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6AE6F4BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 09:51:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 01:51:18 -0800
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="218860302"
Received: from ppiorkow-desk.igk.intel.com (HELO localhost) ([172.28.172.35])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Jan 2020 01:51:17 -0800
Date: Fri, 17 Jan 2020 10:51:24 +0100
From: Piotr =?iso-8859-1?Q?Pi=F3rkowski?= <piotr.piorkowski@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20200117095124.GA15960@intel.com>
References: <20200117082039.65644-1-michal.wajdeczko@intel.com>
 <20200117082039.65644-5-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117082039.65644-5-michal.wajdeczko@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/guc: Switch to CT_ERROR in
 ct_read
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+IHdyb3RlIG9uIHBp
xIUgWzIwMjAtc3R5LTE3IDA4OjIwOjM4ICswMDAwXToKPiBBcyB3ZSBub3cgaGF2ZSAiY3QiIGF2
YWlsYWJsZSBpbiBjdF9yZWFkIGZ1bmN0aW9uIHdlIGNhbiBzd2l0Y2gKPiBmcm9tIGdlbmVyaWMg
RFJNX0VSUk9SIHRvIG91ciBjdXN0b20gQ1RfRVJST1IuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYyB8IDE2ICsrKysrKysrLS0tLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2N0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYwo+IGluZGV4IGI4NGI2ZWMzN2I4
ZC4uMDk0Njc3MjhiYzliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19jdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX2N0LmMKPiBAQCAtNjIwLDEyICs2MjAsMTIgQEAgc3RhdGljIGludCBjdF9yZWFkKHN0cnVj
dCBpbnRlbF9ndWNfY3QgKmN0LCB1MzIgKmRhdGEpCj4gIAkvKiBtZXNzYWdlIGxlbiB3aXRoIGhl
YWRlciAqLwo+ICAJbGVuID0gY3RfaGVhZGVyX2dldF9sZW4oZGF0YVswXSkgKyAxOwo+ICAJaWYg
KHVubGlrZWx5KGxlbiA+ICh1MzIpYXZhaWxhYmxlKSkgewo+IC0JCURSTV9FUlJPUigiQ1Q6IGlu
Y29tcGxldGUgbWVzc2FnZSAlKnBoICUqcGggJSpwaFxuIiwKPiAtCQkJICA0LCBkYXRhLAo+IC0J
CQkgIDQgKiAoaGVhZCArIGF2YWlsYWJsZSAtIDEgPiBzaXplID8KPiAtCQkJICAgICAgIHNpemUg
LSBoZWFkIDogYXZhaWxhYmxlIC0gMSksICZjbWRzW2hlYWRdLAo+IC0JCQkgIDQgKiAoaGVhZCAr
IGF2YWlsYWJsZSAtIDEgPiBzaXplID8KPiAtCQkJICAgICAgIGF2YWlsYWJsZSAtIDEgLSBzaXpl
ICsgaGVhZCA6IDApLCAmY21kc1swXSk7Cj4gKwkJQ1RfRVJST1IoY3QsICJJbmNvbXBsZXRlIG1l
c3NhZ2UgJSpwaCAlKnBoICUqcGhcbiIsCj4gKwkJCSA0LCBkYXRhLAo+ICsJCQkgNCAqIChoZWFk
ICsgYXZhaWxhYmxlIC0gMSA+IHNpemUgPwo+ICsJCQkgICAgICBzaXplIC0gaGVhZCA6IGF2YWls
YWJsZSAtIDEpLCAmY21kc1toZWFkXSwKPiArCQkJIDQgKiAoaGVhZCArIGF2YWlsYWJsZSAtIDEg
PiBzaXplID8KPiArCQkJICAgICAgYXZhaWxhYmxlIC0gMSAtIHNpemUgKyBoZWFkIDogMCksICZj
bWRzWzBdKTsKPiAgCQlnb3RvIGNvcnJ1cHRlZDsKPiAgCX0KPiAgCj4gQEAgLTYzOSw4ICs2Mzks
OCBAQCBzdGF0aWMgaW50IGN0X3JlYWQoc3RydWN0IGludGVsX2d1Y19jdCAqY3QsIHUzMiAqZGF0
YSkKPiAgCXJldHVybiAwOwo+ICAKPiAgY29ycnVwdGVkOgo+IC0JRFJNX0VSUk9SKCJDVDogQ29y
cnVwdGVkIGRlc2NyaXB0b3IgYWRkcj0lI3ggaGVhZD0ldSB0YWlsPSV1IHNpemU9JXVcbiIsCj4g
LQkJICBkZXNjLT5hZGRyLCBkZXNjLT5oZWFkLCBkZXNjLT50YWlsLCBkZXNjLT5zaXplKTsKPiAr
CUNUX0VSUk9SKGN0LCAiQ29ycnVwdGVkIGRlc2NyaXB0b3IgYWRkcj0lI3ggaGVhZD0ldSB0YWls
PSV1IHNpemU9JXVcbiIsCj4gKwkJIGRlc2MtPmFkZHIsIGRlc2MtPmhlYWQsIGRlc2MtPnRhaWws
IGRlc2MtPnNpemUpOwo+ICAJZGVzYy0+aXNfaW5fZXJyb3IgPSAxOwo+ICAJcmV0dXJuIC1FUElQ
RTsKPiAgfQoKTEdUTSAKUmV2aWV3ZWQtYnk6IFBpb3RyIFBpw7Nya293c2tpIDxwaW90ci5waW9y
a293c2tpQGludGVsLmNvbT4KCj4gLS0gCj4gMi4xOS4yCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
