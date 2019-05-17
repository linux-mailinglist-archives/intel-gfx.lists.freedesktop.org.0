Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 317F92155B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 10:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A890D8981B;
	Fri, 17 May 2019 08:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE7C8981B;
 Fri, 17 May 2019 08:28:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 01:28:48 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 01:28:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190516185840.19777-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3494094d-8199-6198-a8e0-927f78e736ad@linux.intel.com>
Date: Fri, 17 May 2019 09:28:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516185840.19777-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Randomise random
 seed
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE2LzA1LzIwMTkgMTk6NTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUbyBhdm9pZCBoaXR0
aW5nIHRoZSBzYW1lIHJ1dCBvbiBlYWNoIGJlbmNobWFyayBydW4sIHN0YXJ0IHdpdGggYSBuZXcK
PiByYW5kb20gc2VlZC4gVG8gYWxsb3cgaGl0dGluZyB0aGUgc2FtZSBydXQgYWdhaW4sIGxldCBp
dCBiZSBzcGVjaWZpZWQKPiBieSB0aGUgdXNlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGJlbmNobWFya3MvZ2VtX3dzaW0uYyB8
IDYgKysrKystCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3Mv
Z2VtX3dzaW0uYwo+IGluZGV4IDQ4NTY4Y2U0MC4uY2YyYTQ0NzQ2IDEwMDY0NAo+IC0tLSBhL2Jl
bmNobWFya3MvZ2VtX3dzaW0uYwo+ICsrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+IEBAIC0y
MjgyLDggKzIyODIsOSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCj4gICAJaWd0
X3JlcXVpcmUoZmQpOwo+ICAgCj4gICAJaW5pdF9jbG9ja3MoKTsKPiArCXNyYW5kKHRpbWUoTlVM
TCkpOwo+ICAgCj4gLQl3aGlsZSAoKGMgPSBnZXRvcHQoYXJnYywgYXJndiwgImhxdjJSU0h4R2Rj
Om46cjp3Olc6YTp0OmI6cDoiKSkgIT0gLTEpIHsKPiArCXdoaWxlICgoYyA9IGdldG9wdChhcmdj
LCBhcmd2LCAiaHF2MlJTSHhHZGM6bjpyOnc6VzphOnQ6YjpwOnM6IikpICE9IC0xKSB7Cj4gICAJ
CXN3aXRjaCAoYykgewo+ICAgCQljYXNlICdXJzoKPiAgIAkJCWlmIChtYXN0ZXJfd29ya2xvYWQg
Pj0gMCkgewo+IEBAIC0yMzAwLDYgKzIzMDEsOSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAq
KmFyZ3YpCj4gICAJCWNhc2UgJ3AnOgo+ICAgCQkJcHJpbyA9IGF0b2kob3B0YXJnKTsKPiAgIAkJ
CWJyZWFrOwo+ICsJCWNhc2UgJ3MnOgo+ICsJCQlzcmFuZChhdG9pKG9wdGFyZykpOwo+ICsJCQli
cmVhazsKPiAgIAkJY2FzZSAnYSc6Cj4gICAJCQlpZiAoYXBwZW5kX3dvcmtsb2FkX2FyZykgewo+
ICAgCQkJCWlmICh2ZXJib3NlKQo+IAoKTWFrZXMgc2Vuc2UsIGp1c3QgdGhlIGhlbHAgdGV4dCBt
aXNzaW5nLgoKSSB3YXMgaW5pdGlhbGx5IGNvbmZ1c2VkIGF0IHNyYW5kIHdoZW4gSSB0aG91Z2h0
IEkgdXNlZCB5b3VyIApoYXJzX3BldHJ1c2thIGxpYnJhcnkgcm91dGluZXMgYnV0IHRoZW4gc2F3
IHJhbmQoKSBmZWVkcyB0aGUgc2VlZCBpbnRvIAp0aG9zZS4KClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
