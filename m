Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FB331A523
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 20:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 340C76E1F8;
	Fri, 12 Feb 2021 19:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9696E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 19:15:07 +0000 (UTC)
IronPort-SDR: b5354YHXvqfYSppHC4OICrXHVhILKWei1kVNcJ5xym35jFSWsDLU+IPn9s43WanG0l5ReMnUHD
 q4ClToHAw3fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="201614419"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="201614419"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 11:15:02 -0800
IronPort-SDR: TAoUtj6jPoUn0rFH+REwUy+45uixQA+wKOeq4UBV2qYLvYJDBqJqKcFtvQZK1RIte/1Zv8qk8I
 zIuBxHhjOnzA==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="362926005"
Received: from caeastla-mobl.amr.corp.intel.com (HELO [10.252.132.205])
 ([10.252.132.205])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 11:15:01 -0800
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210212182201.155043-1-jose.souza@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <3c35d2dc-f7da-c144-2adb-e7cbb1ffa756@intel.com>
Date: Fri, 12 Feb 2021 11:15:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210212182201.155043-1-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMi8xMi8yMSAxMDoyMSBBTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBUaGUg
Y2ZnY3IwLzFfY2xrX29mZiBtYXBwaW5nIGlzIHdyb25nIGZvciBhZGwtcyB3aGF0IGNvdWxkIGNh
dXNlCj4gdGhlIHdyb25nIGNsb2NrIGJlaW5nIGRpc2FibGVkIGFuZCBsZWF2aW5nIGEgbm90IG5l
ZWRlZCBjbG9jawo+IHJ1bm5pbmcgY29uc3VtaW5nIG1vcmUgcG93ZXIgdGhhbiBuZWVkZWQuCj4g
Cj4gQnNwZWM6IDUwMjg3Cj4gQnNwZWM6IDUzODEyCj4gQnNwZWM6IDUzNzIzCj4gRml4ZXM6IGQ2
ZDJiYzk5NmU0NSAoImRybS9pOTE1L2FkbF9zOiBDb25maWd1cmUgUG9ydCBjbG9jayByZWdpc3Rl
cnMgZm9yIEFETC1TIikKPiBDYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5j
b20+Cj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IENj
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgoKQ2hhbmdlcyBs
b29rIGNvcnJlY3QgdG8gbWUgYmFzZWQgb24gdGhlIHRhYmxlIGZyb20gQnNwZWM6IDUzNzIzIGFu
ZCBpcyByZXF1aXJlZC4gTWlzdGFrZSBvbiBteSBwYXJ0IG9uCm1pc3NpbmcgdGhvc2UgY2hhbmdl
cy4KClJldmlld2VkLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4K
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAgNCAr
KystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAxMiArKysr
KysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXgg
MmQ2OTA2ZjY5OTVmLi43NjMxZTA4MDM0OWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtMTU4NSw3ICsxNTg1LDkgQEAgaHN3X3NldF9zaWduYWxf
bGV2ZWxzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIHN0YXRpYyB1MzIgaWNsX2RwY2xr
YV9jZmdjcjBfY2xrX29mZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJ
CQkgICAgIGVudW0gcGh5IHBoeSkKPiAgewo+IC0JaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYp
KSB7Cj4gKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKSB7Cj4gKwkJcmV0dXJuIEFETFNf
RFBDTEtBX0NGR0NSX0RESV9DTEtfT0ZGKHBoeSk7Cj4gKwl9IGVsc2UgaWYgKElTX1JPQ0tFVExB
S0UoZGV2X3ByaXYpKSB7Cj4gIAkJcmV0dXJuIFJLTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZG
KHBoeSk7Cj4gIAl9IGVsc2UgaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkg
ewo+ICAJCXJldHVybiBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IDIyNGFkODk3YWYzNC4uN2M2OWI1MGNjYzVjIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTEwNDE2LDYgKzEwNDE2LDE4IEBAIGVudW0g
c2tsX3Bvd2VyX2dhdGUgewo+ICAJCQkJCQkJQURMU19EUENMS0FfRERJSl9TRUxfTUFTSywgXAo+
ICAJCQkJCQkJQURMU19EUENMS0FfRERJS19TRUxfTUFTSykKPiAgCj4gKyNkZWZpbmUgX0FETFNf
RFBDTEtBX0RESUFfQ0xLX09GRgkJCVJFR19CSVQoMTApCj4gKyNkZWZpbmUgX0FETFNfRFBDTEtB
X0RESUJfQ0xLX09GRgkJCVJFR19CSVQoMTEpCj4gKyNkZWZpbmUgX0FETFNfRFBDTEtBX0RESUlf
Q0xLX09GRgkJCVJFR19CSVQoMjQpCj4gKyNkZWZpbmUgX0FETFNfRFBDTEtBX0RESUpfQ0xLX09G
RgkJCVJFR19CSVQoNCkKPiArI2RlZmluZSBfQURMU19EUENMS0FfRERJS19DTEtfT0ZGCQkJUkVH
X0JJVCg1KQo+ICsjZGVmaW5lIEFETFNfRFBDTEtBX0NGR0NSX0RESV9DTEtfT0ZGKHBoeSkJCV9Q
SUNLKChwaHkpLCBcCj4gKwkJCQkJCQkgICAgICBfQURMU19EUENMS0FfRERJQV9DTEtfT0ZGLCBc
Cj4gKwkJCQkJCQkgICAgICBfQURMU19EUENMS0FfRERJQl9DTEtfT0ZGLCBcCj4gKwkJCQkJCQkg
ICAgICBfQURMU19EUENMS0FfRERJSV9DTEtfT0ZGLCBcCj4gKwkJCQkJCQkgICAgICBfQURMU19E
UENMS0FfRERJSl9DTEtfT0ZGLCBcCj4gKwkJCQkJCQkgICAgICBfQURMU19EUENMS0FfRERJS19D
TEtfT0ZGKQo+ICsKPiAgLyogQ05MIFBMTCAqLwo+ICAjZGVmaW5lIERQTEwwX0VOQUJMRQkJMHg0
NjAxMAo+ICAjZGVmaW5lIERQTEwxX0VOQUJMRQkJMHg0NjAxNAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
