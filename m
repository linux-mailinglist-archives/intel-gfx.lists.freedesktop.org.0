Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 128A6FAA24
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 07:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8756E062;
	Wed, 13 Nov 2019 06:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E7116E03A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 06:28:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 22:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,299,1569308400"; d="scan'208";a="257047411"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Nov 2019 22:28:01 -0800
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 Nov 2019 22:28:01 -0800
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 Nov 2019 22:28:01 -0800
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.49]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.25]) with mapi id 14.03.0439.000;
 Wed, 13 Nov 2019 11:57:58 +0530
From: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen9: Add missing 10bpc formats
Thread-Index: AQHVmEN/+9x17t8/50qVHxh8UHATFqeFpPIAgAIbUAA=
Date: Wed, 13 Nov 2019 06:27:58 +0000
Message-ID: <92C2E46C14A43E4BBF8F51564D4E95565873411C@BGSMSX101.gar.corp.intel.com>
References: <20191111035241.19014-1-kishore.kadiyala@intel.com>
 <20191111140348.GM1208@intel.com>
In-Reply-To: <20191111140348.GM1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGQzMGQzNzEtZGZhMC00NGNlLTgwODItN2ZlOGRhZDdmOTMzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUHd1OXdRV21ocFRETDZ1WlJMZXp6WGdESzNSbGNSajc3YitURFRhczVkdnVuT09WMUtyZ0JmblFsWTJWQTZZSCJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9: Add missing 10bpc formats
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTZW50OiBNb25kYXksIE5vdmVtYmVyIDEx
LCAyMDE5IDc6MzQgUE0KPiBUbzogS2FkaXlhbGEsIEtpc2hvcmUgPGtpc2hvcmUua2FkaXlhbGFA
aW50ZWwuY29tPgo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZ2VuOTogQWRkIG1pc3NpbmcgMTBi
cGMgZm9ybWF0cwo+IAo+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA5OjIyOjQxQU0gKzA1MzAs
IEtpc2hvcmUgS2FkaXlhbGEgd3JvdGU6Cj4gPiBBZGQgMTBicGMgZm9ybWF0cyBmb3IgZ2VuOS4K
PiA+IFRoaXMgcGF0Y2ggaGFzIGRlcGVuZGVuY3kgb24gYmVsb3cgcGF0Y2g6Cj4gPiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzM1MDI5Lz9zZXJpZXM9Njc3NDEmcmV2
PTIKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBLaXNob3JlIEthZGl5YWxhIDxraXNob3JlLmthZGl5
YWxhQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc3ByaXRlLmMgfCAyICsrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKPiA+IGluZGV4IGQ3ZjcxZmE5MDY1OS4uZmFkNzNlYTAwOTkyIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+ID4gQEAgLTI0NDQsNiAr
MjQ0NCw4IEBAIHN0YXRpYyBjb25zdCB1MzIgc2tsX3BsYW5hcl9mb3JtYXRzW10gPSB7Cj4gPiAg
CURSTV9GT1JNQVRfQUJHUjg4ODgsCj4gPiAgCURSTV9GT1JNQVRfWFJHQjIxMDEwMTAsCj4gPiAg
CURSTV9GT1JNQVRfWEJHUjIxMDEwMTAsCj4gPiArCURSTV9GT1JNQVRfQVJHQjIxMDEwMTAsCj4g
PiArCURSTV9GT1JNQVRfQUJHUjIxMDEwMTAsCj4gCj4gTm9wZS4gQWxwaGEgYmxlbmRpbmcgaXMg
bm90IHN1cHBvcnRlZCB3aXRoIDEwYnBjIGZvcm1hdHMgb24gcHJlLWljbCBwbGF0Zm9ybXMuCgpJ
IGhhdmUgY2hlY2tlZCB0aGUgY2FwYWJpbGl0aWVzIGZvciBHZW45IGFuZCBhcyB5b3UgcG9pbnRl
ZCBBbHBoYSBpcyBub3Qgc3VwcG9ydGVkIGZvciAxMGJwYyBmb3JtYXRzLgpUaGlzIHBhdGNoIGNh
biBiZSBkcm9wcGVkLgoKPiAKPiA+ICAJRFJNX0ZPUk1BVF9YUkdCMTYxNjE2MTZGLAo+ID4gIAlE
Uk1fRk9STUFUX1hCR1IxNjE2MTYxNkYsCj4gPiAgCURSTV9GT1JNQVRfWVVZViwKPiA+IC0tCj4g
PiAyLjE3LjEKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLQo+IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
