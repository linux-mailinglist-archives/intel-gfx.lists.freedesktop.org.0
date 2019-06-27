Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDF15843E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5314F6E422;
	Thu, 27 Jun 2019 14:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E228B6E422
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 14:09:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:09:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="189078065"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 07:09:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-8-lionel.g.landwerlin@intel.com>
 <156162875829.20851.6935372567348885846@skylake-alporthouse-com>
 <d123ff70-0576-d157-8627-f3e077040cde@intel.com>
 <156163999012.9225.9591199209869231394@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3fa3d8dc-30a4-50c6-20fa-87bb4d674934@intel.com>
Date: Thu, 27 Jun 2019 17:09:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156163999012.9225.9591199209869231394@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915: add a new perf
 configuration execbuf parameter
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjcvMDYvMjAxOSAxNTo1MywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMTM6MzI6MTMpCj4+IE9uIDI3LzA2LzIwMTkgMTI6NDUs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDYtMjcgMDk6MDA6NDIpCj4+Pj4gKyAgICAgICAvKgo+Pj4+ICsgICAgICAgICogSWYgdGhlIGNv
bmZpZyBoYXNuJ3QgY2hhbmdlZCwgc2tpcCByZWNvbmZpZ3VyaW5nIHRoZSBIVyAodGhpcyBpcwo+
Pj4+ICsgICAgICAgICogc3ViamVjdCB0byBhIGRlbGF5IHdlIHdhbnQgdG8gYXZvaWQgaGFzIG11
Y2ggYXMgcG9zc2libGUpLgo+Pj4+ICsgICAgICAgICovCj4+Pj4gKyAgICAgICBpZiAoZWItPm9h
X2NvbmZpZyA9PSBlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFtLT5vYV9jb25maWcp
Cj4+Pj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+Pj4+ICsKPj4+PiArICAgICAgIG9hX3Zt
YSA9IGk5MTVfdm1hX2luc3RhbmNlKGViLT5vYV9ibywKPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICZlYi0+ZW5naW5lLT5pOTE1LT5nZ3R0LnZtLCBOVUxMKTsKPj4+PiAr
ICAgICAgIGlmICh1bmxpa2VseShJU19FUlIob2Ffdm1hKSkpCj4+Pj4gKyAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKG9hX3ZtYSk7Cj4+Pj4gKwo+Pj4+ICsgICAgICAgZXJyID0gaTkxNV92
bWFfcGluKG9hX3ZtYSwgMCwgMCwgUElOX0dMT0JBTCk7Cj4+Pj4gKyAgICAgICBpZiAoZXJyKQo+
Pj4+ICsgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+Pj4gVWdoLiBXZSBzaG91bGQgbm90IGJl
IHBpbm5lZCBhZnRlciBjcmVhdGluZyB0aGUgcmVxdWVzdC4gTWlnaHQgbm90Cj4+PiBtYXR0ZXIg
LS0gaXQncyBqdXN0IHJlc2VydmF0aW9uIHVuZGVyIGl0cyBvd24gbG9jayB0aGF0IG11c3Qgbm90
IGJlCj4+PiBjcm9zc2VkIHdpdGggdGhlIHRpbWVsaW5lIGxvY2sgY3VycmVudGx5IGhlbGQgaGVy
ZS4KPj4KPj4gU2hvdWxkIEkgbW92ZSB0aGlzIGludG8gZ2V0X2V4ZWNidWZfb2FfY29uZmlnKCkg
Pwo+IFRoYXQgd291bGQgYmUgc2F2ZSBtZSBmcmV0dGluZyBhYm91dCB0aGUgbG9jayBuZXN0aW5n
Lgo+Cj4+Pj4gQEAgLTI2NTEsOSArMjc2MCwyMyBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4+Pj4gICAgICAgICAgIGlmICh1bmxpa2VseShlcnIpKQo+
Pj4+ICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX3VubG9jazsKPj4+PiAgICAKPj4+PiArICAg
ICAgIGlmIChlYi5leHRlbnNpb25zLmZsYWdzICYgQklUKERSTV9JOTE1X0dFTV9FWEVDQlVGRkVS
X0VYVF9QRVJGKSkgewo+Pj4+ICsgICAgICAgICAgICAgICBpZiAoIWludGVsX2VuZ2luZV9oYXNf
b2EoZWIuZW5naW5lKSkgewo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IC1FTk9E
RVY7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfZW5naW5lOwo+Pj4+ICsg
ICAgICAgICAgICAgICB9Cj4+Pj4gKwo+Pj4+ICsgICAgICAgICAgICAgICBlcnIgPSBnZXRfZXhl
Y2J1Zl9vYV9jb25maWcoZWIuaTkxNSwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGViLmV4dGVuc2lvbnMucGVyZl9jb25maWcucGVyZl9mZCwKPj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGViLmV4dGVuc2lvbnMu
cGVyZl9jb25maWcub2FfY29uZmlnLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmViLm9hX2NvbmZpZywgJmViLm9hX2JvKTsKPj4+PiArICAgICAgICAg
ICAgICAgaWYgKGVycikKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9lbmdp
bmU7Cj4+PiBXaHkgaXMgdGhpcyB1bmRlciB0aGUgc3RydWN0X211dGV4Pwo+Pgo+PiBBY2Nlc3Mg
dG8gZGV2X3ByaXYtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbSBtdXN0IGJlIHVuZGVyIHN0cnVj
dF9tdXRleC4KPj4KPj4gQWxzbyBiZWNhdXNlIHdlIHZlcmlmeSB0aGF0IHRoZSBlbmdpbmUgYWN0
dWFsbHkgaGFzIE9BIHN1cHBvcnQuCj4+Cj4+IEkgY291bGQgc3BsaXQgdGhlIGdldHRpbmcgdGhl
IGNvbmZpZ3VyYXRpb24gcGFydCBhd2F5Lgo+IEknbSBhYm91dCAxMF5XIDUwXlcgY2VydGFpbmx5
IGxlc3MgdGhhbiBhIDEwMCBwYXRjaGVzIGF3YXkgZnJvbSBraWxsaW5nCj4gc3RydWN0X211dGV4
IGZvciBleGVjYnVmLi4uCj4gLUNocmlzCj4KSSdtIHNvcnJ5LiBEZWFsaW5nIHdpdGggYWxsIHRo
aXMgT0Egc3R1ZmYgaXMgdW5kZXJ3aGVsbWluZy4KCkkgdGhpbmsgYW4gZW5naW5lIGxvY2sgd291
bGQgYmUgZW5vdWdoIGlmIHRoYXQncyBub3QgdG9vIGJhZCBmb3IgeW91LgoKCi1MaW9uZWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
