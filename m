Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DBD2CF1C1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EE66E198;
	Fri,  4 Dec 2020 16:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26DE6E198
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 16:19:42 +0000 (UTC)
IronPort-SDR: ma/7VgNDACCbPYcfZ3q7ZEHLdLIInBaVEIcUjNtea+qaxyrcZteDk9UNqdYruXYHUVv72thJGf
 h7rprNG2+yxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="172618049"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="172618049"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 08:19:35 -0800
IronPort-SDR: Choan2FQ1Fn8Nhv/kHewWtYRVLLLsXPpyqd7eU1spoBAw/R0oiGAhrckChA/kfMRpj4MRAABeK
 mAYzpOpiPzNQ==
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="316167145"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 08:19:34 -0800
Date: Fri, 4 Dec 2020 21:36:02 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201204160558.GE30377@intel.com>
References: <20201106101443.686053-1-gwan-gyeong.mun@intel.com>
 <20201106101443.686053-2-gwan-gyeong.mun@intel.com>
 <875z62q5pe.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875z62q5pe.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0xMS0xOCBhdCAxNjo0MjoyOSArMDUzMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24g
RnJpLCAwNiBOb3YgMjAyMCwgR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwu
Y29tPiB3cm90ZToKPiA+IEluIG9yZGVyIHRvIHN1cHBvcnQgdGhlIFBTUiBzdGF0ZSBvZiBlYWNo
IHRyYW5zY29kZXIsIGl0IGFkZHMKPiA+IGk5MTVfcHNyX3N0YXR1cyB0byBzdWItZGlyZWN0b3J5
IG9mIGVhY2ggdHJhbnNjb2Rlci4KPiA+Cj4gPiB2MjogQ2hhbmdlIHVzaW5nIG9mIFN5bWJvbGlj
IHBlcm1pc3Npb25zICdTX0lSVUdPJyB0byB1c2luZyBvZiBvY3RhbAo+ID4gICAgIHBlcm1pc3Np
b25zICcwNDQ0Jwo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1n
eWVvbmcubXVuQGludGVsLmNvbT4KPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGVidWdmcy5jICB8IDIzICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwo+ID4gaW5kZXggODQwMmU2
YWM5Zjc2Li4zNzgwNTYxNWEyMjEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gPiBAQCAtMjA5Myw2ICsy
MDkzLDIzIEBAIHN0YXRpYyBpbnQgaTkxNV9oZGNwX3NpbmtfY2FwYWJpbGl0eV9zaG93KHN0cnVj
dCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPiA+ICB9Cj4gPiAgREVGSU5FX1NIT1dfQVRUUklC
VVRFKGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHkpOwo+ID4gIAo+ID4gK3N0YXRpYyBpbnQgaTkx
NV9wc3Jfc3RhdHVzX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ID4gK3sK
PiA+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0tPnByaXZhdGU7Cj4gPiAr
CXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQo+ID4gKwkJaW50ZWxfYXR0YWNoZWRfZHAodG9f
aW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOwo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiA+ICsKPiA+ICsJaWYgKGNvbm5l
Y3Rvci0+c3RhdHVzICE9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKQo+IAo+IEhvdydzIHRo
aXMgcG9zc2libGUgZm9yIGVEUCwgYnR3Pwo+IAo+IEJSLAo+IEphbmkuCj4gCj4gPiArCQlyZXR1
cm4gLUVOT0RFVjsKPiA+ICsKPiA+ICsJaWYgKCFIQVNfUFNSKGRldl9wcml2KSkKPiA+ICsJCXJl
dHVybiAtRU5PREVWOwo+ID4gKwo+ID4gKwlyZXR1cm4gaW50ZWxfcHNyX3N0YXR1cyhtLCBpbnRl
bF9kcCk7Cj4gPiArfQo+ID4gK0RFRklORV9TSE9XX0FUVFJJQlVURShpOTE1X3Bzcl9zdGF0dXMp
Owo+ID4gKwo+ID4gICNkZWZpbmUgTFBTUF9DQVBBQkxFKENPTkQpIChDT05EID8gc2VxX3B1dHMo
bSwgIkxQU1A6IGNhcGFibGVcbiIpIDogXAo+ID4gIAkJCQlzZXFfcHV0cyhtLCAiTFBTUDogaW5j
YXBhYmxlXG4iKSkKPiA+ICAKPiA+IEBAIC0yMjY4LDYgKzIyODUsMTIgQEAgaW50IGludGVsX2Nv
bm5lY3Rvcl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4g
IAkJCQkgICAgY29ubmVjdG9yLCAmaTkxNV9wc3Jfc2lua19zdGF0dXNfZm9wcyk7Cj4gPiAgCX0K
PiA+ICAKPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYKPiA+ICsJICAgIGNv
bm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkgewpIaSBH
RwpJTUhPIHRoaXMgc2hvdWxkIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVf
Q09OTkVDVE9SX2VEUCB8fCBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX1NV
QkNPTk5FQ1RPUl9EaXNwbGF5UG9ydAp0byBzdXBwb3J0IERQIFBhbmVsIFJlcGx5LCBpIHJlYWQg
c29tZXdlcmUgRFAgcGFuZWwgcmVwbHkgaXMgUFNSIHdpdGggTGluayBGdWxsIE9OID8KSSBiZWxp
ZXZlIHRoaXMgd291bGQgYmUgdGhlIHJlYXNvbiB0byBrZWVwIGZpbGUgbmFtZSBhcyAiaTkxNV9w
c3Jfc3RhdHVzIiBpbnN0ZWFkIG9mIGk5MTVfZWRwX3Bzcl9zdGF0dXM/IApUaGFua3MsCkFuc2h1
bWFuLiAKPiA+ICsJCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfcHNyX3N0YXR1cyIsIDA0NDQs
IHJvb3QsCj4gPiArCQkJCSAgICBjb25uZWN0b3IsICZpOTE1X3Bzcl9zdGF0dXNfZm9wcyk7Cj4g
PiArCX0KPiA+ICsKPiA+ICAJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01P
REVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IHx8Cj4gPiAgCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rv
cl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSB8fAo+ID4gIAkgICAgY29ubmVjdG9y
LT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUIpIHsKPiAKPiAtLSAK
PiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
