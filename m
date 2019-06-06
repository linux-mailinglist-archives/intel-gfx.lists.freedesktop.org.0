Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DA0371D5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 12:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61A68919F;
	Thu,  6 Jun 2019 10:35:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4AFB88FD4
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 10:35:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 03:35:31 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2019 03:35:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
 <155981549999.19464.14349612134580979816@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <53f60c65-c7f7-65e9-ac47-0e0599b16b48@linux.intel.com>
Date: Thu, 6 Jun 2019 11:35:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155981549999.19464.14349612134580979816@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 00/21] Implicit dev_priv removal
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA2LzA2LzIwMTkgMTE6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTA2IDEwOjM2OjE4KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBNb3N0bHkgcGF0Y2hlcyByZXdvcmtpbmcg
dGhlIGNvZGUgYW5kIEdFTSBpbml0IHBhdGhzIHRvIHJlbW92ZSBzb21lIGltcGxpY2l0Cj4+IGRl
dl9wcml2IGRlcGVuZGVuY2llcyAoSTkxNV9SRUFEL0k5MTVfV1JJVEUpLCBwbHVzIHNvbWUgc21h
bGwgdHdlYWtzIHRvIHRpZHkKPj4gR0VNIGluaXQgcGF0aHMgdG8gdXNlIG1vcmUgbG9naWNhbCBp
bnB1dCBwYXJhbWV0ZXJzIChlbmFibGVkIGJ5IHRoZSBjb252ZXJzaW9uCj4+IHRvIHVuY29yZSBt
bWlvIGFjY2Vzc29ycykuCj4gCj4gUGFzc2luZyBpbnRlbF91bmNvcmUgdG8gbm9uIGludGVsX3Vu
Y29yZSBmdW5jdGlvbnMgZHVyaW5nIGluaXQsIEkKPiBkaXNhZ3JlZSB3aXRoIGFzIGl0IG1ha2Vz
IHRoZSBsYXllcmluZyB2aW9sYXRpb25zIHdvcnNlIGZvciBubyBhcHBhcmVudAo+IGdhaW4uCgpG
b3IgZ2VtX2luaXRfaHcgaXQgaXMgcXVlc3Rpb25hYmxlIEkgYWdyZWUuCgpJZGVhIHdhcyB0aGF0
IGl0IGxvZ2ljYWxseSBtYWtlcyBzZW5zZSB0byBwYXNzIHdoYXQgaXMgZnVuY3Rpb25hbGx5IAp1
c2VkLiBBbmQgZm9yIG1ham9yaXR5IHRoaXMgc2VlbXMgdG8gYmUgdW5jb3JlIHdpdGggaTkxNSBi
ZWluZyB1c2VkIG9ubHkgCmZvciAid2hhdCBnZW4gYW0gSSIgY2hlY2tzLgoKQnV0IEkgaGF2ZW4n
dCBjb252ZXJ0ZWQgdGhlIGd1YyByZWxhdGVkIGJpdHMsIG9yIHRoZSBpbnRlbF9lbmdpbmVzX2lu
aXQgCmFsc28gZG9lc24ndCBmaXQuIFNvIHllcywgaXQncyBub3Qgc3VwZXIgY2xlYW4gc28gSSBj
YW4gZHJvcCB0aGF0IGJpdCAKZm9yIG5vdy4KClJlZ2FyZHMsCgpUdnJ0a28KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
