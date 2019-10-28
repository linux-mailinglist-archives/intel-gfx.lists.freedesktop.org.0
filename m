Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1E5E76F2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 17:46:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF57A6E12D;
	Mon, 28 Oct 2019 16:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C5B6E12D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 16:46:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 09:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="229750632"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Oct 2019 09:46:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 18:46:46 +0200
Date: Mon, 28 Oct 2019 18:46:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20191028164646.GR1208@intel.com>
References: <20191028163950.9429-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028163950.9429-1-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/blt: fixup block_size rounding
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

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDQ6Mzk6NTBQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IFRoZXJlIGlzIG5vdGhpbmcgdG8gc2F5IHRoYXQgdGhlIG9iai0+YmFzZS5zaXplIGlz
IGFjdHVhbGx5IGEgbXVsdGlwbGUKPiBvZiB0aGUgYmxvY2tfc2l6ZS4KPiAKPiBSZXBvcnRlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwo+IGluZGV4IDUxNmU2MWU5OTIxMi4uNTU5
N2YxMzQ1YTYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfYmx0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2JsdC5jCj4gQEAgLTMwLDcgKzMwLDcgQEAgc3RydWN0IGk5MTVfdm1hICppbnRlbF9l
bWl0X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gIAlHRU1fQlVHX09O
KGludGVsX2VuZ2luZV9pc192aXJ0dWFsKGNlLT5lbmdpbmUpKTsKPiAgCWludGVsX2VuZ2luZV9w
bV9nZXQoY2UtPmVuZ2luZSk7Cj4gIAo+IC0JY291bnQgPSBkaXZfdTY0KHZtYS0+c2l6ZSwgYmxv
Y2tfc2l6ZSk7Cj4gKwljb3VudCA9IERJVjY0X1U2NF9ST1VORF9VUCh2bWEtPnNpemUsIGJsb2Nr
X3NpemUpOwoKYmxvY2tfc2l6ZSBzaXplIGxvb2sgdG8gYmUgdTMyPwoKPiAgCXNpemUgPSAoMSAr
IDggKiBjb3VudCkgKiBzaXplb2YodTMyKTsKPiAgCXNpemUgPSByb3VuZF91cChzaXplLCBQQUdF
X1NJWkUpOwo+ICAJcG9vbCA9IGludGVsX2VuZ2luZV9nZXRfcG9vbChjZS0+ZW5naW5lLCBzaXpl
KTsKPiBAQCAtMjE0LDcgKzIxNCw3IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFf
Y29weV9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICAJR0VNX0JVR19PTihpbnRlbF9l
bmdpbmVfaXNfdmlydHVhbChjZS0+ZW5naW5lKSk7Cj4gIAlpbnRlbF9lbmdpbmVfcG1fZ2V0KGNl
LT5lbmdpbmUpOwo+ICAKPiAtCWNvdW50ID0gZGl2X3U2NChkc3QtPnNpemUsIGJsb2NrX3NpemUp
Owo+ICsJY291bnQgPSBESVY2NF9VNjRfUk9VTkRfVVAoZHN0LT5zaXplLCBibG9ja19zaXplKTsK
PiAgCXNpemUgPSAoMSArIDExICogY291bnQpICogc2l6ZW9mKHUzMik7Cj4gIAlzaXplID0gcm91
bmRfdXAoc2l6ZSwgUEFHRV9TSVpFKTsKPiAgCXBvb2wgPSBpbnRlbF9lbmdpbmVfZ2V0X3Bvb2wo
Y2UtPmVuZ2luZSwgc2l6ZSk7Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCklu
dGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
