Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E51A35F0A1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780B36E8FF;
	Wed, 14 Apr 2021 09:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C3C6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:18:53 +0000 (UTC)
IronPort-SDR: 2Osz9cRY5Twc6cVYoPTtSqmFBnRJdayHVwR8/GkJFwfwg/9Werb0EOG/K7aFb+UTtEmGmTWh0d
 224YHWYjGryA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="181723103"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="181723103"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:18:52 -0700
IronPort-SDR: 5SJWDsfIjSwar+MQojkRdwUc5iAPbkTkH+bDQ9E+pjBnCgz0X5YhUg81Zwgwm2YT3knlVTkLqt
 5qqo2XIreP6g==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="461145563"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:18:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210412054607.18133-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <20210412054607.18133-3-ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 12:18:48 +0300
Message-ID: <87lf9lfclj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Restore lost glk ccs w/a
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

T24gTW9uLCAxMiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBXZSBsb3N0IGEgQ0NTIHJlbGF0ZWQgdy9hIG9uIGdsayB3aGVu
IHRoZSBkaXNwbGF5IHZlcnNpb24KPiBiZWNhbWUgMTAgaW5zdGVhZCBvZiA5LiBSZXN0b3JlIHRo
ZSBjb3JyZWN0IGNoZWNrLgo+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+Cj4gRml4ZXM6IDJiNWE0NTYyZWRkMCAoImRybS9pOTE1L2Rpc3BsYXk6IFNpbXBsaWZ5
IEdMSyBkaXNwbGF5IHZlcnNpb24gdGVzdHMiKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA0MTFiNDZjMDEyZjguLjdlYWM4OTNiNGY5
NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gQEAgLTE0MDYsNyArMTQwNiw4IEBAIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQoY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkKPiAgCQkgKiByZXF1
aXJlIHRoZSBlbnRpcmUgZmIgdG8gYWNjb21tb2RhdGUgdGhhdCB0byBhdm9pZAo+ICAJCSAqIHBv
dGVudGlhbCBydW50aW1lIGVycm9ycyBhdCBwbGFuZSBjb25maWd1cmF0aW9uIHRpbWUuCj4gIAkJ
ICovCj4gLQkJaWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCA5KSAmJiBjb2xvcl9wbGFuZSA9
PSAwICYmIGZiLT53aWR0aCA+IDM4NDApCj4gKwkJaWYgKChJU19ESVNQTEFZX1ZFUihkZXZfcHJp
diwgOSkgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpICYmCj4gKwkJICAgIGNvbG9yX3BsYW5l
ID09IDAgJiYgZmItPndpZHRoID4gMzg0MCkKPiAgCQkJdGlsZV93aWR0aCAqPSA0Owo+ICAJCS8q
Cj4gIAkJICogVGhlIG1haW4gc3VyZmFjZSBwaXRjaCBtdXN0IGJlIHBhZGRlZCB0byBhIG11bHRp
cGxlIG9mIGZvdXIKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
