Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F03F32CD3A0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 11:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3942D6E0C6;
	Thu,  3 Dec 2020 10:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A442C6E0C6;
 Thu,  3 Dec 2020 10:34:29 +0000 (UTC)
IronPort-SDR: EaWLtlDSuzeTCGlWLFT3y38JjoSWxYZuV9fudMez7SyIxsD2FTlvE00/UJ+MlvnGSbG3rW3PxU
 VSeT46HFzAcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="173265763"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="173265763"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 02:34:28 -0800
IronPort-SDR: A7uWYnzdq3Y9Em1QnL2gTlaXI5efcqlI5HQ5YKuoC4q/cUQ1b/S2yxiaf5dCwk4nuM28Ka/xLz
 FdY1kM17I3WA==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="335910501"
Received: from jsekita-mobl3.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.9.165])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 02:34:27 -0800
Date: Thu, 3 Dec 2020 11:34:23 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201203103423.GA29773@zkempczy-mobl2>
References: <20201203083931.1370591-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201203083931.1370591-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/api_intel_bb: Only assert
 objects are unmoved for full-ppgtt
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgMDMsIDIwMjAgYXQgMDg6Mzk6MzFBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IElmIHdlIGxldCBhbiBvYmplY3QgaWRsZSBpbiBhIHNoYXJlZCBHVFQsIGl0IG1heSBi
ZSBldmljdGVkIGJ5IHRoZQo+IGtlcm5lbCBpbiBmYXZvdXIgb2YgYW5vdGhlciBjbGllbnQuIFRo
dXMsIHdlIGhhdmUgdG8gYmUgdmVyeSBjYXJlZnVsCj4gd2hlbiBhc3NlcnRpbmcgdGhhdCB0d28g
ZGlmZmVyZW50IGV4ZWN1dGlvbnMgb2YgdGhlIHNhbWUgb2JqZWN0IHdpbGwKPiBiZSBhdCB0aGUg
c2FtZSBhZGRyZXNzLiBJZiB0aGVyZSdzIGFuIGlkbGUgcG9pbnQgYmV0d2VlbiB0aGUgdHdvCj4g
YXNzZXJ0cywgaXQgd2lsbCBvbmx5IGJlIGd1YXJhbnRlZWQgdG8gaG9sZCBmb3IgZnVsbC1wcGd0
dC4KPiAKPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
LS9pc3N1ZXMvMjc1NAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBj
enluc2tpQGludGVsLmNvbT4KPiAtLS0KPiAgdGVzdHMvaTkxNS9hcGlfaW50ZWxfYmIuYyB8IDE5
ICsrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvYXBpX2ludGVsX2Ji
LmMgYi90ZXN0cy9pOTE1L2FwaV9pbnRlbF9iYi5jCj4gaW5kZXggMGNiMzE5MmNiLi4xODgxNGQx
NGQgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9hcGlfaW50ZWxfYmIuYwo+ICsrKyBiL3Rlc3Rz
L2k5MTUvYXBpX2ludGVsX2JiLmMKPiBAQCAtNTA1LDEwICs1MDUsMjEgQEAgc3RhdGljIHZvaWQg
YmxpdChzdHJ1Y3QgYnVmX29wcyAqYm9wcywKPiAgCWludGVsX2JiX2V4ZWMoaWJiLCBpbnRlbF9i
Yl9vZmZzZXQoaWJiKSwgZmxhZ3MsIHRydWUpOwo+ICAJY2hlY2tfYnVmKGRzdCwgQ09MT1JfNzcp
Owo+ICAKPiAtCXBvZmYyX3NyYyA9IGludGVsX2JiX2dldF9vYmplY3Rfb2Zmc2V0KGliYiwgc3Jj
LT5oYW5kbGUpOwo+IC0JcG9mZjJfZHN0ID0gaW50ZWxfYmJfZ2V0X29iamVjdF9vZmZzZXQoaWJi
LCBkc3QtPmhhbmRsZSk7Cj4gLQlpZ3RfYXNzZXJ0KHBvZmZfc3JjID09IHBvZmYyX3NyYyk7Cj4g
LQlpZ3RfYXNzZXJ0KHBvZmZfZHN0ID09IHBvZmYyX2RzdCk7Cj4gKwkvKgo+ICsJICogU2luY2Ug
d2UgbGV0IHRoZSBvYmplY3RzIGlkbGUsIGlmIHRoZSBHVFQgaXMgc2hhcmVkIGFub3RoZXIgY2xp
ZW50Cj4gKwkgKiBpcyBsaWFibGUgdG8gcmV1c2Ugb3VyIG9mZnNldHMgZm9yIHRoZW1zZWx2ZXMs
IGNhdXNpbmcgdXMgdG8gaGF2ZQo+ICsJICogdG8gcmVsb2NhdGUuIFdlIGRvbid0IGV4cGVjdCB0
aGlzIHRvIGhhcHBlbiBhcyBMUlUgZXZpY3Rpb24gc2hvdWxkCj4gKwkgKiB0cnkgdG8gYXZvaWQg
cmV1c2UsIGJ1dCB3ZSB1c2UgcmFuZG9tIGV2aWN0aW9uIGluc3RlYWQgYXMgaXQgaXMKPiArCSAq
IG11Y2ggcXVpY2tlciEgR2l2ZW4gdGhhdCB0aGUga2VybmVsIGlzICphbGxvd2VkKiB0byByZWxv
Y2F0ZSBvYmplY3RzLAo+ICsJICogd2UgY2Fubm90IGFzc2VydCB0aGF0IHRoZSBvYmplY3RzIHJl
bWFpbiBpbiB0aGUgc2FtZSBsb2NhdGlvbiwgdW5sZXNzCj4gKwkgKiB3ZSBhcmUgaW4gZnVsbCBj
b250cm9sIG9mIG91ciBvd24gR1RULgo+ICsJICovCj4gKwlpZiAoZ2VtX3VzZXNfZnVsbF9wcGd0
dChpOTE1KSkgewo+ICsJCWlndF9hc3NlcnRfZXFfdTY0KGludGVsX2JiX2dldF9vYmplY3Rfb2Zm
c2V0KGliYiwgc3JjLT5oYW5kbGUpLAo+ICsJCQkJICBwb2ZmX3NyYyk7Cj4gKwkJaWd0X2Fzc2Vy
dF9lcV91NjQoaW50ZWxfYmJfZ2V0X29iamVjdF9vZmZzZXQoaWJiLCBkc3QtPmhhbmRsZSksCj4g
KwkJCQkgIHBvZmZfZHN0KTsKPiArCX0KPiAgCj4gIAlpbnRlbF9idWZfZGVzdHJveShzcmMpOwo+
ICAJaW50ZWxfYnVmX2Rlc3Ryb3koZHN0KTsKPiAtLSAKPiAyLjI5LjIKPiAKClBhdGNoIGxvb2tz
IG9rLiBCVFcgaXMgaXQgcG9zc2libGUgd2hlbiB3ZSdyZSBydW5uaW5nIHRoZSB0ZXN0IGluIGlz
b2xhdGVkCmVudmlyb25tZW50IChJR1QpPwoKUmV2aWV3ZWQtYnk6IFpiaWduaWV3IEtlbXBjennF
hHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgoKLS0KWmJpZ25pZXcKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
