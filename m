Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5283A014
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 15:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C1A8912C;
	Sat,  8 Jun 2019 13:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7CD8912C
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jun 2019 13:55:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jun 2019 06:55:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,567,1557212400"; d="scan'208";a="182963158"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2019 06:55:34 -0700
Date: Sat, 8 Jun 2019 16:55:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190608135530.GC26393@ideak-desk.fi.intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-7-imre.deak@intel.com>
 <0d9bcac71b5fcb2e3908c4f3c8a7ae9d4aee3aae.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d9bcac71b5fcb2e3908c4f3c8a7ae9d4aee3aae.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915: Fix the TBT AUX power well
 enabling
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMTA6NTg6NDFQTSArMDMwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6
Cj4gPiBGaXggdGhlIG1hcHBpbmcgZnJvbSBhIFRCVCBBVVggcG93ZXIgd2VsbCBpbmRleCB0byB0
aGUgRFBfQVVYX0NIX0NUTAo+ID4gcmVnaXN0ZXIuCj4gPiAKPiA+IEZpeGVzOiBjNzM3NWQ5NTQy
ZjEgKCJkcm0vaTkxNTogQ29uZmlndXJlIEFVWF9DSF9DVEwgd2hlbiBlbmFibGluZwo+ID4gdGhl
IEFVWCBwb3dlciBkb21haW4iKQo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
PiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8
IDExICsrKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKPiA+IGluZGV4IDI0OWE1ZmE1NWRmNi4uMTRjZjA0YmYwYmY0IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiA+IEBAIC00
NDIsMTYgKzQ0MiwyMyBAQCBpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX2Rpc2FibGUoc3Ry
dWN0Cj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ICAjZGVmaW5lIElDTF9BVVhf
UFdfVE9fQ0gocHdfaWR4KQlcCj4gPiAgCSgocHdfaWR4KSAtIElDTF9QV19DVExfSURYX0FVWF9B
ICsgQVVYX0NIX0EpCj4gPiAgCj4gPiArI2RlZmluZSBJQ0xfVEJUX0FVWF9QV19UT19DSChwd19p
ZHgpCVwKPiA+ICsJKChwd19pZHgpIC0gSUNMX1BXX0NUTF9JRFhfQVVYX1RCVDEgKyBBVVhfQ0hf
QykKPiA+ICsKPiA+ICBzdGF0aWMgdm9pZAo+ID4gIGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxf
ZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ICAJCQkJIHN0cnVj
dCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpCj4gPiAgewo+ID4gLQllbnVtIGF1eF9jaCBh
dXhfY2ggPSBJQ0xfQVVYX1BXX1RPX0NIKHBvd2VyX3dlbGwtPmRlc2MtCj4gPiA+aHN3LmlkeCk7
Cj4gPiArCWludCBwd19pZHggPSBwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4Owo+ID4gKwlib29s
IGlzX3RidCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQ7Cj4gPiArCWVudW0gYXV4
X2NoIGF1eF9jaDsKPiA+ICAJdTMyIHZhbDsKPiA+ICAKPiA+ICsJYXV4X2NoID0gaXNfdGJ0ID8g
SUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdfaWR4KSA6Cj4gPiArCQkJICBJQ0xfQVVYX1BXX1RPX0NI
KHB3X2lkeCk7Cj4gCj4gTWF0Y2hlcwo+IAo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAKPiA+ICAJdmFsID0gSTkxNV9SRUFEKERQ
X0FVWF9DSF9DVEwoYXV4X2NoKSk7Cj4gPiAgCXZhbCAmPSB+RFBfQVVYX0NIX0NUTF9UQlRfSU87
Cj4gPiAtCWlmIChwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0KQo+ID4gKwlpZiAoaXNf
dGJ0KQo+ID4gIAkJdmFsIHw9IERQX0FVWF9DSF9DVExfVEJUX0lPOwo+IAo+IFNvIHRoaXMgcmVn
aXN0ZXIgbmVlZHMgdG8gYmUgc2V0IGJlZm9yZSB0aGUgYXV4IHRyYW5zYWN0aW9uPwoKTm90IG9u
bHksIGJhc2VkIG9uIGJzcGVjIFR5cGVDIFByb2dyYW1taW5nIChJbmRleC8yMTc1MCkgaXQgbmVl
ZHMgdG8gYmUKc2V0IGFzIHBhcnQgb2YgdGhlIGNvbm5lY3Qgc2VxdWVuY2U7IHNvIHdoZW5ldmVy
IHlvdSBuZWVkIHRvIGVuYWJsZSB0aGlzCnBvd2VyIHdlbGwuCgo+IAo+ID4gIAlJOTE1X1dSSVRF
KERQX0FVWF9DSF9DVEwoYXV4X2NoKSwgdmFsKTsKPiA+ICAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
