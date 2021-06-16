Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B323A9CBB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 15:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C92D6E17B;
	Wed, 16 Jun 2021 13:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2626E17B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 13:54:26 +0000 (UTC)
IronPort-SDR: ZWwb/wzWKOdGY7D3Gl/sAqADlBqoq+7C1UqXw3+xPZPGChO5HTvr35XdZ2nhrP0JqMFmLraF4c
 uxgb0WJ0blbA==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="291810777"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="291810777"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 06:54:26 -0700
IronPort-SDR: ZQcqLE99k8mCPw52cpniOUDPDH4qr/kXdczC2nkAPPbf5JtrdjRaPCu6rwVzA5wzb/P8xikt50
 yyXWxvbml8vA==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="484886988"
Received: from smarell1-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.32.120])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 06:54:24 -0700
Date: Wed, 16 Jun 2021 09:54:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <YMoCjgccQpxH3p4t@intel.com>
References: <20210616094802.63372-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210616094802.63372-1-zbigniew.kempczynski@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTYsIDIwMjEgYXQgMTE6NDg6MDJBTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6
ecWEc2tpIHdyb3RlOgo+IEZvciB0b3BpYy9pbnRlbC1mb3ItQ0kgYnJhbmNoIG9ubHkuCj4gCj4g
V2UgaGF2ZSBlc3RhYmxpc2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMg
c3RhcnRpbmcKPiBmcm9tIGdlbjEyIHBsYXRmb3JtcyB3aXRoIFRpZ2VybGFrZSBhcyBhbiBleGNl
cHRpb24uIFdlIGtlZXAgdGhpcwo+IHN0YXRlbWVudCBidXQgd2Ugd2FudCB0byBlbmFibGUgcmVs
b2NhdGlvbnMgY29uZGl0aW9uYWxseSBmb3IKPiBBbGRlcmxha2UgUytQIHVuZGVyIHJlcXVpcmVf
Zm9yY2VfcHJvYmUgZmxhZyBzZXQuCj4gCj4gS2VlcGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1
aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgaW50ZXJpbSBzb2x1dGlvbgo+IHVudGlsIElHVHMgd2ls
bCBiZSByZXdyaXR0ZW4gdG8gdXNlIHNvZnRwaW4uCj4gCj4gdjI6IC0gcmVtb3ZlIGlubGluZSBm
cm9tIGZ1bmN0aW9uIGRlZmluaXRpb24gKEphbmkpCj4gICAgIC0gZml4IGluZGVudGF0aW9uCj4g
Cj4gdjM6IGNoYW5nZSB0byBHUkFQSElDU19WRVIoKSAoWmJpZ25pZXcpCj4gCj4gdjQ6IHJlbW92
ZSBSS0wgZnJvbSBmbGFnIGFzIGl0IGlzIGFscmVhZHkgc2hpcHBlZCAoUm9kcmlnbykKPiAKPiB2
NTogcHJlcGFyZSBwYXRjaCB0byBiZSB1c2VkIHdpdGhpbiB0b3BpYy9pbnRlbC1mb3ItQ0kgYnJh
bmNoIG9ubHkKPiAKPiBTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWdu
aWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVk
aGF0LmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4g
Q2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPiBDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBEYXZlIEFpcmxpZSA8YWly
bGllZEByZWRoYXQuY29tPgo+IEFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+Cj4gLS0tCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYyAgICB8IDIxICsrKysrKysrKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gaW5kZXggNzYwYzhhZWZlYTNhLi45MDZlZTAx
MTY0NDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKPiBAQCAtNDkxLDE2ICs0OTEsMjcgQEAgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1Y3Qg
ZWJfdm1hICpldikKPiAgCWV2LT5mbGFncyAmPSB+X19FWEVDX09CSkVDVF9SRVNFUlZFRDsKPiAg
fQo+ICAKPiArc3RhdGljIGJvb2wgcGxhdGZvcm1faGFzX3JlbG9jc19lbmFibGVkKGNvbnN0IHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKwkvKgo+ICsJICogUmVsb2NhdGlvbnMg
YXJlIGRpc2FsbG93ZWQgc3RhcnRpbmcgZnJvbSBnZW4xMiB3aXRoIFRpZ2VybGFrZQo+ICsJICog
YXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3JhcmlseSB1c2UgcmVsb2NhdGlvbnMgZm9y
IEFsZGVybGFrZQo+ICsJICogd2hlbiByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgc2V0LgoK
VG8gd2hvZXZlciBlbmQgdXAgYXBwbHlpbmcgdGhpcyBwYXRjaCwgcGxlYXNlIGZpeCB0aGUgY29t
bWVudCBoZXJlIHdoaWxlCnB1c2hpbmcgdG8gdG9waWMvY29yZS1mb3ItQ0kuCgorICAgICAgIC8q
CisgICAgICAgICogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgc3RhcnRpbmcgZnJvbSBnZW4x
MiB3aXRoIFRpZ2VybGFrZQorICAgICAgICAqIGFzIGFuIGV4Y2VwdGlvbi4gVG8gdW5ibG9jayBD
SSwgd2UgYXJlIHRlbXBvcmFyaWx5IGFsbG93aW5nIGl0CisgICAgICAgICogZm9yIFJvY2tldGxh
a2UgYW5kIEFsZGVybGFrZQorICAgICAgICAqLwoKCj4gKwkgKi8KPiArCWlmIChHUkFQSElDU19W
RVIoZWItPmk5MTUpIDwgMTIgfHwgSVNfVElHRVJMQUtFKGViLT5pOTE1KSB8fAo+ICsJICAgIElT
X1JPQ0tFVExBS0UoZWItPmk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGViLT5pOTE1KSB8fAo+ICsJ
ICAgIElTX0FMREVSTEFLRV9QKGViLT5pOTE1KSkKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwly
ZXR1cm4gZmFsc2U7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQKPiAgZWJfdmFsaWRhdGVfdm1hKHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+ICAJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19v
YmplY3QyICplbnRyeSwKPiAgCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgewo+IC0JLyogUmVs
b2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAg
VGhpcwo+IC0JICogYWxzbyBjb3ZlcnMgYWxsIHBsYXRmb3JtcyB3aXRoIGxvY2FsIG1lbW9yeS4K
PiAtCSAqLwo+IC0JaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmCj4gLQkgICAgR1JBUEhJ
Q1NfVkVSKGViLT5pOTE1KSA+PSAxMiAmJiAhSVNfVElHRVJMQUtFKGViLT5pOTE1KSkKPiArCWlm
IChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJiAhcGxhdGZvcm1faGFzX3JlbG9jc19lbmFibGVk
KGViKSkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gIAlpZiAodW5saWtlbHkoZW50cnktPmZs
YWdzICYgZWItPmludmFsaWRfZmxhZ3MpKQo+IC0tIAo+IDIuMjYuMAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
