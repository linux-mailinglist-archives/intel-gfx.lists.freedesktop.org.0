Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181BC3A9906
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 13:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED136E02B;
	Wed, 16 Jun 2021 11:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273546E02B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 11:21:48 +0000 (UTC)
IronPort-SDR: R0cgQFG90GEny2VFtKaTuFqRje3SreukHGkX/WMK6h5SkaP0b9BGGQVqHwtprueTMT48u08AIQ
 x0Ywr9MIH/dg==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="227650675"
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="227650675"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 04:21:47 -0700
IronPort-SDR: k+xVG21H43g9Uy34dJ55ZttZMxMKXezvfDxqPLa2BWynju0WLsEVXHXkC6igwo13D+q9lIt6YO
 uzZJkK2yFDEw==
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="415712841"
Received: from kinstrum-mobl1.ger.corp.intel.com (HELO [10.249.254.192])
 ([10.249.254.192])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 04:21:46 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
 <20210615131451.61023-4-thomas.hellstrom@linux.intel.com>
 <4a250ff0-5584-9c55-9717-88fc15197c75@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <3c3fdf45-a1d0-b0e5-75c5-8521240e80e8@linux.intel.com>
Date: Wed, 16 Jun 2021 13:21:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <4a250ff0-5584-9c55-9717-88fc15197c75@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 03/12] drm/i915: Introduce a ww
 transaction helper
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMTYvMjEgMTowMCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMTUtMDYt
MjAyMSBvbSAxNToxNCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBJbnRyb2R1Y2UgYSBm
b3JfaTkxNV9nZW1fd3coKXt9IHV0aWxpdHkgdG8gaGVscCBtYWtlIHRoZSBjb2RlCj4+IGFyb3Vu
ZCBhIHd3IHRyYW5zYWN0aW9uIG1vcmUgcmVhZGFibGUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRo
b21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4gUmV2
aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4gLS0tCj4+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaCB8IDMxICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV93dy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaAo+PiBpbmRleCBm
MmQ4NzY5ZTQxMTguLmY2YjFhNzk2NjY3YiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fd3cuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV93dy5oCj4+IEBAIC0xMSwxMSArMTEsNDAgQEAgc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCB7Cj4+
ICAgCXN0cnVjdCB3d19hY3F1aXJlX2N0eCBjdHg7Cj4+ICAgCXN0cnVjdCBsaXN0X2hlYWQgb2Jq
X2xpc3Q7Cj4+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpjb250ZW5kZWQ7Cj4+IC0J
Ym9vbCBpbnRyOwo+PiArCXVuc2lnbmVkIHNob3J0IGludHI7Cj4+ICsJdW5zaWduZWQgc2hvcnQg
bG9vcDsKPj4gICB9Owo+PiAgIAo+PiAgIHZvaWQgaTkxNV9nZW1fd3dfY3R4X2luaXQoc3RydWN0
IGk5MTVfZ2VtX3d3X2N0eCAqY3R4LCBib29sIGludHIpOwo+PiAgIHZvaWQgaTkxNV9nZW1fd3df
Y3R4X2Zpbmkoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqY3R4KTsKPj4gICBpbnQgX19tdXN0X2No
ZWNrIGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0eCk7
Cj4+ICAgdm9pZCBpOTE1X2dlbV93d191bmxvY2tfc2luZ2xlKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopOwo+PiArCj4+ICsvKiBJbnRlcm5hbCBmdW5jdGlvbnMgdXNlZCBieSB0aGUg
aW5saW5lcyEgRG9uJ3QgdXNlLiAqLwo+PiArc3RhdGljIGlubGluZSBpbnQgX19pOTE1X2dlbV93
d19maW5pKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LCBpbnQgZXJyKQo+PiArewo+PiArCXd3
LT5sb29wID0gMDsKPj4gKwlpZiAoZXJyID09IC1FREVBRExLKSB7Cj4+ICsJCWVyciA9IGk5MTVf
Z2VtX3d3X2N0eF9iYWNrb2ZmKHd3KTsKPj4gKwkJaWYgKCFlcnIpCj4+ICsJCQl3dy0+bG9vcCA9
IDE7Cj4+ICsJfQo+PiArCj4+ICsJaWYgKCF3dy0+bG9vcCkKPj4gKwkJaTkxNV9nZW1fd3dfY3R4
X2Zpbmkod3cpOwo+PiArCj4+ICsJcmV0dXJuIGVycjsKPj4gK30KPj4gKwo+PiArc3RhdGljIGlu
bGluZSB2b2lkCj4+ICtfX2k5MTVfZ2VtX3d3X2luaXQoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAq
d3csIGJvb2wgaW50cikKPj4gK3sKPj4gKwlpOTE1X2dlbV93d19jdHhfaW5pdCh3dywgaW50cik7
Cj4+ICsJd3ctPmxvb3AgPSAxOwo+PiArfQo+PiArCj4+ICsjZGVmaW5lIGZvcl9pOTE1X2dlbV93
dyhfd3csIF9lcnIsIF9pbnRyKQkJCVwKPj4gKwlmb3IgKF9faTkxNV9nZW1fd3dfaW5pdChfd3cs
IF9pbnRyKTsgKF93dyktPmxvb3A7CVwKPj4gKwkgICAgIF9lcnIgPSBfX2k5MTVfZ2VtX3d3X2Zp
bmkoX3d3LCBfZXJyKSkKPj4gKwo+PiAgICNlbmRpZgo+IFdpdGggc29tZSBtb3JlIG1hY3JvIGFi
dXNlLCB3ZSBzaG91bGQgYmUgYWJsZSB0byBraWxsIG9mZiB3dy0+bG9vcCwKCktpbGxpbmcgb2Zm
IHd3LT5sb29wIGluIGl0c2VsZiBpcyBhIGdvb2QgdGhpbmcsIEkgdGhpbmsuIEJ1dCB0aGUgYmVs
b3cgCmlzIGHCoCBiaXQgaGFyZCB0byBmb2xsb3csIEkgdGhpbmssIDovCgo+IGZvciAoZXJyID0g
KHtpOTE1X2dlbV93d19jdHhfaW5pdCh3dywgaW50ciksIC1FREVBRExLfSk7IGVyciA9PSAtRURF
QURMSzsgZXJyID0gKGVyciA9PSAtRURFQURMSyAmJiAhKGVyciA9IGk5MTVfZ2VtX3d3X2N0eF9i
YWNrb2ZmKHd3KSkpID8gLUVERUFETEsgOiBlcnIpCgpDb3VsZCB3ZSBzaW1wbHkga2VlcCB0aGUg
aW5saW5lcyBhbmQgdXNlIGVycj0tRURFQURMSyBhcyB0aGUgbG9vcCAKY29uZGl0aW9uIGluc3Rl
YWQ/CgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
