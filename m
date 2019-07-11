Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4F665B8F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 18:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968BD6E26D;
	Thu, 11 Jul 2019 16:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514086E268
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 16:30:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 09:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="177217451"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Jul 2019 09:30:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 19:30:07 +0300
Date: Thu, 11 Jul 2019 19:30:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20190711163007.GA5942@intel.com>
References: <20190711104401.7813-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711104401.7813-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix wrong escape clock divisor
 init for GLK
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDE6NDQ6MDFQTSArMDMwMCwgU3RhbmlzbGF2IExpc292
c2tpeSB3cm90ZToKPiBBY2NvcmRpbmcgdG8gQnNwZWMgY2xvY2sgZGl2aXNvciByZWdpc3RlcnMg
aW4gR2VtaW5pTGFrZQo+IHNob3VsZCBiZSBpbml0aWFsaXplZCBieSBzaGlmdGluZyAxKDw8KSB0
byBhbW91bnQgb2YgY29ycmVzcG9uZGVudAo+IGRpdmlzb3IuIFdoaWxlIGk5MTUgd2FzIHdyaXRp
bmcgYWxsIHRoaXMgdGltZSB0aGF0IHZhbHVlIGFzIGlzLgo+IAo+IFN1cnByaXNpbmdseSB0aGF0
IGl0IGJ5IGFjY2lkZW50IHdvcmtlZCwgdW50aWwgd2UgbWV0IHNvbWUgaXNzdWVzCj4gd2l0aCBN
aWNyb3RlY2ggRXRhYi4KPiAKPiB2MjogQWRkZWQgRml4ZXMgdGFnIGFuZCBjYwo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFN0YW5pc2xhdi5MaXNvdnNraXlAaW50ZWwuY29tCgpZb3VyIGdpdCBpcyBhIGJp
dCBtaXNjb25maWd1cmVkCi06NDY6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5n
IFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbApwYXRjaCBhdXRob3IgJ1N0YW5pc2xhdiBM
aXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPicKCkFuZCBJIHRoaW5rIHdl
IHdhbnQgY2M6c3RhYmxlIG9uIHRoaXMgYXMgd2VsbC4KCj4gUmV2aWV3ZWQtYnk6IFZhbmRpdGEg
S3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IEZpeGVzOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg4MjYKPiBGaXhlczogYmNjNjU3
MDA0ODQxICgiZHJtL2k5MTUvZ2xrOiBQcm9ncmFtIHR4ZXNjIGNsb2NrIGRpdmlkZXIgZm9yIEdM
SyIpCj4gQ2M6IERlZXBhayBNIDxtLmRlZXBha0BpbnRlbC5jb20+Cj4gQ2M6IE1hZGhhdiBDaGF1
aGFuIDxtYWRoYXYuY2hhdWhhbkBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3Zsdl9kc2lfcGxsLmMKPiBpbmRleCA5OWNjM2UyZTljMmMuLmYwMTZhNzc2YTM5ZSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMKPiBAQCAt
Mzk2LDggKzM5Niw4IEBAIHN0YXRpYyB2b2lkIGdsa19kc2lfcHJvZ3JhbV9lc2NfY2xvY2soc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCWVsc2UKPiAgCQl0eGVzYzJfZGl2ID0gMTA7Cj4gIAo+
IC0JSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMSwgdHhlc2MxX2RpdiAmIEdMS19UWF9F
U0NfQ0xLX0RJVjFfTUFTSyk7Cj4gLQlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19ESVYyLCB0
eGVzYzJfZGl2ICYgR0xLX1RYX0VTQ19DTEtfRElWMl9NQVNLKTsKPiArCUk5MTVfV1JJVEUoTUlQ
SU9fVFhFU0NfQ0xLX0RJVjEsICgxIDw8ICh0eGVzYzFfZGl2IC0gMSkpICYgR0xLX1RYX0VTQ19D
TEtfRElWMV9NQVNLKTsKPiArCUk5MTVfV1JJVEUoTUlQSU9fVFhFU0NfQ0xLX0RJVjIsICgxIDw8
ICh0eGVzYzJfZGl2IC0gMSkpICYgR0xLX1RYX0VTQ19DTEtfRElWMl9NQVNLKTsKPiAgfQo+ICAK
PiAgLyogUHJvZ3JhbSBCWFQgTWlwaSBjbG9ja3MgYW5kIGRpdmlkZXJzICovCj4gLS0gCj4gMi4x
Ny4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
