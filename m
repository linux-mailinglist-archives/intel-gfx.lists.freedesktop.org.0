Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52395366F9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 23:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9C08961E;
	Wed,  5 Jun 2019 21:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D598961E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 21:49:19 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 14:49:18 -0700
X-ExtLoop1: 1
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jun 2019 14:49:18 -0700
Date: Wed, 5 Jun 2019 14:51:08 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190605215107.GA14368@intel.com>
References: <20190605211832.23945-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605211832.23945-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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

T24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDI6MTg6MzJQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBVbmxpa2UgSUNMLCBFSEwncyBjb21ibyBQSFlzIGNhbiBzdXBwb3J0IEhCUjMgZGF0YSBy
YXRlcy4gIE5vdGUgdGhhdAo+IHRoaXMganVzdCBleHRlbmRzIHRoZSB1cHBlciBsaW1pdDsgd2Ug
d2lsbCBjb250aW51ZSB0byBob25vciB0aGUgbWF4Cj4gZGF0YSByYXRlIHNwZWNpZmllZCBpbiB0
aGUgVkJUIGluIGNhc2VzIHdoZXJlIGl0IGlzIGxvd2VyIHRoYW4gSEJSMy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKWWVzIGxvb2tz
IGdvb2QgdG8gbWUuCgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KCk1hbmFzaQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHAuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RwLmMKPiBpbmRleCAyNGI1NmIyYTc2YzguLmIwOTlhOWRjMjhmZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+IEBAIC0zMzIsNiArMzMyLDcgQEAgc3RhdGljIGludCBp
Y2xfbWF4X3NvdXJjZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIAllbnVtIHBv
cnQgcG9ydCA9IGRpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gIAo+ICAJaWYgKGludGVsX3BvcnRfaXNf
Y29tYm9waHkoZGV2X3ByaXYsIHBvcnQpICYmCj4gKwkgICAgIUlTX0VMS0hBUlRMQUtFKGRldl9w
cml2KSAmJgo+ICAJICAgICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQo+ICAJCXJldHVybiA1
NDAwMDA7Cj4gIAo+IC0tIAo+IDIuMTQuNQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
