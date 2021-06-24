Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3071F3B2D3F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 13:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B136C6EA4D;
	Thu, 24 Jun 2021 11:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A166EA3D;
 Thu, 24 Jun 2021 11:08:28 +0000 (UTC)
IronPort-SDR: yMblOyYghEMNppFGfqnsHTSbl0X2M6lJf413YBtmY39yYo78QWjcTyWW2Bv7dLC3yg0p0H21kC
 Kwb6y5Qlhtzg==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194587233"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194587233"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 04:08:26 -0700
IronPort-SDR: lbU37YYi5etTQfSRWoSkj+F9nZWxbAjD37TmmvbEM7wFMciNzsaL9RUlt2ZKzEgSDRrfq+V3kV
 1qigic0HaA9Q==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="556463191"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.20])
 ([10.249.254.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 04:08:25 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210623141615.291391-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <9563165c-2edd-02c1-1335-efdd68e4b214@linux.intel.com>
Date: Thu, 24 Jun 2021 13:08:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210623141615.291391-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: support forcing the page
 size with lmem
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjMvMjEgNDoxNiBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IEZvciBzb21lIHNwZWNp
YWxpc2VkIG9iamVjdHMgd2UgbWlnaHQgbmVlZCBzb21ldGhpbmcgbGFyZ2VyIHRoYW4gdGhlCj4g
cmVnaW9ucyBtaW5fcGFnZV9zaXplIGR1ZSB0byBzb21lIGh3IHJlc3RyaWN0aW9uLCBhbmQgc2xp
Z2h0bHkgbW9yZQo+IGhhaXJ5IGlzIG5lZWRpbmcgc29tZXRoaW5nIHNtYWxsZXIgd2l0aCB0aGUg
Z3VhcmFudGVlIHRoYXQgc3VjaCBvYmplY3RzCj4gd2lsbCBuZXZlciBiZSBpbnNlcnRlZCBpbnRv
IGFueSBHVFQsIHdoaWNoIGlzIHRoZSBjYXNlIGZvciB0aGUgcGFnaW5nCj4gc3RydWN0dXJlcy4K
Pgo+IFRoaXMgYWxzbyBmaXhlcyBob3cgd2Ugc2V0dXAgdGhlIEJPIHBhZ2VfYWxpZ25tZW50LCBp
ZiB3ZSBsYXRlciBtaWdyYXRlCj4gdGhlIG9iamVjdCBzb21ld2hlcmUgZWxzZS4gRm9yIGV4YW1w
bGUgaWYgdGhlIHBsYWNlbWVudHMgYXJlIHtTTUVNLAo+IExNRU19LCB0aGVuIHdlIG1pZ2h0IGdl
dCB0aGlzIHdyb25nLiBQdXNoaW5nIHRoZSBtaW5fcGFnZV9zaXplIGJlaGF2aW91cgo+IGludG8g
dGhlIG1hbmFnZXIgc2hvdWxkIGZpeCB0aGlzLgo+Cj4gdjIoVGhvbWFzKTogcHVzaCB0aGUgZGVm
YXVsdCBwYWdlIHNpemUgYmVoYXZpb3VyIGludG8gYnVkZHlfbWFuLCBhbmQgbGV0Cj4gdGhlIHVz
ZXIgb3ZlcnJpZGUgaXQgd2l0aCB0aGUgcGFnZS1hbGlnbm1lbnQsIHdoaWNoIGxvb2tzIGNsZWFu
ZXIKPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwu
Y29tPgoKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
