Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32C7A120E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 08:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3244A89F99;
	Thu, 29 Aug 2019 06:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0916B89F99
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 06:46:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 23:46:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="180788344"
Received: from pmadmonx-mobl.ger.corp.intel.com (HELO [10.252.53.172])
 ([10.252.53.172])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2019 23:45:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190828143327.7965-1-lionel.g.landwerlin@intel.com>
 <20190828143327.7965-10-lionel.g.landwerlin@intel.com>
 <156702131120.15406.7126978014875563957@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d60f6253-a9f2-9f50-34b5-f11ea81912b9@intel.com>
Date: Thu, 29 Aug 2019 09:45:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156702131120.15406.7126978014875563957@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v11 09/10] drm/i915/perf: execute OA
 configuration from command stream
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

T24gMjgvMDgvMjAxOSAyMjo0MSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDgtMjggMTU6MzM6MjYpCj4+ICsgICAgICAgcnEgPSBpOTE1X3Jl
cXVlc3RfY3JlYXRlKGk5MTUtPmVuZ2luZVtSQ1MwXS0+a2VybmVsX2NvbnRleHQpOwo+PiArICAg
ICAgIGlmIChJU19FUlIocnEpKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocnEp
Owo+PiArCj4+ICsgICAgICAgZXJyID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJmk5MTUtPmVu
Z2luZVtSQ1MwXS0+bGFzdF9vYV9jb25maWcsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcnEpOwo+IEkgYW0gc3RpbGwgbm90IHNvbGQgb24gcHV0dGluZyB0aGUgZ2xv
YmFsIG9hX2NvbmZpZyB0aW1lbGluZSBvbiB0aGUKPiBlbmdpbmUsIGFuZCBzdGlsbCBkaXNsaWtl
IHRoZSBzdWdnZXN0aW9uIG9mIHVzaW5nIHN0cnVjdF9tdXRleCB0bwo+IG1hbmFnZW1lbnQgaXQu
CgoKV2hlcmUgZWxzZSBjb3VsZCB3ZSBwdXQgaXQ/CgoKPgo+IFlvdSB3aWxsIG5vdGljZSB0aGF0
IGk5MTVfYWN0aXZlX3JlcXVlc3Rfc2V0KCkgY2hlY2tzIHRoYXQgeW91IGhhdmUgdGhlCj4gbXV0
ZXggaGVsZCB0aGF0IHlvdXIgaW5pdGlhbGlzZWQgd2l0aCAoaW4gdGhpcyBjYXNlIHRoYXQgaXMg
YSAqTlVMTCkuCj4gLUNocmlzCj4KCldpbGwgZml4IHRoYXQsIHRoYW5rcy4KCgotTGlvbmVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
