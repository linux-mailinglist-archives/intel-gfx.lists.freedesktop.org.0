Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6108B638F7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 17:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C914989D39;
	Tue,  9 Jul 2019 15:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFF289145
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 15:58:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 08:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="173598831"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 09 Jul 2019 08:58:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Jul 2019 18:58:30 +0300
Date: Tue, 9 Jul 2019 18:58:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709155830.GY5942@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-23-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-23-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 22/25] drm/i915/gen12: MBUS B credit
 change
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

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MjZQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAK
PiBQcmV2aW91c2x5LCB0aGUgcmVjb21tZW5kZWQgQiBjcmVkaXQgZm9yIGFsbCBwbGF0Zm9ybXMg
d2FzIDI0IC8gbnVtYmVyCj4gb2YgcGlwZXMsIHdoaWNoIHdvdWxkIGdpdmUgNiBmb3IgbmV3ZXIg
cGxhdGZvcm1zIHdpdGggNCBwaXBlcy4gSG93ZXZlciA2Cj4gaXMgbm90IGVub3VnaCBhbmQgd2Ug
bmVlZCAxMiBvbiB0aGVzZSBjYXNlcy4KPiAKPiBXZSBhbHNvIG5lZWQgYSBkaWZmZXJlbnQgQlcg
Y3JlZGl0IGZvciB0aGVzZSBwbGF0Zm9ybXMuCj4gCj4gQ2M6IEFydGh1ciBKIFJ1bnlhbiA8YXJ0
aHVyLmoucnVueWFuQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrKystLQo+ICAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggOWNjZjU4ZmY0ZGJhLi45
YTVkMDRhMmFiM2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IEBAIC02NDIzLDggKzY0MjMsMTQgQEAgc3RhdGljIHZvaWQgaWNsX3BpcGVf
bWJ1c19lbmFibGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIAl1MzIgdmFsOwo+ICAKPiAg
CXZhbCA9IE1CVVNfREJPWF9BX0NSRURJVCgyKTsKPiAtCXZhbCB8PSBNQlVTX0RCT1hfQldfQ1JF
RElUKDEpOwo+IC0JdmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCg4KTsKPiArCj4gKwlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+ICsJCXZhbCB8PSBNQlVTX0RCT1hfQldfQ1JFRElU
KDIpOwo+ICsJCXZhbCB8PSBNQlVTX0RCT1hfQl9DUkVESVQoMTIpOwo+ICsJfSBlbHNlIHsKPiAr
CQl2YWwgfD0gTUJVU19EQk9YX0JXX0NSRURJVCgxKTsKPiArCQl2YWwgfD0gTUJVU19EQk9YX0Jf
Q1JFRElUKDgpOwo+ICsJfQo+ICAKPiAgCUk5MTVfV1JJVEUoUElQRV9NQlVTX0RCT1hfQ1RMKHBp
cGUpLCB2YWwpOwo+ICB9Cj4gLS0gCj4gMi4yMS4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
