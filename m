Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C32F9401
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 16:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34BC6EB51;
	Tue, 12 Nov 2019 15:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86AD6EB51
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 15:20:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 07:20:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198109573"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Nov 2019 07:20:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 17:20:52 +0200
Date: Tue, 12 Nov 2019 17:20:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191112152052.GQ1208@intel.com>
References: <20191112143643.21821-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112143643.21821-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Explicitly cleanup
 initial_plane_config
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

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDI6MzY6NDJQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEkgYW0gYWJvdXQgdG8gc3R1ZmYgbW9yZSBvYmplY3RzIGludG8gdGhlIHBsYW5lX2Nv
bmZpZyBhbmQgd291bGQgbGlrZSB0bwo+IGhhdmUgaXQgY2xlYW4gdXAgYWZ0ZXIgaXRzZWxmLiBN
b3ZlIHRoZSBjdXJyZW50IGZyYW1lYnVmZmVyIHJlbGVhc2UgaW50bwo+IGEgY29tbW9uIGZ1bmN0
aW9uIHNvIGl0IGNhbiBiZSBleHRlbmRlZCB3aXRoIHRoZSBuZXcgb2JqZWN0IHdpdGgKPiByZWxh
dGl2ZSBlYXNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDIwICsrKysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggNWYzMzQwNTU0MTQ5Li5mNTcxYzY1NzVj
NjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IEBAIC0zMjQxLDggKzMyNDEsNiBAQCBpbnRlbF9maW5kX2luaXRpYWxfcGxhbmVfb2JqKHN0
cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjLAo+ICAJCWdvdG8gdmFsaWRfZmI7Cj4gIAl9Cj4g
IAo+IC0Ja2ZyZWUocGxhbmVfY29uZmlnLT5mYik7Cj4gLQo+ICAJLyoKPiAgCSAqIEZhaWxlZCB0
byBhbGxvYyB0aGUgb2JqLCBjaGVjayB0byBzZWUgaWYgd2Ugc2hvdWxkIHNoYXJlCj4gIAkgKiBh
biBmYiB3aXRoIGFub3RoZXIgQ1JUQyBpbnN0ZWFkCj4gQEAgLTMyNjIsNyArMzI2MCw2IEBAIGlu
dGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMs
Cj4gIAo+ICAJCWlmIChpbnRlbF9wbGFuZV9nZ3R0X29mZnNldChzdGF0ZSkgPT0gcGxhbmVfY29u
ZmlnLT5iYXNlKSB7Cj4gIAkJCWZiID0gc3RhdGUtPmh3LmZiOwo+IC0JCQlkcm1fZnJhbWVidWZm
ZXJfZ2V0KGZiKTsKPiAgCQkJZ290byB2YWxpZF9mYjsKPiAgCQl9Cj4gIAl9Cj4gQEAgLTMyOTUs
NyArMzI5Miw2IEBAIGludGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2Ny
dGMgKmludGVsX2NydGMsCj4gIAkJCSAgaW50ZWxfY3J0Yy0+cGlwZSwgUFRSX0VSUihpbnRlbF9z
dGF0ZS0+dm1hKSk7Cj4gIAo+ICAJCWludGVsX3N0YXRlLT52bWEgPSBOVUxMOwo+IC0JCWRybV9m
cmFtZWJ1ZmZlcl9wdXQoZmIpOwo+ICAJCXJldHVybjsKPiAgCX0KPiAgCj4gQEAgLTMzMTcsNyAr
MzMxMyw2IEBAIGludGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMg
KmludGVsX2NydGMsCj4gIAlpZiAocGxhbmVfY29uZmlnLT50aWxpbmcpCj4gIAkJZGV2X3ByaXYt
PnByZXNlcnZlX2Jpb3Nfc3dpenpsZSA9IHRydWU7Cj4gIAo+IC0JcGxhbmVfc3RhdGUtPmZiID0g
ZmI7CgpUaGlzIHN0dWZmIGxvb2tzIHdyb25nLiBXZSBzdGlsbCB3YW50IHRoZSBwbGFuZSBzdGF0
ZSB0byBwb2ludCBhdCB0aGUKZmIuCgpJZGVhbGx5IEknZCBsaWtlIHRvIG51a2UgdGhlIHBsYW5l
X2NvbmZpZyB0aGluZyBlbnRpcmVseSBhbmQganVzdCByZWFkCmV2ZXJ5dGhpbmcgZGlyZWN0bHkg
aW50byB0aGUgcGxhbmVfc3RhdGVzKHMpLCBidXQgdGhhdCdzIHByb2JhYmx5IGEKYnVuY2ggb2Yg
YWN0dWFsIHdvcmsgc28gbm90IGdvaW5nIHRvIGhhcHBlbiBzb29uLgoKPiAgCXBsYW5lX3N0YXRl
LT5jcnRjID0gJmludGVsX2NydGMtPmJhc2U7Cj4gIAlpbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9f
aHdfc3RhdGUoaW50ZWxfc3RhdGUsIGludGVsX3N0YXRlKTsKPiAgCj4gQEAgLTE2OTUyLDYgKzE2
OTQ3LDE5IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVfY29uZmlnX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gIAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHBsYW5lX2Nv
bmZpZ19maW5pKHN0cnVjdCBpbnRlbF9pbml0aWFsX3BsYW5lX2NvbmZpZyAqcGxhbmVfY29uZmln
KQo+ICt7Cj4gKwlpZiAocGxhbmVfY29uZmlnLT5mYikgewo+ICsJCXN0cnVjdCBkcm1fZnJhbWVi
dWZmZXIgKmZiID0gJnBsYW5lX2NvbmZpZy0+ZmItPmJhc2U7Cj4gKwo+ICsJCS8qIFdlIG1heSBv
bmx5IGhhdmUgdGhlIHN0dWIgYW5kIG5vdCBhIGZ1bGwgZnJhbWVidWZmZXIgKi8KPiArCQlpZiAo
ZHJtX2ZyYW1lYnVmZmVyX3JlYWRfcmVmY291bnQoZmIpKQo+ICsJCQlkcm1fZnJhbWVidWZmZXJf
cHV0KGZiKTsKPiArCQllbHNlCj4gKwkJCWtmcmVlKGZiKTsKPiArCX0KPiArfQo+ICsKPiAgaW50
IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgewo+
ICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZpOTE1LT5kcm07Cj4gQEAgLTE3MDM2LDYgKzE3
MDQ0LDggQEAgaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAgCQkgKiBqdXN0IGdldCB0aGUgZmlyc3Qgb25lLgo+ICAJCSAqLwo+ICAJCWludGVs
X2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooY3J0YywgJnBsYW5lX2NvbmZpZyk7Cj4gKwo+ICsJCXBs
YW5lX2NvbmZpZ19maW5pKCZwbGFuZV9jb25maWcpOwo+ICAJfQo+ICAKPiAgCS8qCj4gLS0gCj4g
Mi4yNC4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
