Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4862371EE6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 19:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A000E6E2C8;
	Mon,  3 May 2021 17:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901DA6E2C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 17:53:46 +0000 (UTC)
IronPort-SDR: le4qAkqjgyz9dU3HEi2se6Pzbuf9iU5Ci7+vIt6Rwm5/ZKg5yrkJCjfUjl0kTywpKDFY6PdSof
 88oObb3+UheQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="184938771"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="184938771"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:53:45 -0700
IronPort-SDR: PfQ11yfBXmYZo6GK3gegRxIZUI/4fTG2uR+RZ+HDjbEXn22L306STGrenymp1ri0M/wJ82TAnf
 zxtN08xILbWQ==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432854506"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:53:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210430153444.29270-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
 <20210430153444.29270-3-ville.syrjala@linux.intel.com>
Date: Mon, 03 May 2021 20:53:41 +0300
Message-ID: <87wnsfzot6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Use intel_de_rmw() in bdw
 cdclk programming
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAzMCBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBSZXBsYWNlIHRoZSBoYW5kIHJvbGxlZCBybXcgc2VxdWVuY2Vz
IHdpdGggaW50ZWxfZGVfcm13KCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxNyArKysrKystLS0tLS0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBpbmRleCBkNTMxNGY5YWNmODMu
LjFlZjhkYTJiZjg1NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMKPiBAQCAtNzQ1LDcgKzc0NSw2IEBAIHN0YXRpYyB2b2lkIGJkd19zZXRfY2RjbGso
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkgIGVudW0gcGlwZSBwaXBl
KQo+ICB7Cj4gIAlpbnQgY2RjbGsgPSBjZGNsa19jb25maWctPmNkY2xrOwo+IC0JdTMyIHZhbDsK
PiAgCWludCByZXQ7Cj4gIAo+ICAJaWYgKGRybV9XQVJOKCZkZXZfcHJpdi0+ZHJtLAo+IEBAIC03
NjUsOSArNzY0LDggQEAgc3RhdGljIHZvaWQgYmR3X3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJcmV0dXJuOwo+ICAJfQo+ICAKPiAtCXZhbCA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIExDUExMX0NUTCk7Cj4gLQl2YWwgfD0gTENQTExfQ0RfU09VUkNF
X0ZDTEs7Cj4gLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgTENQTExfQ1RMLCB2YWwpOwo+ICsJ
aW50ZWxfZGVfcm13KGRldl9wcml2LCBMQ1BMTF9DVEwsCj4gKwkJICAgICAwLCBMQ1BMTF9DRF9T
T1VSQ0VfRkNMSyk7Cj4gIAo+ICAJLyoKPiAgCSAqIEFjY29yZGluZyB0byB0aGUgc3BlYywgaXQg
c2hvdWxkIGJlIGVub3VnaCB0byBwb2xsIGZvciB0aGlzIDEgdXMuCj4gQEAgLTc3NywxNCArNzc1
LDExIEBAIHN0YXRpYyB2b2lkIGJkd19zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAo+ICAJCQlMQ1BMTF9DRF9TT1VSQ0VfRkNMS19ET05FLCAxMDApKQo+ICAJCWRy
bV9lcnIoJmRldl9wcml2LT5kcm0sICJTd2l0Y2hpbmcgdG8gRkNMSyBmYWlsZWRcbiIpOwo+ICAK
PiAtCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIExDUExMX0NUTCk7Cj4gLQl2YWwgJj0g
fkxDUExMX0NMS19GUkVRX01BU0s7Cj4gLQl2YWwgfD0gYmR3X2NkY2xrX2ZyZXFfc2VsKGNkY2xr
KTsKPiAtCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBMQ1BMTF9DVEwsIHZhbCk7Cj4gKwlpbnRl
bF9kZV9ybXcoZGV2X3ByaXYsIExDUExMX0NUTCwKPiArCQkgICAgIExDUExMX0NMS19GUkVRX01B
U0ssIGJkd19jZGNsa19mcmVxX3NlbChjZGNsaykpOwo+ICAKPiAtCXZhbCA9IGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsIExDUExMX0NUTCk7Cj4gLQl2YWwgJj0gfkxDUExMX0NEX1NPVVJDRV9GQ0xL
Owo+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIExDUExMX0NUTCwgdmFsKTsKPiArCWludGVs
X2RlX3JtdyhkZXZfcHJpdiwgTENQTExfQ1RMLAo+ICsJCSAgICAgTENQTExfQ0RfU09VUkNFX0ZD
TEssIDApOwoKVGhlc2UgYXJlIG9uZSBvZiB0aG9zZSBjYXNlcyB3aGVyZSBJIHdvbmRlciBhYm91
dCB0aGF0CgoJaWYgKHZhbCAhPSBvbGQpCgkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgcmVn
LCB2YWwpOwoKY2hlY2sgaW4gaW50ZWxfdW5jb3JlX3JtdygpLgoKSSBndWVzcyBpdCdzIGZpbmUs
IGJ1dCBJIGdldCB0aGF0IHVuZWFzeSBmZWVsaW5nLgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgoKPiAgCj4gIAlpZiAod2FpdF9mb3JfdXMoKGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIExDUExMX0NUTCkgJgo+ICAJCQkgTENQTExfQ0RfU09VUkNFX0ZD
TEtfRE9ORSkgPT0gMCwgMSkpCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
