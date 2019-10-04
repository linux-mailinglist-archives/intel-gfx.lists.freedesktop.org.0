Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C717CBFD8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 17:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99A46EBD8;
	Fri,  4 Oct 2019 15:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08576EBD8
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 15:56:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 08:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="198897718"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2019 08:56:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 18:56:14 +0300
Date: Fri, 4 Oct 2019 18:56:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191004155614.GI1208@intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-10-maarten.lankhorst@linux.intel.com>
 <20191004133154.GC1208@intel.com>
 <53f2d46c-1732-4426-9f48-6901dfba0b87@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53f2d46c-1732-4426-9f48-6901dfba0b87@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 09/24] drm/i915: Handle a few more cases for
 crtc hw/uapi split
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

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDU6NTE6MTZQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDQtMTAtMjAxOSBvbSAxNTozMSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjM0OjU5UE0gKzAyMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IFdlIGFyZSBzdGlsbCBsb29raW5nIGF0IGRybV9jcnRjX3N0
YXRlIGluIGEgZmV3IHBsYWNlcywgY29udmVydCB0aG9zZQo+ID4+IHRvIHVzZSBpbnRlbF9jcnRj
X3N0YXRlIGluc3RlYWQuIExvb2sgYXQgdWFwaS9odyB3aGVyZSBhcHByb3ByaWF0ZS4KPiA+Pgo+
ID4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gPj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMTQgKysrKysrKy0tLS0tLS0KPiA+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgfCAgMiArLQo+ID4+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICB8ICA0ICsrLS0KPiA+PiAgMyBmaWxl
cyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPj4gaW5kZXgg
ZjU1NWZmNmIxZjZhLi5mY2QyOTVlZDgwZWQgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+IEBAIC0xNjEyNiw4ICsxNjEyNiw4
IEBAIHN0YXRpYyBpbnQgaW50ZWxfaW5pdGlhbF9jb21taXQoc3RydWN0IGRybV9kZXZpY2UgKmRl
dikKPiA+PiAgewo+ID4+ICAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0gTlVMTDsK
PiA+PiAgCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBjdHg7Cj4gPj4gLQlzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGM7Cj4gPj4gLQlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7
Cj4gPj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiA+PiArCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlOwo+ID4gSSdkIHByZWZlciB0byBsaWZ0IG1vc3Qgb2YgdGhpcyBw
YXRjaCB0byBiZWZvcmUgd2UgZG8gdGhhdCBzdGF0ZSBzcGxpdAo+ID4gc28gaXQgY2FuIGJlIHB1
c2hlZCBvdXQgb2YgdGhlIHdheS4KPiAKPiBJZiB5b3UgYXBwbHkKPiAKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9pbnRlbC1nZngvMjAxOS1TZXB0ZW1iZXIvMjE0MjY4
Lmh0bWwKPiAKPiBhbmQgSSBwdXQgdGhpcyBiZWZvcmUgdGhlIGh3IHNwbGl0IHBhdGNoLCBkbyBJ
IGdldCB5b3VyIHItYiB1cCB0byBbUEFUQ0ggMTIvMjRdIGRybS9pOTE1OiBTcGxpdCBwbGFuZSBo
dyBhbmQgdWFwaSBzdGF0ZSA/CgpIYXZlbid0IGdvdHRlbiB0aGF0IGZhciB5ZXQuCgotLSAKVmls
bGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
