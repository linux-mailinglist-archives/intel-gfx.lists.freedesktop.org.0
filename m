Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B009AF95C3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4096E4AA;
	Tue, 12 Nov 2019 16:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2861C6E25D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:37:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:37:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="207527911"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga006.jf.intel.com with ESMTP; 12 Nov 2019 08:37:27 -0800
Date: Tue, 12 Nov 2019 08:38:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191112163834.GJ21445@mdroper-desk1.amr.corp.intel.com>
References: <20191108214251.79305-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108214251.79305-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not warn late about hdmi on
 port A
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMDE6NDI6NTFQTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFRoZSB3YXJuaW5nIHNob3VsZCBiZSBqdXN0IGEgd2FybmluZy4gV2hlcmUgaXQg
aXMgY3VycmVudGx5IGlzIHdyb25nCj4gc2luY2Ugd2UgYWxyZWFkeSByZWdpc3RlcmVkIHRoZSBj
b25uZWN0b3Igb24gZHJtLCBtZWFuaW5nIGl0IGRpZXMgbGF0ZXIKPiBvbiBhIE5VTEwgcG9pbnRl
ciBkZXJlZiBpZiB0aGUgVkJULW92ZXJyaWRpbmcgd2UgaGF2ZSBpcyByZW1vdmVkLiBNb3ZlCj4g
dGhlIHdhcm5pbmcgdXAuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIHwgNSArKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jCj4gaW5kZXggZTA4NGMyZjc1Mzc5Li5lZDRhNjhmYjM1MWYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IEBAIC0zMTQwLDYgKzMxNDAsOSBA
QCB2b2lkIGludGVsX2hkbWlfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqaW50ZWxfZGlnX3BvcnQsCj4gIAlEUk1fREVCVUdfS01TKCJBZGRpbmcgSERNSSBjb25uZWN0
b3Igb24gW0VOQ09ERVI6JWQ6JXNdXG4iLAo+ICAJCSAgICAgIGludGVsX2VuY29kZXItPmJhc2Uu
YmFzZS5pZCwgaW50ZWxfZW5jb2Rlci0+YmFzZS5uYW1lKTsKPiAgCj4gKwlpZiAoV0FSTl9PTihw
b3J0ID09IFBPUlRfQSkpCj4gKwkJcmV0dXJuOwo+ICsKPiAgCWlmIChXQVJOKGludGVsX2RpZ19w
b3J0LT5tYXhfbGFuZXMgPCA0LAo+ICAJCSAiTm90IGVub3VnaCBsYW5lcyAoJWQpIGZvciBIRE1J
IG9uIFtFTkNPREVSOiVkOiVzXVxuIiwKPiAgCQkgaW50ZWxfZGlnX3BvcnQtPm1heF9sYW5lcywg
aW50ZWxfZW5jb2Rlci0+YmFzZS5iYXNlLmlkLAo+IEBAIC0zMTU5LDggKzMxNjIsNiBAQCB2b2lk
IGludGVsX2hkbWlfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50
ZWxfZGlnX3BvcnQsCj4gIAo+ICAJaW50ZWxfaGRtaS0+ZGRjX2J1cyA9IGludGVsX2hkbWlfZGRj
X3BpbihkZXZfcHJpdiwgcG9ydCk7Cj4gIAo+IC0JaWYgKFdBUk5fT04ocG9ydCA9PSBQT1JUX0Ep
KQo+IC0JCXJldHVybjsKPiAgCWludGVsX2VuY29kZXItPmhwZF9waW4gPSBpbnRlbF9ocGRfcGlu
X2RlZmF1bHQoZGV2X3ByaXYsIHBvcnQpOwo+ICAKPiAgCWlmIChIQVNfRERJKGRldl9wcml2KSkK
PiAtLSAKPiAyLjI0LjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVy
ClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2
LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
