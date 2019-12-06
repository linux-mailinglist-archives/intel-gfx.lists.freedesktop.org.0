Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE3115953
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 23:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A8E6FA9B;
	Fri,  6 Dec 2019 22:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AA26FA9B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 22:28:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 14:28:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,286,1571727600"; d="scan'208";a="224146036"
Received: from mdroper-desk1.amr.corp.intel.com ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 06 Dec 2019 14:28:16 -0800
Date: Fri, 6 Dec 2019 14:28:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191206222816.GB5351@mdroper-desk1.amr.corp.intel.com>
References: <20191206190552.8818-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206190552.8818-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: remove extra debug messages
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

T24gRnJpLCBEZWMgMDYsIDIwMTkgYXQgMTE6MDU6NTJBTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEp1c3QgbGlrZSBpbiA1MjNlMGNjODliODMgKCJkcm0vaTkxNS90Z2w6IGFsbG93
IERWSS9IRE1JIG9uIHBvcnQgQSIpLAo+IHRoZSBwb3J0IGNoZWNrcyB3aGVuIHJlYWRpbmcgdGhl
IFZCVCBjYW4gZWFzaWx5IG5vdCBtYXRjaCB3aGF0IHRoZQo+IHBsYXRmb3JtIHJlYWxseSBleHBv
c2VzLiBIb3dldmVyIGhlcmUgd2Ugb25seSBoYXZlIHNvbWUgYWRkaXRpb25hbCBkZWJ1Zwo+IG1l
c3NhZ2VzIHRoYXQgYXJlIG5vdCBhZGRpbmcgbXVjaCB2YWx1ZTogaW4gdGhlIHByZXZpb3VzIGRl
YnVnIG1lc3NhZ2UKPiB3ZSBhbHJlYWR5IHByaW50IGV2ZXJ5dGhpbmcgd2Uga25vdyBhYm91dCB0
aGUgVkJULgo+IAo+IEluc3RlYWQgb2Yga2VlcCBmaXhpbmcgdGhlIHBvc3NpYmxlIHBvcnQgYXNz
aWdubWVudHMgYWNjb3JkaW5nIHRvIHRoZQo+IHBsYXRmb3JtLCBqdXN0IG51a2UgdGhlIGFkZGl0
aW9uYWwgbWVzc2FnZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+CgpTZWVtcyByZWFzb25hYmxlIHRvIG1lLiAgVGhlIGRldGFp
bGVkICJQb3J0IFggVkJUIGluZm86IiBsaW5lIGdpdmVzCnBsZW50eSBvZiBpbmZvcm1hdGlvbiBm
b3IgYW55b25lIHRyeWluZyB0byBkZWJ1ZyBwcm9ibGVtcy4KClJldmlld2VkLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAxNiAtLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwo+IGluZGV4IDFhZWVjZGQwMjI5My4uZTA1NGU4N2ViYThlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBAQCAtMTYwMiwy
MiArMTYwMiw2IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiAgCQkgICAgICBIQVNfTFNQQ09OKGRldl9wcml2KSAmJiBjaGls
ZC0+bHNwY29uLAo+ICAJCSAgICAgIGluZm8tPnN1cHBvcnRzX3R5cGVjX3VzYiwgaW5mby0+c3Vw
cG9ydHNfdGJ0KTsKPiAgCj4gLQlpZiAoaXNfZWRwICYmIGlzX2R2aSkKPiAtCQlEUk1fREVCVUdf
S01TKCJJbnRlcm5hbCBEUCBwb3J0ICVjIGlzIFRNRFMgY29tcGF0aWJsZVxuIiwKPiAtCQkJICAg
ICAgcG9ydF9uYW1lKHBvcnQpKTsKPiAtCWlmIChpc19jcnQgJiYgcG9ydCAhPSBQT1JUX0UpCj4g
LQkJRFJNX0RFQlVHX0tNUygiUG9ydCAlYyBpcyBhbmFsb2dcbiIsIHBvcnRfbmFtZShwb3J0KSk7
Cj4gLQlpZiAoaXNfY3J0ICYmIChpc19kdmkgfHwgaXNfZHApKQo+IC0JCURSTV9ERUJVR19LTVMo
IkFuYWxvZyBwb3J0ICVjIGlzIGFsc28gRFAgb3IgVE1EUyBjb21wYXRpYmxlXG4iLAo+IC0JCQkg
ICAgICBwb3J0X25hbWUocG9ydCkpOwo+IC0JaWYgKGlzX2R2aSAmJiAocG9ydCA9PSBQT1JUX0Eg
fHwgcG9ydCA9PSBQT1JUX0UpKQo+IC0JCURSTV9ERUJVR19LTVMoIlBvcnQgJWMgaXMgVE1EUyBj
b21wYXRpYmxlXG4iLCBwb3J0X25hbWUocG9ydCkpOwo+IC0JaWYgKCFpc19kdmkgJiYgIWlzX2Rw
ICYmICFpc19jcnQpCj4gLQkJRFJNX0RFQlVHX0tNUygiUG9ydCAlYyBpcyBub3QgRFAvVE1EUy9D
UlQgY29tcGF0aWJsZVxuIiwKPiAtCQkJICAgICAgcG9ydF9uYW1lKHBvcnQpKTsKPiAtCWlmIChp
c19lZHAgJiYgKHBvcnQgPT0gUE9SVF9CIHx8IHBvcnQgPT0gUE9SVF9DIHx8IHBvcnQgPT0gUE9S
VF9FKSkKPiAtCQlEUk1fREVCVUdfS01TKCJQb3J0ICVjIGlzIGludGVybmFsIERQXG4iLCBwb3J0
X25hbWUocG9ydCkpOwo+IC0KPiAgCWlmIChpc19kdmkpIHsKPiAgCQl1OCBkZGNfcGluOwo+ICAK
PiAtLSAKPiAyLjI0LjAKPiAKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2lu
ZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikg
MzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
