Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A887030C36
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 11:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA05A892B4;
	Fri, 31 May 2019 09:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CF5892B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 09:59:38 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:59:37 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 02:59:36 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hWeJz-0002Z3-P6; Fri, 31 May 2019 12:59:35 +0300
Date: Fri, 31 May 2019 12:59:35 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190531095935.GU22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529232737.31515-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/5] lib/tests: fix conflicting args
 test
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

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMDQ6Mjc6MzNQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFdlIHdhbnQgdG8gY2hlY2sgaWYgdGhlIGxvbmcgb3B0aW9uIGNvbmZsaWN0cyB3
aXRoIG9uZSBmcm9tIHRoZSBjb3JlLgo+IFRoZSBjaGVjayBmb3IgY29uZmxpY3Rpbmcgc2hvcnQg
b3B0aW9uIGFscmVhZHkgZXhpc3RzIGp1c3QgYWJvdmUuCgpObywgdGhpcyBvbmUgaXMgY2hlY2tp
bmcgdGhhdCB0aGUgdmFsICh0aGUgMCkgZG9lc24ndCBjb25mbGljdC4KCgotLSAKUGV0cmkgTGF0
dmFsYQoKCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+Cj4gLS0tCj4gIGxpYi90ZXN0cy9pZ3RfY29uZmxpY3RpbmdfYXJncy5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvbGliL3Rlc3RzL2lndF9jb25mbGljdGluZ19hcmdzLmMgYi9saWIvdGVz
dHMvaWd0X2NvbmZsaWN0aW5nX2FyZ3MuYwo+IGluZGV4IGMzNTdiNmM1Li5kOGJlMTM4ZSAxMDA2
NDQKPiAtLS0gYS9saWIvdGVzdHMvaWd0X2NvbmZsaWN0aW5nX2FyZ3MuYwo+ICsrKyBiL2xpYi90
ZXN0cy9pZ3RfY29uZmxpY3RpbmdfYXJncy5jCj4gQEAgLTkxLDcgKzkxLDcgQEAgaW50IG1haW4o
aW50IGFyZ2MsIGNoYXIgKiphcmd2KQo+ICAJaW50ZXJuYWxfYXNzZXJ0X3dzaWduYWxlZChkb19m
b3JrKCksIFNJR0FCUlQpOwo+ICAKPiAgCS8qIGNvbmZsaWN0IG9uIGxvbmcgb3B0aW9uICd2YWwn
IHJlcHJlc2VudGF0aW9ucyAqLwo+IC0JbG9uZ19vcHRpb25zWzBdID0gKHN0cnVjdCBvcHRpb24p
IHsgIml0ZXJhdGlvbnMiLCByZXF1aXJlZF9hcmd1bWVudCwgTlVMTCwgMH07Cj4gKwlsb25nX29w
dGlvbnNbMF0gPSAoc3RydWN0IG9wdGlvbikgeyAibGlzdC1zdWJ0ZXN0cyIsIHJlcXVpcmVkX2Fy
Z3VtZW50LCBOVUxMLCAwfTsKPiAgCXNob3J0X29wdGlvbnMgPSAiIjsKPiAgCWludGVybmFsX2Fz
c2VydF93c2lnbmFsZWQoZG9fZm9yaygpLCBTSUdBQlJUKTsKPiAgCj4gLS0gCj4gMi4yMS4wCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
