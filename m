Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33C82110FA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 18:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8164E6E95D;
	Wed,  1 Jul 2020 16:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8086E95C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 16:46:07 +0000 (UTC)
IronPort-SDR: n/gk+aDXM/ebM2dndToPGwV2Nr+N84/xB/wH4up5LBHxhR1v388NSJbzutBgT2oJUuTB5g+35q
 jz/jX1NJMJ6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126262757"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="126262757"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:46:07 -0700
IronPort-SDR: +ja/8nuVD2rcwYGFfhw2sQUcadstyZRtogXkiztetl0/SHoYf09SUD8TMBezLBLaeiFrd8/yYb
 Lljy9m+ulWow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="321274991"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.134.81.79])
 ([10.134.81.79])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Jul 2020 09:46:01 -0700
To: =?UTF-8?Q?Micha=c5=82_Winiarski?= <michal@hardline.pl>,
 intel-gfx@lists.freedesktop.org
References: <20200701142752.419878-1-michal@hardline.pl>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <c04c137d-9124-7b6b-04d7-a885d6dbb98f@intel.com>
Date: Wed, 1 Jul 2020 09:45:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200701142752.419878-1-michal@hardline.pl>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Expand guc_info debugfs with
 more information
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?Q?Micha=c5=82_Winiarski?= <michal.winiarski@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzEvMjAyMCA3OjI3IEFNLCBNaWNoYcWCIFdpbmlhcnNraSB3cm90ZToKPiBGcm9tOiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4KPiBUaGUgaW5m
b3JtYXRpb24gYWJvdXQgcGxhdGZvcm0vZHJpdmVyL3VzZXIgdmlldyBvZiBHdUMgZmlybXdhcmUg
dXNhZ2UKPiBjdXJyZW50bHkgcmVxdWlyZXMgdXNlciB0byBlaXRoZXIgZ28gdGhyb3VnaCBrZXJu
ZWwgbG9nIG9yIHBhcnNlIHRoZQo+IGNvbWJpbmF0aW9uIG9mICJlbmFibGVfZ3VjIiBtb2RwYXJh
bSBhbmQgdmFyaW91cyBkZWJ1Z2ZzIGVudHJpZXMuCj4gTGV0J3Mga2VlcCB0aGluZ3Mgc2ltcGxl
IGFuZCBhZGQgYSAic3VwcG9ydGVkL3VzZWQvd2FudGVkIiBtYXRyaXgKPiAoYWxyZWFkeSB1c2Vk
IGludGVybmFsbHkgYnkgaTkxNSkgaW4gZ3VjX2luZm8gZGVidWdmcy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiBDYzog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
PiBDYzogTHVrYXN6IEZpZWRvcm93aWN6IDxsdWthc3ouZmllZG9yb3dpY3pAaW50ZWwuY29tPgo+
IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAtLS0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgMjMgKysrKysrKysr
KysrKysrKy0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKPiBpbmRl
eCA4NjE2NTc4OTdjMGYuLjQ0NmE0MTk0NmY1NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jCj4gQEAgLTczMywxOSArNzMzLDI4IEBAIGludCBpbnRlbF9ndWNfYWxs
b2NhdGVfYW5kX21hcF92bWEoc3RydWN0IGludGVsX2d1YyAqZ3VjLCB1MzIgc2l6ZSwKPiAgICAq
Lwo+ICAgdm9pZCBpbnRlbF9ndWNfbG9hZF9zdGF0dXMoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBz
dHJ1Y3QgZHJtX3ByaW50ZXIgKnApCj4gICB7Cj4gKwlzdHJ1Y3QgaW50ZWxfdWMgKnVjID0gY29u
dGFpbmVyX29mKGd1Yywgc3RydWN0IGludGVsX3VjLCBndWMpOwo+ICAgCXN0cnVjdCBpbnRlbF9n
dCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKPiAgIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSBndC0+dW5jb3JlOwo+ICAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICAgCj4gLQlpZiAo
IWludGVsX2d1Y19pc19zdXBwb3J0ZWQoZ3VjKSkgewo+IC0JCWRybV9wcmludGYocCwgIkd1QyBu
b3Qgc3VwcG9ydGVkXG4iKTsKPiArCWRybV9wcmludGYocCwgIltndWNdIHN1cHBvcnRlZDolcyB3
YW50ZWQ6JXMgdXNlZDolc1xuIiwKPiArCQkgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19ndWMo
dWMpKSwKPiArCQkgICB5ZXNubyhpbnRlbF91Y193YW50c19ndWModWMpKSwKPiArCQkgICB5ZXNu
byhpbnRlbF91Y191c2VzX2d1Yyh1YykpKTsKClRoZXJlIGFyZSBpbnRlbF9ndWMgZXF1aXZhbGVu
dHMgZm9yIHRoZXJlIHVjIGZ1bmN0aW9ucywgc28gd2UgY2FuIHVzZSAKdGhvc2UgYW5kIGF2b2lk
IHRoZSBpbnRlbF91YyB2YXIgaWYgd2UgZGl0Y2ggdGhlIEh1QyAoc2VlIGNvbW1lbnQgYmVsb3cp
OgoKaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZAppbnRlbF9ndWNfaXNfd2FudGVkCmludGVsX2d1Y19p
c191c2VkCgpTYW1lIGZvciB0aGUgb3RoZXJzLgoKPiArCWRybV9wcmludGYocCwgIltodWNdIHN1
cHBvcnRlZDolcyB3YW50ZWQ6JXMgdXNlZDolc1xuIiwKPiArCQkgICB5ZXNubyhpbnRlbF91Y19z
dXBwb3J0c19odWModWMpKSwKPiArCQkgICB5ZXNubyhpbnRlbF91Y193YW50c19odWModWMpKSwK
PiArCQkgICB5ZXNubyhpbnRlbF91Y191c2VzX2h1Yyh1YykpKTsKClRoZSBIdUMgdmlldyBzaG91
bGQgZ28gdG8gdGhlIGh1Y19pbmZvIGRlYnVnZnMKCj4gKwlkcm1fcHJpbnRmKHAsICJbc3VibWlz
c2lvbl0gc3VwcG9ydGVkOiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAo+ICsJCSAgIHllc25vKGlu
dGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSksCj4gKwkJICAgeWVzbm8oaW50ZWxf
dWNfd2FudHNfZ3VjX3N1Ym1pc3Npb24odWMpKSwKPiArCQkgICB5ZXNubyhpbnRlbF91Y191c2Vz
X2d1Y19zdWJtaXNzaW9uKHVjKSkpOwo+ICsKPiArCWlmICghaW50ZWxfZ3VjX2lzX3N1cHBvcnRl
ZChndWMpIHx8ICFpbnRlbF9ndWNfaXNfd2FudGVkKGd1YykpCgppbnRlbF9ndWNfaXNfd2FudGVk
IGltcGxpZXMgaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZCBzbyB5b3UgY2FuIApwb3RlbnRpYWxseSB0
ZXN0IG9ubHkgdGhhdCwgYnV0IEkgYWdyZWUgdGhhdCBoYXZpbmcgYm90aCBpcyBjbGVhcmVyIHRv
IHJlYWQuCgpEYW5pZWxlCgo+ICAgCQlyZXR1cm47Cj4gLQl9Cj4gICAKPiAtCWlmICghaW50ZWxf
Z3VjX2lzX3dhbnRlZChndWMpKSB7Cj4gLQkJZHJtX3ByaW50ZihwLCAiR3VDIGRpc2FibGVkXG4i
KTsKPiAtCQlyZXR1cm47Cj4gLQl9Cj4gKwlkcm1fcHV0cyhwLCAiXG4iKTsKPiAgIAo+ICAgCWlu
dGVsX3VjX2Z3X2R1bXAoJmd1Yy0+ZncsIHApOwo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
