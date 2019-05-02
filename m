Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949381152B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 10:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64548922A;
	Thu,  2 May 2019 08:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5748922A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 08:16:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 01:16:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="169844403"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 01:16:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20190429163302.GG20006@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190429142253.15882-1-jani.nikula@intel.com>
 <20190429163302.GG20006@intel.com>
Date: Thu, 02 May 2019 11:18:43 +0300
Message-ID: <87ftpxp8v0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/csr: alpha_support doesn't depend
 on csr or vice versa
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOSBBcHIgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToKPiBPbiBNb24sIEFwciAyOSwgMjAxOSBhdCAwNToyMjo1M1BNICswMzAwLCBKYW5p
IE5pa3VsYSB3cm90ZToKPj4gRGVidWcgbG9nZ2luZyBzaG91bGQgbm90IGJlIGRlcGVuZGVudCBv
biBhbHBoYSBzdXBwb3J0IGZsYWcuCj4+IAo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+Cj4gSSBhZ3JlZS4uLiB0aGlzIGlzIG5vdCB0aGUgcmlnaHQgd2F5IHRvIHRy
YWNrIGRlcGVuZGVuY2llcy4KPgo+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+CgpQdXNoZWQsIHRoYW5rcy4KCkJSLApKYW5pLgoKPgo+PiAtLS0KPj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMiAtLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDIgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY3NyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+PiBpbmRl
eCBmNDNjMmEyNTYzYTUuLjQ1MjdiOTY2MjMzMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY3NyLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y3NyLmMKPj4gQEAgLTUyOSw4ICs1MjksNiBAQCB2b2lkIGludGVsX2Nzcl91Y29kZV9pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gIAo+PiAgCWlmIChjc3ItPmZ3X3Bh
dGggPT0gTlVMTCkgewo+PiAgCQlEUk1fREVCVUdfS01TKCJObyBrbm93biBDU1IgZmlybXdhcmUg
Zm9yIHBsYXRmb3JtLCBkaXNhYmxpbmcgcnVudGltZSBQTVxuIik7Cj4+IC0JCVdBUk5fT04oIUlT
X0FMUEhBX1NVUFBPUlQoSU5URUxfSU5GTyhkZXZfcHJpdikpKTsKPj4gLQo+PiAgCQlyZXR1cm47
Cj4+ICAJfQo+PiAgCj4+IC0tIAo+PiAyLjIwLjEKPj4gCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
