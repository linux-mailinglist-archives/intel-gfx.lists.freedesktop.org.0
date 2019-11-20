Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB75103765
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 11:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14866E1E0;
	Wed, 20 Nov 2019 10:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC006E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 10:24:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 02:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="218569816"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 20 Nov 2019 02:23:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Nov 2019 12:23:57 +0200
Date: Wed, 20 Nov 2019 12:23:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <20191120102357.GE1208@intel.com>
References: <20191120004505.149516-1-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120004505.149516-1-stuart.summers@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] Skip MCHBAR queries when display is not
 available
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

T24gVHVlLCBOb3YgMTksIDIwMTkgYXQgMDQ6NDU6MDVQTSAtMDgwMCwgU3R1YXJ0IFN1bW1lcnMg
d3JvdGU6Cj4gUGxhdGZvcm1zIHdpdGhvdXQgZGlzcGxheSBkbyBub3QgbWFwIHRoZSBNQ0hCQVIg
TU1JTyBpbnRvIHRoZSBHRlgKPiBkZXZpY2UgQkFSLiBTa2lwIHRoaXMgc2VxdWVuY2Ugd2hlbiBk
aXNwbGF5IGlzIG5vdCBhdmFpbGFibGUuCgpTbGlnaHRseSBvZGQgZGVjaXNpb24gdG8gaGlkZSB0
aGlzIHN0dWZmIGluIGh3LCBidXQgZmluZSBieSBtZQpzaW5jZSB3ZSBuZWVkIHRoaXMgb25seSBm
b3IgZGlzcGxheSBiYW5kd2lkdGgvd2F0ZXJtYXJrIHN0dWZmLgoKUmV2aWV3ZWQtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+IGluZGV4IDhkNzA0OTc5MmQ2Mi4uZjUwOWQ4MjZmY2M3IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCj4gQEAgLTEwNTIsNyArMTA1Miw3IEBAIGludGVsX2dldF9kcmFtX2luZm8oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJICovCj4gIAlkcmFtX2luZm8tPmlz
XzE2Z2JfZGltbSA9ICFJU19HRU45X0xQKGRldl9wcml2KTsKPiAgCj4gLQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA8IDkpCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDkgfHwgIUhBU19E
SVNQTEFZKGRldl9wcml2KSkKPiAgCQlyZXR1cm47Cj4gIAo+ICAJaWYgKElTX0dFTjlfTFAoZGV2
X3ByaXYpKQo+IC0tIAo+IDIuMjIuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
