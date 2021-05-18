Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61953387C32
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 17:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 523026E8C8;
	Tue, 18 May 2021 15:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0E76E8C8;
 Tue, 18 May 2021 15:15:50 +0000 (UTC)
IronPort-SDR: j3Ae7SPtKGedmjBxukIPp//mzFb7UoIl3WyAwNFyHJWvD/eMowQwxL+os1tDiDqjbi5O1a1M65
 RO16+6T9hzqg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="200792390"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="200792390"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 08:15:49 -0700
IronPort-SDR: Qa+DsaZ8Fzt7t9dRyOaFEZt3TJ/jJ7wJafP/eH81yX+KKcCcfX6LQZxV4LpnmjSPNX1+6ymljH
 GJMG+lnrBQxA==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439081779"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 08:15:48 -0700
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
Date: Tue, 18 May 2021 17:15:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 09/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgMTA6MjYgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+IFdlIGFyZSBj
YWxsaW5nIHRoZSBldmljdGlvbl92YWx1YWJsZSBkcml2ZXIgY2FsbGJhY2sgYXQgZXZpY3Rpb24g
dGltZSB0bwo+IGRldGVybWluZSB3aGV0aGVyIHdlIGFjdHVhbGx5IGNhbiBldmljdCBhIGJ1ZmZl
ciBvYmplY3QuCj4gVGhlIHVwY29taW5nIGk5MTUgVFRNIGJhY2tlbmQgbmVlZHMgdGhlIHNhbWUg
ZnVuY3Rpb25hbGl0eSBmb3Igc3dhcG91dCwKPiBhbmQgdGhhdCBtaWdodCBhY3R1YWxseSBiZSBi
ZW5lZmljaWFsIHRvIG90aGVyIGRyaXZlcnMgYXMgd2VsbC4KPgo+IEFkZCBhbiBldmljdGlvbl92
YWx1YWJsZSBjYWxsIGFsc28gaW4gdGhlIHN3YXBvdXQgcGF0aC4gVHJ5IHRvIGtlZXAgdGhlCj4g
Y3VycmVudCBiZWhhdmlvdXIgZm9yIGFsbCBkcml2ZXJzIGJ5IHJldHVybmluZyB0cnVlIGlmIHRo
ZSBidWZmZXIgb2JqZWN0Cj4gaXMgYWxyZWFkeSBpbiB0aGUgVFRNX1BMX1NZU1RFTSBwbGFjZW1l
bnQuIFdlIGNoYW5nZSBiZWhhdmlvdXIgZm9yIHRoZQo+IGNhc2Ugd2hlcmUgYSBidWZmZXIgb2Jq
ZWN0IGlzIGluIGEgVFQgYmFja2VkIHBsYWNlbWVudCB3aGVuIHN3YXBwZWQgb3V0LAo+IGluIHdo
aWNoIGNhc2UgdGhlIGRyaXZlcnMgbm9ybWFsIGV2aWN0aW9uX3ZhbHVhYmxlIHBhdGggaXMgcnVu
Lgo+Cj4gRmluYWxseSBleHBvcnQgdHRtX3R0X3VucG9wdWxhdGUoKSBhbmQgZG9uJ3Qgc3dhcCBv
dXQgYm9zCj4gdGhhdCBhcmUgbm90IHBvcHVsYXRlZC4gVGhpcyBhbGxvd3MgYSBkcml2ZXIgdG8g
cHVyZ2UgYSBibyBhdAo+IHN3YXBvdXQgdGltZSBpZiBpdHMgY29udGVudCBpcyBubyBsb25nZXIg
dmFsdWFibGUgcmF0aGVyIHRoYW4gdG8KPiBoYXZlIFRUTSBzd2FwIHRoZSBjb250ZW50cyBvdXQu
Cj4KPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KCkNocmlzdGlhbiwKCkhlcmUgd2UgaGF2ZSBhIHR0bV90dF91bnBvcHVsYXRlKCkg
ZXhwb3J0IGFzIHdlbGwgYXQgdGhlIGVuZC4gSSBmaWd1cmUgCnlvdSB3aWxsIHB1c2ggYmFjayBv
biB0aGF0IG9uZS4gV2hhdCB3ZSByZWFsbHkgbmVlZCBpcyBhIGZ1bmN0aW9uYWxpdHkgCnRvIGp1
c3QgZHJvcCB0aGUgYm8gY29udGVudHMgYW5kIGVuZCB1cCBpbiBzeXN0ZW0gbWVtb3J5IHVucG9w
dWxhdGVkLiAKU2hvdWxkIEkgcGVyaGFwcyBhZGQgYSB1dGlsaXR5IGZ1bmN0aW9uIHRvIGRvIHRo
YXQgaW5zdGVhZD8gbGlrZSAKdHRtX2JvX3B1cmdlKCk/CgpUaGFua3MsCgpUaG9tYXMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
