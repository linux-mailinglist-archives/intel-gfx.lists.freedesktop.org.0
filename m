Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABE2BEDFB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 11:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E0E6EE96;
	Thu, 26 Sep 2019 09:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF86C6EE95
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 09:04:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 02:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="196283993"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2019 02:04:32 -0700
Date: Thu, 26 Sep 2019 14:34:22 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190926090421.GB28487@intel.com>
References: <20190926052135.29911-1-ramalingam.c@intel.com>
 <5a6f8e64-371f-adc7-d278-5e1f5562043a@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a6f8e64-371f-adc7-d278-5e1f5562043a@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create dumb buffer from LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNiBhdCAwOTo1NToxNiArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4g
Cj4gT24gMjYvMDkvMjAxOSAwNjoyMSwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+ID4gV2hlbiBMTUVN
IGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0ZWQgZnJvbSBM
TUVNLgo+ID4gCj4gPiBUaGlzIGlzIGRldmVsb3BlZCBvbiB0b3Agb2YgdjMgTE1FTSBzZXJpZXMK
PiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTY2ODMvLgo+ID4g
Cj4gPiB2MjoKPiA+ICAgIFBhcmFtZXRlcnMgYXJlIHJlc2h1ZmZsZWQuIFtDaHJpc10KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+
ID4gY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+IC0tLQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMTggKysrKysrKysrKysrKysrLS0t
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+IGluZGV4IGU0NTg1MDdiMTU1OC4uNjgx
MGE1NDllZTk4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
Ywo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4gQEAgLTQ0LDYg
KzQ0LDcgQEAKPiA+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jbGZsdXNoLmgiCj4gPiAgICNp
bmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgo+ID4gICAjaW5jbHVkZSAiZ2VtL2k5MTVf
Z2VtX2lvY3Rscy5oIgo+ID4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fbG1lbS5oIgo+ID4gICAj
aW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCj4gPiAgICNpbmNsdWRlICJndC9pbnRlbF9lbmdp
bmVfdXNlci5oIgo+ID4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiA+IEBAIC0xNjAsNiAr
MTYxLDcgQEAgaTkxNV9nZW1fcGh5c19wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPiA+ICAgc3RhdGljIGludAo+ID4gICBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlLAo+ID4gICAJCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+
ICsJCWVudW0gaW50ZWxfcmVnaW9uX2lkIG1lbV9yZWdpb24sCj4gPiAgIAkJdTY0ICpzaXplX3As
Cj4gPiAgIAkJdTMyICpoYW5kbGVfcCkKPiA+ICAgewo+ID4gQEAgLTE3Myw3ICsxNzUsMTIgQEAg
aTkxNV9nZW1fY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiA+ICAgCQlyZXR1cm4gLUVJ
TlZBTDsKPiA+ICAgCS8qIEFsbG9jYXRlIHRoZSBuZXcgb2JqZWN0ICovCj4gPiAtCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oZGV2X3ByaXYsIHNpemUpOwo+ID4gKwlpZiAobWVt
X3JlZ2lvbiA9PSBJTlRFTF9NRU1PUllfTE1FTSkKPiA+ICsJCW9iaiA9IGk5MTVfZ2VtX29iamVj
dF9jcmVhdGVfbG1lbShkZXZfcHJpdiwgc2l6ZSwgMCk7Cj4gPiArCWVsc2UgaWYgKG1lbV9yZWdp
b24gPT0gSU5URUxfTUVNT1JZX1NUT0xFTikKPiA+ICsJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9j
cmVhdGVfc3RvbGVuKGRldl9wcml2LCBzaXplKTsKPiA+ICsJZWxzZQo+ID4gKwkJb2JqID0gaTkx
NV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7Cj4gPiAgIAlpZiAoSVNf
RVJSKG9iaikpCj4gPiAgIAkJcmV0dXJuIFBUUl9FUlIob2JqKTsKPiA+IEBAIC0xOTMsNiArMjAw
LDcgQEAgaTkxNV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAo+ID4gICAJ
CSAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiA+ICAgCQkgICAgIHN0cnVjdCBkcm1fbW9k
ZV9jcmVhdGVfZHVtYiAqYXJncykKPiA+ICAgewo+ID4gKwllbnVtIGludGVsX3JlZ2lvbl9pZCBt
ZW1fcmVnaW9uID0gSU5URUxfTUVNT1JZX1VLTk9XTjsKPiA+ICAgCWludCBjcHAgPSBESVZfUk9V
TkRfVVAoYXJncy0+YnBwLCA4KTsKPiA+ICAgCXUzMiBmb3JtYXQ7Cj4gPiBAQCAtMjE5LDcgKzIy
NywxMSBAQCBpOTE1X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gPiAg
IAkJYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT5waXRjaCwgNDA5Nik7Cj4gPiAgIAlhcmdzLT5z
aXplID0gYXJncy0+cGl0Y2ggKiBhcmdzLT5oZWlnaHQ7Cj4gPiAtCXJldHVybiBpOTE1X2dlbV9j
cmVhdGUoZmlsZSwgdG9faTkxNShkZXYpLAo+ID4gKwo+ID4gKwlpZiAoSEFTX0xNRU0odG9faTkx
NShkZXYpKSkKPiA+ICsJCW1lbV9yZWdpb24gPSBJTlRFTF9NRU1PUllfTE1FTTsKPiA+ICsKPiA+
ICsJcmV0dXJuIGk5MTVfZ2VtX2NyZWF0ZShmaWxlLCB0b19pOTE1KGRldiksIG1lbV9yZWdpb24s
Cj4gPiAgIAkJCSAgICAgICAmYXJncy0+c2l6ZSwgJmFyZ3MtPmhhbmRsZSk7Cj4gPiAgIH0KPiA+
IEBAIC0yMzgsNyArMjUwLDcgQEAgaTkxNV9nZW1fY3JlYXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gPiAgIAlpOTE1X2dlbV9mbHVzaF9mcmVlX29iamVjdHMo
ZGV2X3ByaXYpOwo+ID4gLQlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIGRldl9wcml2LAo+
ID4gKwlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIGRldl9wcml2LCBJTlRFTF9NRU1PUllf
VUtOT1dOLAo+ID4gICAJCQkgICAgICAgJmFyZ3MtPnNpemUsICZhcmdzLT5oYW5kbGUpOwo+IAo+
IFdlIGRvbid0IGhhdmUgc2htZW0gbWVtb3J5IHJlZ2lvbj8gT3IgZGVmYXVsdD8gT3IgaXMgdW5r
bm93biBzdXBwb3NlZCB0bwo+IG1lYW4gZGVmYXVsdCBmb3IgYSBnaXZlbiBwbGF0Zm9ybT8KSSB0
YWtlIHRoaXMgYXMgZGVmYXVsdC4gTm90IHN1cmUgaWYgd2UgbmVlZCB0byBwYXNzIGFueXRoaW5n
IChkZWZhdWx0CnJlZ2lvbikgc3BlY2lmaWNhbGx5LgoKLVJhbQoKPiAKPiBSZWdhcmRzLAo+IAo+
IFR2cnRrbwo+IAo+ID4gICB9Cj4gPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
