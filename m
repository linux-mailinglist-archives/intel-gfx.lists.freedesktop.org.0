Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2AC0681
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 15:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32EF36E151;
	Fri, 27 Sep 2019 13:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C820D6E151
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 13:41:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 06:41:03 -0700
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="389966989"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 06:41:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, Anshuman Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20190927133248.GB29139@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190926145621.9090-1-anshuman.gupta@intel.com>
 <20190926145621.9090-4-anshuman.gupta@intel.com>
 <20190927110743.GA29139@ideak-desk.fi.intel.com>
 <20190927133248.GB29139@ideak-desk.fi.intel.com>
Date: Fri, 27 Sep 2019 16:40:59 +0300
Message-ID: <87v9tddfh0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v9 3/7] drm/i915/tgl: Enable DC3CO state in
 "DC Off" power well
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

T24gRnJpLCAyNyBTZXAgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBPbiBGcmksIFNlcCAyNywgMjAxOSBhdCAwMjowNzo0M1BNICswMzAwLCBJbXJlIERlYWsg
d3JvdGU6Cj4+IE9uIFRodSwgU2VwIDI2LCAyMDE5IGF0IDA4OjI2OjE3UE0gKzA1MzAsIEFuc2h1
bWFuIEd1cHRhIHdyb3RlOgo+PiA+ICt2b2lkIHRnbF9zZXRfdGFyZ2V0X2RjX3N0YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHN0YXRlKQo+Cj4gV2UgbmVlZCBhIGRv
Y3VtZW50YXRpb24gZm9yIGV4cG9ydGVkIGZ1bmN0aW9ucy4KCkFuZCByZWFsbHkgeW91IHNob3Vs
ZCBtYWtlIGFuIGVmZm9ydCB0byAqTk9UKiBleHBvc2UgcGxhdGZvcm0gc3BlY2lmaWMKZnVuY3Rp
b25zIGZyb20geW91ciBDIG1vZHVsZXMuIFllcywgd2UgaGF2ZSBzb21lLCBidXQgdGhlIGRpcmVj
dGlvbgpzaG91bGQgYmUgdGhlIG9wcG9zaXRlIG9mIGFkZGluZyBtb3JlLgoKSSdsbCBiZSBtb3Jl
IHN0cmljdCBhYm91dCB0aGlzIGdvaW5nIGZvcndhcmQuIFdlIG5lZWQgdG8gaW1wcm92ZSB0aGUK
aW50ZXJmYWNlcyB3ZSBoYXZlLgoKPj4gPiBAQCAtMjU2LDYgKzI1Nyw3IEBAIHZvaWQgaW50ZWxf
ZGlzcGxheV9wb3dlcl9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Owo+PiA+ICB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcmVzdW1lX2Vhcmx5KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KTsKPj4gPiAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3N1c3Bl
bmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiA+ICB2b2lkIGludGVsX2Rpc3Bs
YXlfcG93ZXJfcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPj4gPiArdm9p
ZCB0Z2xfc2V0X3RhcmdldF9kY19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIHUzMiBzdGF0ZSk7CgpUaGlzIHN0aWNrcyBvdXQgbGlrZSBhIHNvcmUgdGh1bWIuCgpBbmQg
eW91J3JlIG5vdCBldmVuIHVzaW5nIHRoZSBmdW5jdGlvbiBvdXRzaWRlIG9mIGludGVsX2Rpc3Bs
YXlfcG93ZXIuaCEKCkJSLApKYW5pLgoKCj4+ID4gIAo+PiA+ICBjb25zdCBjaGFyICoKPj4gPiAg
aW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9k
b21haW4gZG9tYWluKTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
