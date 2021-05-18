Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2383877F9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456316EB2F;
	Tue, 18 May 2021 11:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD186EB2F;
 Tue, 18 May 2021 11:46:16 +0000 (UTC)
IronPort-SDR: gZmFAYg2jir1wOb6InB11zkGunTAGuCAYfsNmhUbIPJhryFwBLSoDhHfIVr455p/VQwjB5cF5K
 7CGvAnSHR5bA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180966938"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="180966938"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:46:16 -0700
IronPort-SDR: FKJAbiOFL+d1oczpOWQEILNTRxkU8b578SO0aes3FpphsNaC2x0OiFLzYl9EZrArGVb/rEva+O
 CXKuKjpyGmuQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439403725"
Received: from cbackhau-mobl.ger.corp.intel.com (HELO [10.252.37.121])
 ([10.252.37.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:46:15 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-8-thomas.hellstrom@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <7489281c-c79d-bd13-90d8-7d0aaca42c30@linux.intel.com>
Date: Tue, 18 May 2021 13:46:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210518082701.997251-8-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 07/15] drm/ttm: Export ttm_bo_tt_destroy()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTgtMDUtMjAyMSBvbSAxMDoyNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+IEZvciB0
aGUgdXBjb21pbmcga21hcHBpbmcgaTkxNSBtZW1jcHlfbW92ZSwgZXhwb3J0IHR0bV9ib190dF9k
ZXN0cm95KCkuCj4gQSBmdXR1cmUgY2hhbmdlIG1pZ2h0IGJlIHRvIG1vdmUgdGhlIG5ldyBtZW1j
cHlfbW92ZSBpbnRvIHR0bSwgcmVwbGFjaW5nCj4gdGhlIG9sZCBpb3JlbWFwcGluZyBvbmUuCj4K
PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyB8IDEgKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+IGluZGV4IGNh
MWIwOThiNmE1Ni4uNDQ3OWM1NWFhYTFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gQEAgLTEy
MjEsMyArMTIyMSw0IEBAIHZvaWQgdHRtX2JvX3R0X2Rlc3Ryb3koc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibykKPiAgCXR0bV90dF9kZXN0cm95KGJvLT5iZGV2LCBiby0+dHRtKTsKPiAgCWJv
LT50dG0gPSBOVUxMOwo+ICB9Cj4gK0VYUE9SVF9TWU1CT0wodHRtX2JvX3R0X2Rlc3Ryb3kpOwoK
TG9va3Mgc2FuZSwgY291bGQgd2UgcmVvcmRlciB0aGUgcGF0Y2hlcyB0byBwdXQgYWxsIHR0bSBj
aGFuZ2VzIGZpcnN0PwoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
