Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3072B17320C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 08:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803DE6EE11;
	Fri, 28 Feb 2020 07:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DD86EE11
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 07:48:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 23:48:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232156981"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 23:48:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200227175147.11362-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227175147.11362-1-anshuman.gupta@intel.com>
Date: Fri, 28 Feb 2020 09:48:40 +0200
Message-ID: <87ftevqhif.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix kbuild test robot build error
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

T24gVGh1LCAyNyBGZWIgMjAyMCwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4gd3JvdGU6Cj4gRml4ZXM6IGQ1NGMxYTUxM2M0OCAoImRybS9pOTE1OiBGaXggYnJva2Vu
IHRyYW5zY29kZXIgZXJyIHN0YXRlIikKClRoYXQncyBzdXBwb3NlZCB0byBnbyBpbiB0aGUgc2Vj
dGlvbiB3aXRoIHRoZSAidGFncyIgYmVsb3cuIENhbiBiZSBmaXhlZAp3aGlsZSBhcHBseWluZywg
cGxlYXNlIGRvbid0IHJlc2VuZCBmb3IgdGhpcy4KCkJSLApKYW5pLgoKPiBoYXNfdHJhbnNjb2Rl
cigpIHdhcyB1bnVzZWQgYmVjYXVzZSBmdW5jdGlvbiB3aGljaCB3YXMgdXNpbmcgaXQsCj4gaW50
ZWxfZGlzcGxheV9jYXB0dXJlX2Vycm9yX3N0YXRlKCkgZGVmaW5lZCB1bmRlcgo+IENPTkZJR19E
Uk1fSTkxNV9DQVBUVVJFX0VSUk9SLgo+IE1vdmluZyBoYXNfdHJhbnNjb2RlcigpIHRvIHVuZGVy
IENPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SLgo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlLgo+
Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
UmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFJldmlld2Vk
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTggKysrKysrKysrLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGlu
ZGV4IDJmZDNjY2QzM2UzMC4uMjdlYzI0NWUwZGQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMjQ5LDE1ICsyNDksNiBAQCBpbnRl
bF9mZGlfbGlua19mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQly
ZXR1cm4gZGV2X3ByaXYtPmZkaV9wbGxfZnJlcTsKPiAgfQo+ICAKPiAtc3RhdGljIGJvb2wKPiAt
aGFzX3RyYW5zY29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHRy
YW5zY29kZXIgY3B1X3RyYW5zY29kZXIpCj4gLXsKPiAtCWlmIChjcHVfdHJhbnNjb2RlciA9PSBU
UkFOU0NPREVSX0VEUCkKPiAtCQlyZXR1cm4gSEFTX1RSQU5TQ09ERVJfRURQKGRldl9wcml2KTsK
PiAtCWVsc2UKPiAtCQlyZXR1cm4gSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVfbWFzayAmIEJJ
VChjcHVfdHJhbnNjb2Rlcik7Cj4gLX0KPiAtCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
bGltaXQgaW50ZWxfbGltaXRzX2k4eHhfZGFjID0gewo+ICAJLmRvdCA9IHsgLm1pbiA9IDI1MDAw
LCAubWF4ID0gMzUwMDAwIH0sCj4gIAkudmNvID0geyAubWluID0gOTA4MDAwLCAubWF4ID0gMTUx
MjAwMCB9LAo+IEBAIC0xODgzOCw2ICsxODgyOSwxNSBAQCB2b2lkIGludGVsX21vZGVzZXRfZHJp
dmVyX3JlbW92ZV9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCj4gICNp
ZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SKQo+ICAKPiArc3RhdGlj
IGJvb2wKPiAraGFzX3RyYW5zY29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpCj4gK3sKPiArCWlmIChjcHVfdHJhbnNj
b2RlciA9PSBUUkFOU0NPREVSX0VEUCkKPiArCQlyZXR1cm4gSEFTX1RSQU5TQ09ERVJfRURQKGRl
dl9wcml2KTsKPiArCWVsc2UKPiArCQlyZXR1cm4gSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVf
bWFzayAmIEJJVChjcHVfdHJhbnNjb2Rlcik7Cj4gK30KPiArCj4gIHN0cnVjdCBpbnRlbF9kaXNw
bGF5X2Vycm9yX3N0YXRlIHsKPiAgCj4gIAl1MzIgcG93ZXJfd2VsbF9kcml2ZXI7CgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
