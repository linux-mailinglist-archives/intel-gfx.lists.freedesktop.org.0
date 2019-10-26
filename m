Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F35E594F
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 10:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DD189B57;
	Sat, 26 Oct 2019 08:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C3989B57
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 08:59:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 01:59:26 -0700
X-IronPort-AV: E=Sophos;i="5.68,231,1569308400"; d="scan'208";a="192772441"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 01:59:24 -0700
Date: Sat, 26 Oct 2019 11:57:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>,
 Arthur J Runyan <arthur.j.runyan@intel.com>
Message-ID: <20191026085754.GA13469@ideak-desk.fi.intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025230623.27829-6-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/tgl: Add AUX B & C to
 DC_OFF_POWER_DOMAINS
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MDY6MjNQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPdXIgVEdMIENJIHBsYXRmb3JtcyBhcmUgcnVubmluZyBpbnRvIGNhc2VzIHdoZXJlIGF1
eCB0cmFuc2FjdGlvbnMgaGF2ZQo+IGZhaWxlZCB0byBjb21wbGV0ZSBvciBkZWNsYXJlIGEgdGlt
ZW91dCB3ZWxsIGFmdGVyIHRoZSB0aW1lb3V0IGxpbWl0Cj4gdGhhdCB0aGUgaGFyZHdhcmUgaXMg
c3VwcG9zZWQgdG8gZW5mb3JjZS4gIEZyb20gdGhlIGxvZ3MgaXQgYXBwZWFycyB0aGF0Cj4gdGhl
c2UgZmFpbHVyZXMgYXJpc2Ugd2hlbiBhdXggdHJhbnNhY3Rpb25zIGhhcHBlbiBhZnRlciB3ZSd2
ZSBlbnRlcmVkCj4gREM2LiAgT24gVEdMIEFVWCBCICYgQyBhcmUgaW4gUEcxIChtYW5hZ2VkIGJ5
IHRoZSBETUMgZmlybXdhcmUpIHJhdGhlcgo+IHRoYW4gUEczIGFzIHRoZXkgd2VyZSBvbiBJQ0wu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KCkl0J3Mgbm90IHNwZWNpZmllZCB0aGF0IHdlIGhhdmUgdG8gZGlzYWJsZSBEQzUvNiBmb3Ig
QVVYIHRyYW5zZmVycyBvbgpwb3J0cyBCL0MsIGJ1dCBpdCBtYWtlcyBzZW5zZSB0byBtZToKUmV2
aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KClRoZSBDb21ibyBQSFkg
SFcgY29udGV4dCBuZWVkcyB0byBiZSByZXN0b3JlZCBhZnRlciBEQzUvNiBleGl0IHRvbywgc28K
SSB0aGluayBETUMgZG9lc24ndCByZXN0b3JlIHRoZSBBVVggSFcgY29udGV4dCBlaXRoZXIuIEFk
ZGluZyBBcnQgdG8KY29uZmlybSB0aGF0LgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+IGluZGV4IDZmOWU3OTI3ZTI0OC4uNzA3YWMxMTBlMjcx
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKPiBAQCAtMjY4Miw2ICsyNjgyLDggQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlUR0xfUFdfMl9Q
T1dFUl9ET01BSU5TIHwJCQlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9NT0RFU0VUKSB8CQkJ
XAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0EpIHwJCQlcCj4gKwlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVVhfQikgfAkJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9DKSB8CQkJ
XAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fSU5JVCkpCj4gIAo+ICAjZGVmaW5lIFRHTF9ERElf
SU9fRF9UQzFfUE9XRVJfRE9NQUlOUyAoCVwKPiAtLSAKPiAyLjIxLjAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
