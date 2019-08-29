Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B44A1228
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 08:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14AC89FAC;
	Thu, 29 Aug 2019 06:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC06989FAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 06:58:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 23:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="180790461"
Received: from pmadmonx-mobl.ger.corp.intel.com (HELO [10.252.53.172])
 ([10.252.53.172])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2019 23:58:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190828143327.7965-1-lionel.g.landwerlin@intel.com>
 <20190828143327.7965-10-lionel.g.landwerlin@intel.com>
 <156702131120.15406.7126978014875563957@skylake-alporthouse-com>
 <d60f6253-a9f2-9f50-34b5-f11ea81912b9@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a0fe0f92-6971-e148-998a-8e988259efee@intel.com>
Date: Thu, 29 Aug 2019 09:58:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d60f6253-a9f2-9f50-34b5-f11ea81912b9@intel.com>
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

T24gMjkvMDgvMjAxOSAwOTo0NSwgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4gT24gMjgvMDgv
MjAxOSAyMjo0MSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIExpb25lbCBMYW5kd2Vy
bGluICgyMDE5LTA4LTI4IDE1OjMzOjI2KQo+Pj4gK8KgwqDCoMKgwqDCoCBycSA9IGk5MTVfcmVx
dWVzdF9jcmVhdGUoaTkxNS0+ZW5naW5lW1JDUzBdLT5rZXJuZWxfY29udGV4dCk7Cj4+PiArwqDC
oMKgwqDCoMKgIGlmIChJU19FUlIocnEpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIFBUUl9FUlIocnEpOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCBlcnIgPSAKPj4+
IGk5MTVfYWN0aXZlX3JlcXVlc3Rfc2V0KCZpOTE1LT5lbmdpbmVbUkNTMF0tPmxhc3Rfb2FfY29u
ZmlnLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBycSk7Cj4+IEkgYW0gc3RpbGwgbm90IHNvbGQgb24g
cHV0dGluZyB0aGUgZ2xvYmFsIG9hX2NvbmZpZyB0aW1lbGluZSBvbiB0aGUKPj4gZW5naW5lLCBh
bmQgc3RpbGwgZGlzbGlrZSB0aGUgc3VnZ2VzdGlvbiBvZiB1c2luZyBzdHJ1Y3RfbXV0ZXggdG8K
Pj4gbWFuYWdlbWVudCBpdC4KPgo+Cj4gV2hlcmUgZWxzZSBjb3VsZCB3ZSBwdXQgaXQ/CgoKTm90
ZSB0aGF0IEkgc2hvdWxkIHByb2JhYmx5IG1vdmUgdGhlIGV4Y2x1c2l2ZV9zdHJlYW0gb24gdGhl
IGVuZ2luZSB0b28uCgpUaGUgaWRlYSBiZWluZyB0aGF0IHRoaXMgc2hvdWxkIGJlIGF0dGFjaGVk
IHRvIHRoZSBlbmdpbmUgd2hlcmUgcGFydCBvZiAKdGhlIE9BIHVuaXQgaXMgbG9jYXRlZC4KCgot
TGlvbmVsCgo+Cj4KPj4KPj4gWW91IHdpbGwgbm90aWNlIHRoYXQgaTkxNV9hY3RpdmVfcmVxdWVz
dF9zZXQoKSBjaGVja3MgdGhhdCB5b3UgaGF2ZSB0aGUKPj4gbXV0ZXggaGVsZCB0aGF0IHlvdXIg
aW5pdGlhbGlzZWQgd2l0aCAoaW4gdGhpcyBjYXNlIHRoYXQgaXMgYSAqTlVMTCkuCj4+IC1DaHJp
cwo+Pgo+Cj4gV2lsbCBmaXggdGhhdCwgdGhhbmtzLgo+Cj4KPiAtTGlvbmVsCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
