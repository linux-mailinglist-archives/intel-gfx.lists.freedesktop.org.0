Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD95171139
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 08:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EFC6EBF1;
	Thu, 27 Feb 2020 07:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DD56EBF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 07:03:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:03:44 -0800
X-IronPort-AV: E=Sophos;i="5.70,491,1574150400"; d="scan'208";a="231723885"
Received: from lohmeies-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:03:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200227061111.9186-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227061111.9186-1-anshuman.gupta@intel.com>
Date: Thu, 27 Feb 2020 09:04:03 +0200
Message-ID: <87tv3cqzoc.fsf@intel.com>
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
LmNvbT4gd3JvdGU6Cj4gRml4IGtidWlsZCB0ZXN0IHJvYm90IGJ1aWxkIGVycm9yIGZvciBiZWxv
dyBjb21taXQKPiA8ZDU0YzFhNTEzYzQ4N2FjNmQ2YjNjNDU5NWU5M2UzNjI1YjQ2MWNjMz4uCgpU
aGUgcHJvcGVyIGZvcm1hdCB0byByZWZlcmVuY2Ugb3RoZXIgY29tbWl0cyBpcwoKCWQ1NGMxYTUx
M2M0OCAoImRybS9pOTE1OiBGaXggYnJva2VuIHRyYW5zY29kZXIgZXJyIHN0YXRlIikKCklmIHlv
dSBwdXQgdGhpcyBtYWdpYyBzcGVsbCBpbiB5b3VyIH4vLmdpdGNvbmZpZyB1bmRlciBbYWxpYXNd
OgoKCWNpdGUgPSAiIWYoKSB7IGdpdCBsb2cgLTEgJy0tcHJldHR5PWZvcm1hdDolSCAoXCIlc1wi
KSVuJyAkMSB8IHNlZCAtZSAncy9cXChbMC1mXVxcezEyXFx9XFwpWzAtZl0qL1xcMS8nOyB9OyBm
IgoKeW91IGNhbiB1c2UgJ2dpdCBjaXRlIDxjb21taXQtaXNoPicgdG8gZ2l2ZSB5b3UgdGhlIHBy
b3Blcmx5IGZvcm1hdHRlZApjaXRhdGlvbi4KCj4gaGFzX3RyYW5zY29kZXIoKSB3YXMgdW51c2Vk
IGJlY2F1c2UgZnVuY3Rpb24gd2hpY2ggd2FzIHVzaW5nIGl0Cj4gaW50ZWxfZGlzcGxheV9jYXB0
dXJlX2Vycm9yX3N0YXRlKCkgZGVmaW5lZCB1bmRlcgo+IENPTkZJR19EUk1fSTkxNV9DQVBUVVJF
X0VSUk9SLgo+IE1vdmluZyBoYXNfdHJhbnNjb2RlcigpIHRvIHVuZGVyIENPTkZJR19EUk1fSTkx
NV9DQVBUVVJFX0VSUk9SLgo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlLgo+Cj4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gUmVwb3J0ZWQtYnk6IGti
dWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFu
IEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+CgpGaXhlczogZDU0YzFhNTEzYzQ4ICgi
ZHJtL2k5MTU6IEZpeCBicm9rZW4gdHJhbnNjb2RlciBlcnIgc3RhdGUiKQpSZXZpZXdlZC1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTggKysrKysrKysrLS0tLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDJm
ZDNjY2QzM2UzMC4uMjdlYzI0NWUwZGQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMjQ5LDE1ICsyNDksNiBAQCBpbnRlbF9mZGlf
bGlua19mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQlyZXR1cm4g
ZGV2X3ByaXYtPmZkaV9wbGxfZnJlcTsKPiAgfQo+ICAKPiAtc3RhdGljIGJvb2wKPiAtaGFzX3Ry
YW5zY29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHRyYW5zY29k
ZXIgY3B1X3RyYW5zY29kZXIpCj4gLXsKPiAtCWlmIChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NP
REVSX0VEUCkKPiAtCQlyZXR1cm4gSEFTX1RSQU5TQ09ERVJfRURQKGRldl9wcml2KTsKPiAtCWVs
c2UKPiAtCQlyZXR1cm4gSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVfbWFzayAmIEJJVChjcHVf
dHJhbnNjb2Rlcik7Cj4gLX0KPiAtCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbGltaXQg
aW50ZWxfbGltaXRzX2k4eHhfZGFjID0gewo+ICAJLmRvdCA9IHsgLm1pbiA9IDI1MDAwLCAubWF4
ID0gMzUwMDAwIH0sCj4gIAkudmNvID0geyAubWluID0gOTA4MDAwLCAubWF4ID0gMTUxMjAwMCB9
LAo+IEBAIC0xODgzOCw2ICsxODgyOSwxNSBAQCB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3Jl
bW92ZV9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCj4gICNpZiBJU19F
TkFCTEVEKENPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SKQo+ICAKPiArc3RhdGljIGJvb2wK
PiAraGFzX3RyYW5zY29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpCj4gK3sKPiArCWlmIChjcHVfdHJhbnNjb2RlciA9
PSBUUkFOU0NPREVSX0VEUCkKPiArCQlyZXR1cm4gSEFTX1RSQU5TQ09ERVJfRURQKGRldl9wcml2
KTsKPiArCWVsc2UKPiArCQlyZXR1cm4gSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVfbWFzayAm
IEJJVChjcHVfdHJhbnNjb2Rlcik7Cj4gK30KPiArCj4gIHN0cnVjdCBpbnRlbF9kaXNwbGF5X2Vy
cm9yX3N0YXRlIHsKPiAgCj4gIAl1MzIgcG93ZXJfd2VsbF9kcml2ZXI7CgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
