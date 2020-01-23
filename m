Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DB6146B02
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DE36E0AF;
	Thu, 23 Jan 2020 14:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB226E0AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:18:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:18:34 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="220677372"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:18:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200123141034.GS13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200123140004.14136-1-jani.nikula@intel.com>
 <20200123141034.GS13686@intel.com>
Date: Thu, 23 Jan 2020 16:18:30 +0200
Message-ID: <87r1zqcl3d.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND 1/6] drm/i915/dmc: use intel uncore
 functions for forcewake register access
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

T24gVGh1LCAyMyBKYW4gMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDM6NTk6NTlQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE1vdmUgYXdheSBmcm9tIEk5MTVfUkVBRF9GVygp
IGFuZCBJOTE1X1dSSVRFX0ZXKCkgYW5kIHN3aXRjaCB0byB1c2luZwo+PiBpbnRlbF91bmNvcmVf
cmVhZF9mdygpIGFuZCBpbnRlbF91bmNvcmVfd3JpdGVfZncoKSwgcmVzcGVjdGl2ZWx5Lgo+PiAK
Pj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jc3IuYyB8IDMgKystCj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY3NyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+PiBpbmRleCBh
ZTI1OTYwZjc0ZTAuLjZhNDA4ZTExYTNkZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY3NyLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3Ny
LmMKPj4gQEAgLTMxNSw3ICszMTUsOCBAQCB2b2lkIGludGVsX2Nzcl9sb2FkX3Byb2dyYW0oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiAgCXByZWVtcHRfZGlzYWJsZSgpOwo+
PiAgCj4+ICAJZm9yIChpID0gMDsgaSA8IGZ3X3NpemU7IGkrKykKPj4gLQkJSTkxNV9XUklURV9G
VyhDU1JfUFJPR1JBTShpKSwgcGF5bG9hZFtpXSk7Cj4+ICsJCWludGVsX3VuY29yZV93cml0ZV9m
dygmZGV2X3ByaXYtPnVuY29yZSwgQ1NSX1BST0dSQU0oaSksCj4+ICsJCQkJICAgICAgcGF5bG9h
ZFtpXSk7Cj4KPiBXaHkgdW5jb3JlIGluc3RlYWQgb2YgZGU/CgpHb29kIHF1ZXN0aW9uISA6KQoK
QlIsCkphbmkuCgoKPgo+PiAgCj4+ICAJcHJlZW1wdF9lbmFibGUoKTsKPj4gIAo+PiAtLSAKPj4g
Mi4yMC4xCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
