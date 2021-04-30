Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D1336F8FF
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 13:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F586E434;
	Fri, 30 Apr 2021 11:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E226E434
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 11:15:49 +0000 (UTC)
IronPort-SDR: get1NBWMoAhc53E5Y2sGxtuKCBWRNYyKvxIhTf7YgVhgPOTyA76a4SZ45y98sk2lhEV6TP0lBI
 IRakh2UMWHYw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="194066353"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="194066353"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 04:15:49 -0700
IronPort-SDR: 8OAaupVPC6wRAILJ0wGrt8Zbeuxqmtms+Gea47d4v2Z0wNG2lXtN8duVEE0PAAbgmTi68Lm1xf
 2uWDoW0WZNdA==
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="424951703"
Received: from xpetot-mobl3.ger.corp.intel.com (HELO [10.252.51.218])
 ([10.252.51.218])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 04:15:48 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210429120158.1105318-1-maarten.lankhorst@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <a4b40373-7678-4074-8b8c-33711e5b3ab4@linux.intel.com>
Date: Fri, 30 Apr 2021 13:15:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210429120158.1105318-1-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove erroneous i915_is_ggtt
 check for I915_GEM_OBJECT_UNBIND_VM_TRYLOCK
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjktMDQtMjAyMSBvbSAxNDowMSBzY2hyZWVmIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+IFdlIGNo
YW5nZWQgdGhlIGxvY2tpbmcgaGllcmFyY2h5IGZvciBib3RoIHBwZ3R0IGFuZCBnZ3R0LCBzbyBi
b3RoIGxvY2tzCj4gc2hvdWxkIGJlIHRyeWxvY2tlZCBpbnNpZGUgaTkxNV9nZW1fb2JqZWN0X3Vu
YmluZCgpLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBGaXhlczogYmM2ZjgwY2NlOWFlICgiZHJtL2k5MTU6
IFVzZSB0cnlsb2NrIGluIHNocmlua2VyIGZvciBnZ3R0IG9uIGJzdyB2dC1kIGFuZCBieHQsIHYy
LiIpCj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDMgKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IDA3ZGE2YTkzNDJlMy4uZDAwMThjNWY4OGJkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAgLTE1OCw4ICsxNTgsNyBAQCBpbnQgaTkxNV9n
ZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAJCQly
ZXQgPSAtRUJVU1k7Cj4gIAkJCWlmIChmbGFncyAmIEk5MTVfR0VNX09CSkVDVF9VTkJJTkRfQUNU
SVZFIHx8Cj4gIAkJCSAgICAhaTkxNV92bWFfaXNfYWN0aXZlKHZtYSkpIHsKPiAtCQkJCWlmIChp
OTE1X2lzX2dndHQodm1hLT52bSkgJiYKPiAtCQkJCSAgICBmbGFncyAmIEk5MTVfR0VNX09CSkVD
VF9VTkJJTkRfVk1fVFJZTE9DSykgewo+ICsJCQkJaWYgKGZsYWdzICYgSTkxNV9HRU1fT0JKRUNU
X1VOQklORF9WTV9UUllMT0NLKSB7Cj4gIAkJCQkJaWYgKG11dGV4X3RyeWxvY2soJnZtYS0+dm0t
Pm11dGV4KSkgewo+ICAJCQkJCQlyZXQgPSBfX2k5MTVfdm1hX3VuYmluZCh2bWEpOwo+ICAJCQkJ
CQltdXRleF91bmxvY2soJnZtYS0+dm0tPm11dGV4KTsKCkFwcGxpZWQgd2l0aCBUaG9tYXMnIGly
YyByLWIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
