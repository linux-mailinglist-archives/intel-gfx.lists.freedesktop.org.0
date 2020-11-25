Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C142D2C4875
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AAAF6EA6B;
	Wed, 25 Nov 2020 19:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8644D6EA5E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:34:21 +0000 (UTC)
IronPort-SDR: Lm3o0BY3+4G8qDeVhp68mkVdwi6oB4asEcCWQnpV3bWIEPcydahoNTqzD7Pe3NQNHtZ4rhZiCS
 nfS4bG1IoDwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172347087"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="172347087"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:34:20 -0800
IronPort-SDR: aS6v03ZUXwjMjZhbJfDd9KwX2qFVzC/8OMzbAMWrlNHSK9buYWgkNuhSCgmA45jghoYp7puQO+
 Z0VviuCTZHRQ==
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="362504316"
Received: from pmleslie-mobl1.amr.corp.intel.com (HELO [10.251.8.115])
 ([10.251.8.115])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:34:20 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <87360xmzgr.fsf@intel.com>
 <160631840326.26272.537878967385128182@build.alporthouse.com>
 <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
 <20201125192958.6qmcnjksvavkwq62@ldmartin-desk1>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <6fcae72e-fd6e-1dbc-e6df-174ed3b12940@intel.com>
Date: Wed, 25 Nov 2020 11:34:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201125192958.6qmcnjksvavkwq62@ldmartin-desk1>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTEvMjUvMjAgMTE6MjkgQU0sIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBPbiBXZWQsIE5v
diAyNSwgMjAyMCBhdCAwOTo1MTowNEFNIC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOgo+PiBP
biAxMS8yNS8yMCA3OjMzIEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIEphbmkg
TmlrdWxhICgyMDIwLTExLTI1IDExOjQ1OjU2KQo+Pj4+IE9uIFR1ZSwgMjQgTm92IDIwMjAsIEFk
aXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPiB3cm90ZToKPj4+Pj4gK8KgwqDC
oMKgIGlmIChJU19UR0xfVShkZXZfcHJpdikgfHwgSVNfVEdMX1koZGV2X3ByaXYpKSB7Cj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKFRHTF9VWV9SRVZJRF9SQU5HRShyZXZpZCkp
IHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IHRnbF91eV9yZXZpZHMgKyByZXZpZDsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9
IGVsc2Ugewo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlVuc3VwcG9ydGVkIFNP
QyBzdGVwcGluZyBmb3VuZCAldSwgdXNpbmcgJWx1IGluc3RlYWRcbiIsCj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldmlkLCBBUlJBWV9TSVpFKHRnbF91eV9yZXZpZHMpIC0gMSk7Cj4+Pgo+Pj4gQWxzbyBwbGVh
c2UgZG9uJ3QgaGF2ZSBhIGRiZyBmb3IgZXZlcnkgc2luZ2xlIElTX1RHTF8qX1JFVklECj4+PiBp
bnZvY2F0aW9uLiBBbmQgdGhpcyBpcyBub3QgX2ttcywgYnV0IGRyaXZlcjsgYmV0dGVyIHlldCwg
ZG9uJ3QgYm90aGVyCj4+PiB3aXRoIGEgZHJtX2RiZ19rbXMgaGVyZSBhdCBhbGwuCj4+Pgo+Pj4g
SWYgeW91IHdhbnQgdG8gYWN0dWFsbHkgY2hlY2ssIGFkZCBzb21ldGhpbmcgbGlrZQo+Pj4gaW50
ZWxfZGV0ZWN0X3ByZXByb2R1Y3Rpb25faHcoKSBhbmQgd2FybiBhYm91dCB1bmtub3duIGZ1dHVy
ZSByZXZpZHMuCj4+PiBPciBpbmNsdWRlIHRoZSBpbmZvIHdoZW4gd2UgcHJpbnQgdGhlIHJldmlk
IGluIHRoZSBjYXBzLgo+Pgo+PiBTbywgd2hhdCB5b3UgYXJlIHN1Z2dlc3RpbmcgaXMgYWRkIGFu
IGluZm8gcHJpbnQgaW4gdGhhdCBmdW5jdGlvbiBpbnRlbF9kZXRlY3RfcHJlcHJvZHVjdGlvbl9o
dygpIHJpZ2h0Pwo+PiBPciBzb21ldGhpbmcgZWxzZT8KPiAKPiBzaW5jZSB0aGlzIGlzIGFsbCBn
b2luZyBhd2F5IHNvb24sIGp1c3QgcmVtb3ZpbmcgdGhlIGRiZyB3b3VsZCBiZSBvawo+IAo+IEFu
ZCBpbiB0aGF0IGNhc2UsIGp1c3QgZG9pbmcgc29tZXRoaW5nIGxpa2UgYmVsb3cgd291bGQgYmUg
c2hvcnRlciBhbmQKPiBjbGVhcmVyIElNTyAodW50ZXN0ZWQpOgo+IAo+IMKgwqDCoMKgaWYgKElT
X1RHTF9VKGRldl9wcml2KSB8fCBJU19UR0xfWShkZXZfcHJpdikpIHsKPiDCoMKgwqDCoMKgwqDC
oCBhcnIgPSB0Z2xfdXlfcmV2aWRzOwo+IMKgwqDCoMKgwqDCoMKgIHNpemUgPSBBUlJBWV9TSVpF
KHRnbF91eV9yZXZpZHMpOwo+IMKgwqDCoMKgfSBlbHNlIHsKPiDCoMKgwqDCoMKgwqDCoCBhcnIg
PSB0Z2xfcmV2aWRzOwo+IMKgwqDCoMKgwqDCoMKgIHNpemUgPSBBUlJBWV9TSVpFKHRnbF9yZXZp
ZHMpOwo+IMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDCoMKgCj4gwqDCoMKgwqByZXZpZCA9IG1pbihy
ZXZpZCwgc2l6ZSAtIDEpOwo+IAo+IMKgwqDCoMKgcmV0dXJuICZhcnJbcmV2aWRdOwo+IAo+IFRo
YXQgbWF5IGFsc28gYmUgMiBwYXRjaGVzOsKgIG9uZSBhZGRpbmcgdGhlIHJldmlkIHNvIHdlIGFj
dHVhbGx5IGFwcGx5Cj4gdGhlIGNvcnJlY3Qgd29ya2Fyb3VuZHMgKHRoaXMgbmVlZHMgdGhlICJG
aXhlcyIgdGFnKSBhbmQgdGhlIG90aGVyIHRvCj4gYWRkIHRoZSBib3VuZHMgY2hlY2suCgpUaGFu
a3MgZm9yIHRoZSBzdWdnZXN0aW9uLiBJIHdpbGwgaW1wbGVtZW50IGl0IHRoaXMgd2F5LgoKQWRp
dHlhCgo+IAo+IEx1Y2FzIERlIE1hcmNoaQo+IAo+Pgo+Pj4gLUNocmlzCj4+Pgo+PgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
