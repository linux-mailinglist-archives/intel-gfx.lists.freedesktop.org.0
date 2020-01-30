Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B07B14E303
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 20:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804B26E8E5;
	Thu, 30 Jan 2020 19:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D8E6E8E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 19:20:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 11:20:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="224215153"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jan 2020 11:20:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
 <158036696815.21034.751097000968180593@emeril.freedesktop.org>
 <158039146921.16598.16786857738481185551@skylake-alporthouse-com>
 <20200130135813.GB13686@intel.com>
 <158039328550.16598.12823982178337123688@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <2386521b-8b7a-a8be-60a7-f6dc56fa7b7d@intel.com>
Date: Thu, 30 Jan 2020 11:20:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <158039328550.16598.12823982178337123688@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_extract_engine_WA_progr?=
 =?utf-8?q?amming_to_common_resume_function?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxLzMwLzIwIDY6MDggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFZpbGxl
IFN5cmrDpGzDpCAoMjAyMC0wMS0zMCAxMzo1ODoxMykKPj4gT24gVGh1LCBKYW4gMzAsIDIwMjAg
YXQgMDE6Mzc6NDlQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBQYXRj
aHdvcmsgKDIwMjAtMDEtMzAgMDY6NDk6MjgpCj4+Pj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9u
cyAjIyMjCj4+Pj4KPj4+PiAgICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYWN0aXZlOgo+Pj4+
ICAgICAgLSBmaS1id3ItMjE2MDogICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0g
KzEyIHNpbWlsYXIgaXNzdWVzCj4+Pj4gICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzg0MC9maS1id3ItMjE2MC9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2FjdGl2ZS5odG1sCj4+Pj4gICAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTYzMjcvZmktYndyLTIxNjAvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9hY3RpdmUuaHRtbAo+Pj4KPj4+IFdlbGwgaXQgd29ya3Mgb24gQ3Jlc3RsaW5l
LiBCcm9hZHdhdGVyIHNuYWZ1Pwo+Pgo+PiBEb2VzIHRoZSB3L2EgdGhpbmcgYWN0dWFsbHkgd29y
ayBjb3JyZWN0bHkgZm9yIG1hc2tlZCByZWdpc3RlcnM/Cj4+IEl0IGxvb2sgdG8gdXNlIHJtdyBl
dmVuIGZvciBtYXNrZWQgcmVnaXN0ZXJzIGFuZCBJSVJDIHNvbWUgbWFza2VkCj4+IHJlZ2lzdGVy
cyByZXR1cm4gMHhmZmZmIGZvciB0aGUgbWFzayB3aGVuIHJlYWQuIEkgbG9zdCB0cmFjayBvZiB0
aGUKPj4gdmFsdWVzIGFuZCBtYXNrcyBiZWluZyBwYXNzZWQgYXJvdW5kIGJlZm9yZSBJIGdvdCBk
b3duIHRoYXQgZGVlcCBzbwo+PiBjYW4ndCBpbW1lZGlhdGx5IHNlZSBpZiB0aGUgY29kZSBpcyBn
dWFyYW50ZWVkIHRvIHNldCBvbmx5IHRoZQo+PiBleHBlY3RlZCBtYXNrIGJpdChzKSBmb3IgdGhl
IHdyaXRlLgoKQnV0IGRvZXMgaXQgbWFrZSBhbnkgZGlmZmVyZW5jZSBpcyB0aGUgbWFzayBpcyBy
ZXR1cm5lZCBvciBub3Qgd2l0aCBybXc/IAppZiBpdCBpcywgd2UgcmVwcm9ncmFtIHRoZSBsb3dl
ciAxNiBiaXRzIHdpdGggdGhlIG9yaWdpbmFsIHZhbHVlICsgb3VyIApkaWZmLCB3aGlsZSBpZiBp
dCBpc24ndCB3ZSBqdXN0IHRvZ2dsZSBpbiBwbGFjZSB0aGUgYml0IHdlJ3JlIGludGVyZXN0ZWQg
CmluLiBUaGUgcmVzdWx0IHNob3VsZCBiZSB0aGUgc2FtZSBpbiBib3RoIGNhc2VzLgoKPiAKPiBU
aGUgcmVhZCBiYWNrIGdpdmVzIDB4MTAxMDEsIHRoZSB3L2EgaXMgdG8gMHg0MDAwNDAgKGFuZCB3
ZSBleHBlY3QgdG8KPiBzZWUgMHg0MCBzZXQgaW4gdGhlIHJlYWRiYWNrKS4KCkxvb2tzIGxpa2Ug
dGhlIHJlc3VsdCBpcyBhbHNvIG5vdCBjb25zdGFudC4gSW5pdGlhbCBsb2FkIGFuZCBhIGZldyBv
ZiAKdGhlIHJlbG9hZHMgYXJlIGZpbmUgYW5kIGluIHNvbWUgY2FzZXMgd2UgYWxzbyBzZWUgdGhl
IHJlZ2lzdGVyIGJlaW5nIAp6ZXJvZWQ6CgoJKDIwOWM9MC8wLCBleHBlY3RlZCA0MDAwNDAsIG1h
c2s9NDApCgpNYXliZSBzb21ldGhpbmcgd2VpcmQgaGFwcGVuaW5nIHBvc3QtcmVzZXQ/CgpEYW5p
ZWxlCgo+IAo+IFRoYXQgcGFydCBsb29rcyBjb25zaXN0ZW50IChhbmQgaXMgcGFzc2luZyBvbiBn
ZW40LWdlbjYgZXhjZXB0IGZvciBDSSdzCj4gYncpLgo+IAo+IEhtbSwgZG9uJ3QgcmVjYWxsIHRo
YXQgaXQgdXNlZCBybXcgZm9yIHNldHRpbmcgdGhlIG1hc2tlZCBtbWlvLCBzbyBsZXRzCj4gY2hl
Y2sgdGhhdC4KPiAtQ2hyaXMKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
