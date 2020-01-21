Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F68F1440DD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 16:50:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F356ED6A;
	Tue, 21 Jan 2020 15:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443B76ED62
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 15:50:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 07:49:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="219994982"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 07:49:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200121143252.GB13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200117150235.22471-1-jani.nikula@intel.com>
 <20200121143252.GB13686@intel.com>
Date: Tue, 21 Jan 2020 17:49:39 +0200
Message-ID: <87wo9kern0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: debug log max vswing and
 pre-emphasis
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

T24gVHVlLCAyMSBKYW4gMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDU6MDI6MzVQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFByb3ZpZGUgc2xpZ2h0bHkgbW9yZSBkZWJ1Z2dp
bmcgaGVscC4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Cj4KPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KClB1c2hlZCB0byBkaW5xLCB0aGFua3MgZm9yIHRoZSByZXZpZXcu
CgpCUiwKSmFuaS4KCj4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgfCAxMyArKysrKysrKy0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+PiBpbmRleCA0MDc0ZDgzYjFhNWYuLmMyNmJlNDQyMWYwMSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBAQCAtNDE0MiwxMSArNDE0
MiwxNCBAQCBpbnRlbF9kcF9zZXRfc2lnbmFsX2xldmVscyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQo+PiAgCWlmIChtYXNrKQo+PiAgCQlEUk1fREVCVUdfS01TKCJVc2luZyBzaWduYWwgbGV2
ZWxzICUwOHhcbiIsIHNpZ25hbF9sZXZlbHMpOwo+PiAgCj4+IC0JRFJNX0RFQlVHX0tNUygiVXNp
bmcgdnN3aW5nIGxldmVsICVkXG4iLAo+PiAtCQl0cmFpbl9zZXQgJiBEUF9UUkFJTl9WT0xUQUdF
X1NXSU5HX01BU0spOwo+PiAtCURSTV9ERUJVR19LTVMoIlVzaW5nIHByZS1lbXBoYXNpcyBsZXZl
bCAlZFxuIiwKPj4gLQkJKHRyYWluX3NldCAmIERQX1RSQUlOX1BSRV9FTVBIQVNJU19NQVNLKSA+
Pgo+PiAtCQkJRFBfVFJBSU5fUFJFX0VNUEhBU0lTX1NISUZUKTsKPj4gKwlEUk1fREVCVUdfS01T
KCJVc2luZyB2c3dpbmcgbGV2ZWwgJWQlc1xuIiwKPj4gKwkJICAgICAgdHJhaW5fc2V0ICYgRFBf
VFJBSU5fVk9MVEFHRV9TV0lOR19NQVNLLAo+PiArCQkgICAgICB0cmFpbl9zZXQgJiBEUF9UUkFJ
Tl9NQVhfU1dJTkdfUkVBQ0hFRCA/ICIgKG1heCkiIDogIiIpOwo+PiArCURSTV9ERUJVR19LTVMo
IlVzaW5nIHByZS1lbXBoYXNpcyBsZXZlbCAlZCVzXG4iLAo+PiArCQkgICAgICAodHJhaW5fc2V0
ICYgRFBfVFJBSU5fUFJFX0VNUEhBU0lTX01BU0spID4+Cj4+ICsJCSAgICAgIERQX1RSQUlOX1BS
RV9FTVBIQVNJU19TSElGVCwKPj4gKwkJICAgICAgdHJhaW5fc2V0ICYgRFBfVFJBSU5fTUFYX1BS
RV9FTVBIQVNJU19SRUFDSEVEID8KPj4gKwkJICAgICAgIiAobWF4KSIgOiAiIik7Cj4+ICAKPj4g
IAlpbnRlbF9kcC0+RFAgPSAoaW50ZWxfZHAtPkRQICYgfm1hc2spIHwgc2lnbmFsX2xldmVsczsK
Pj4gIAo+PiAtLSAKPj4gMi4yMC4xCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
