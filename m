Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1786B6E802
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629656E84B;
	Fri, 19 Jul 2019 15:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414BB6E84B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:34:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 08:34:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="170164123"
Received: from unknown (HELO ldmartin-desk1) ([10.24.10.91])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jul 2019 08:34:09 -0700
Date: Fri, 19 Jul 2019 08:34:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190719153408.bv2d5np43tvbqdap@ldmartin-desk1>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-8-lucas.demarchi@intel.com>
 <20190719104426.GA3846@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719104426.GA3846@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/dmc: Load DMC on TGL
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMDQ6MTQ6MjdQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj5PbiAyMDE5LTA3LTEyIGF0IDE4OjA5OjI1IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6Cj4+IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4KPj4KPj4gQWRkIFN1cHBvcnQgdG8gbG9hZCBETUMgdjIuMDIgb24gVEdMLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgNyArKysrKysr
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Nzci5jCj4+IGluZGV4IDZlZjc0NTMxNTg4YS4uODY1Yjk4N2RlZThlIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+PiBAQCAtMzksNiArMzksMTEgQEAKPj4KPj4gICNkZWZp
bmUgR0VOMTJfQ1NSX01BWF9GV19TSVpFCQlJQ0xfQ1NSX01BWF9GV19TSVpFCj4+Cj4+ICsjZGVm
aW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wMi5iaW4iCj4+ICsjZGVmaW5l
IFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCAyKQo+PiArI2RlZmluZSBU
R0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKPj4gK01PRFVMRV9GSVJNV0FSRShUR0xfQ1NSX1BB
VEgpOwo+PiArCj4+ICAjZGVmaW5lIElDTF9DU1JfUEFUSAkJCSJpOTE1L2ljbF9kbWNfdmVyMV8w
Ny5iaW4iCj4+ICAjZGVmaW5lIElDTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigx
LCA3KQo+PiAgI2RlZmluZSBJQ0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKPj4gQEAgLTY3NCw2
ICs2NzksOCBAQCB2b2lkIGludGVsX2Nzcl91Y29kZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPj4gIAlpbnRlbF9jc3JfcnVudGltZV9wbV9nZXQoZGV2X3ByaXYpOwo+
Pgo+PiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4+ICsJCWNzci0+ZndfcGF0
aCA9IFRHTF9DU1JfUEFUSDsKPj4gKwkJY3NyLT5yZXF1aXJlZF92ZXJzaW9uID0gVEdMX0NTUl9W
RVJTSU9OX1JFUVVJUkVEOwo+PiAgCQkvKiBBbGxvdyB0byBsb2FkIGZ3IHZpYSBwYXJhbWV0ZXIg
dXNpbmcgdGhlIGxhc3Qga25vd24gc2l6ZSAqLwo+PiAgCQljc3ItPm1heF9md19zaXplID0gR0VO
MTJfQ1NSX01BWF9GV19TSVpFOwo+PiAgCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkp
IHsKPkxHVE0sIG9uZSBjb25jZXJuIGFib3V0IERNQyBmdyBtaW5vciB2ZXJzaW9uLgo+aWYgdGhp
cyBpcyBkZWNpZGVkIGxhdGVzdCB1cHN0cmVhbSB2ZXJzaW9uLAo+SSB3aWxsIHByb3ZpZGUgbXkg
UkIuCgpKb3PDqSwgMi4wMiBvciAyLjAzPwoKTHVjYXMgRGUgTWFyY2hpCgo+Cj4+IC0tCj4+IDIu
MjEuMAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
