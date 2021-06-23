Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A94C3B2024
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 20:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FAC26E95D;
	Wed, 23 Jun 2021 18:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948036E95D
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 18:18:20 +0000 (UTC)
IronPort-SDR: 9OUDC6ELVOyTGtVcxv8WEDeH5NO+tI+i/Ar1Vi2+nSQveDV+x6rUcWz2t7euft8KllRsbZ5rCl
 WbmC0W+q7EVg==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="204314594"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="204314594"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 11:18:19 -0700
IronPort-SDR: Uj4XGb4DKe51/hvtnYfKzx+5X/kL1erAUfK3K/pGjRhMq4Q2yy1z3y0qoMGqQ0+sEsAYPELNNv
 cdEFTdU5yAiA==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="454744297"
Received: from unknown (HELO [10.237.72.175]) ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 11:18:18 -0700
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210616203158.118111-1-jose.souza@intel.com>
 <20210616203158.118111-5-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <64e0eb9b-ebb9-78b3-a266-44a1324cd327@intel.com>
Date: Wed, 23 Jun 2021 21:18:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210616203158.118111-5-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/display/adl_p: Implement
 Wa_16011303918
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

bG9va3MgZ29vZCB0byBtZQoKUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVv
bmcubXVuQGludGVsLmNvbT4KCk9uIDYvMTYvMjEgMTE6MzEgUE0sIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6Cj4gUFNSMiBpcyBub3QgY29tcGF0aWJsZSB3aXRoIERDM0NPIG9yIFZSUiBp
biB0aGlzIHN0ZXBwaW5nLCBzbyBub3QKPiBlbmFibGluZyBQU1IyIGlmIFZSUiB3aWxsIGJlIGVu
YWJsZWQgb3Igbm90IGVuYWJsaW5nIERDM0NPIGlmIFBTUjIgaXMKPiBwb3NzaWJsZS4KPiAKPiBC
U3BlYzogNTQzNjkKPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwu
Y29tPgo+IENjOiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTIg
KysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDNjYjg3NThiZTQw
NDIuLjk2NDM2MjRmZTE2MGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMKPiBAQCAtNzMzLDYgKzczMywxMCBAQCB0Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0
ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgIAlpZiAoIWRjM2NvX2lzX3Bp
cGVfcG9ydF9jb21wYXRpYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKSkKPiAgIAkJcmV0dXJuOwo+
ICAgCj4gKwkvKiBXYV8xNjAxMTMwMzkxODphZGxwICovCj4gKwlpZiAoSVNfQURMUF9ESVNQTEFZ
X1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTApKQo+ICsJCXJldHVybjsKPiArCj4gICAJ
LyoKPiAgIAkgKiBEQzNDTyBFeGl0IHRpbWUgMjAwdXMgQi5TcGVjIDQ5MTk2Cj4gICAJICogUFNS
MiB0cmFuc2NvZGVyIEVhcmx5IEV4aXQgc2NhbmxpbmVzID0gUk9VTkRVUCgyMDAgLyBsaW5lIHRp
bWUpICsgMQo+IEBAIC05NjEsNiArOTY1LDE0IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29u
ZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gICAJCXJldHVybiBmYWxzZTsK
PiAgIAl9Cj4gICAKPiArCS8qIFdhXzE2MDExMzAzOTE4OmFkbHAgKi8KPiArCWlmIChjcnRjX3N0
YXRlLT52cnIuZW5hYmxlICYmCj4gKwkgICAgSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYs
IFNURVBfQTAsIFNURVBfQTApKSB7Cj4gKwkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCj4g
KwkJCSAgICAiUFNSMiBub3QgZW5hYmxlZCwgbm90IGNvbXBhdGlibGUgd2l0aCBIVyBzdGVwcGlu
ZyArIFZSUlxuIik7Cj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsJfQo+ICsKPiAgIAl0Z2xfZGMzY29f
ZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwo+ICAgCXJldHVy
biB0cnVlOwo+ICAgfQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
