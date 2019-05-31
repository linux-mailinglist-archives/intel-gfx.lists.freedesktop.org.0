Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B809330C42
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 12:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD3A689267;
	Fri, 31 May 2019 10:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B42F89263
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 10:00:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 03:00:37 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2019 03:00:36 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hWeKx-0002ZL-MZ; Fri, 31 May 2019 13:00:35 +0300
Date: Fri, 31 May 2019 13:00:35 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190531100035.GV22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190529232737.31515-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529232737.31515-2-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/5] lib/igt_core: reserve long
 options for individual tests
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

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMDQ6Mjc6MzRQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFN0YXJ0IHRoZSBjb3JlIG9wdGlvc24gZnJvbSA1MDAgc28gdGhlIGluZGl2aWR1
YWwgdGVzdHMgY2FuIGhhdmUgdGhlaXIKPiBvd24gb3B0aW9ucyBzdGFydGluZyBmcm9tIDAuIFRo
aXMgbWFrZXMgaXQgZWFzaWVyIHRvIHNldCB0aGUgbG9uZwo+IG9wdGlvbnMgd2l0aG91dCBjb25m
bGljdGluZy4KPiAKPiA1MDAgaXMganVzdCBhIG1hZ2ljIG51bWJlciwgaGlnaGVyIHRoYW4gYW55
IGFzY2lpIGNoYXIgdGhhdCBjb3VsZCBiZQo+IHVzZWQgaW4gdGhlIGluZGl2aWR1YWwgdGVzdC4K
PiAKPiBXaGlsZSBhdCBpdCwgZml4IHRoZSBjb2Rpbmcgc3R5bGUgdG8gdXNlIHRhYiByYXRoZXIg
dGhhbiBzcGFjZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KClRoaXMgaXMgbXVjaCBiZXR0ZXIgdGhhbiByZXF1aXJpbmcgYWRk
aXRpb25hbCBvcHRzIHRvIGJlZ2luIGZyb20gYSBwYXJ0aWN1bGFyIG51bWJlci4KCgpSZXZpZXdl
ZC1ieTogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+CgoKPiAtLS0KPiAg
bGliL2lndF9jb3JlLmMgfCAxNiArKysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
MCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9saWIvaWd0
X2NvcmUuYyBiL2xpYi9pZ3RfY29yZS5jCj4gaW5kZXggOWM4NmQ2NjQuLjgxNGY1YzcyIDEwMDY0
NAo+IC0tLSBhL2xpYi9pZ3RfY29yZS5jCj4gKysrIGIvbGliL2lndF9jb3JlLmMKPiBAQCAtMjgw
LDEyICsyODAsMTYgQEAgaW50IHRlc3RfY2hpbGRyZW5fc3o7Cj4gIGJvb2wgdGVzdF9jaGlsZDsK
PiAgCj4gIGVudW0gewo+IC0gT1BUX0xJU1RfU1VCVEVTVFMsCj4gLSBPUFRfUlVOX1NVQlRFU1Qs
Cj4gLSBPUFRfREVTQ1JJUFRJT04sCj4gLSBPUFRfREVCVUcsCj4gLSBPUFRfSU5URVJBQ1RJVkVf
REVCVUcsCj4gLSBPUFRfSEVMUCA9ICdoJwo+ICsJLyoKPiArCSAqIExldCB0aGUgZmlyc3QgdmFs
dWVzIGJlIHVzZWQgYnkgaW5kaXZpZHVhbCB0ZXN0cyBzbyBvcHRpb25zIGRvbid0Cj4gKwkgKiBj
b25mbGljdCB3aXRoIGNvcmUgb25lcwo+ICsJICovCj4gKwlPUFRfTElTVF9TVUJURVNUUyA9IDUw
MCwKPiArCU9QVF9SVU5fU1VCVEVTVCwKPiArCU9QVF9ERVNDUklQVElPTiwKPiArCU9QVF9ERUJV
RywKPiArCU9QVF9JTlRFUkFDVElWRV9ERUJVRywKPiArCU9QVF9IRUxQID0gJ2gnCj4gIH07Cj4g
IAo+ICBzdGF0aWMgaW50IGlndF9leGl0Y29kZSA9IElHVF9FWElUX1NVQ0NFU1M7Cj4gLS0gCj4g
Mi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
