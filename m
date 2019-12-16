Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 707A21206F5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 14:20:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23156E527;
	Mon, 16 Dec 2019 13:20:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872B56E526
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 13:20:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 05:20:30 -0800
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="209299007"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Dec 2019 05:20:29 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <157650175177.2428.17602949228966194239@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a52bb35b-cfe2-8a82-ba23-485ee0e49488@linux.intel.com>
Date: Mon, 16 Dec 2019 13:20:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157650175177.2428.17602949228966194239@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/5] Per client engine busyness
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE2LzEyLzIwMTkgMTM6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEyLTE2IDEyOjA2OjU5KQo+PiBJbXBsZW1lbnRhdGlvbiB3aXNlIHdl
IGFkZCBhIGEgYnVuY2ggb2YgZmlsZXMgaW4gc3lzZnMgbGlrZToKPj4KPj4gICAgICAgICAgIyBj
ZCAvc3lzL2NsYXNzL2RybS9jYXJkMC9jbGllbnRzLwo+PiAgICAgICAgICAjIHRyZWUKPj4gICAg
ICAgICAgLgo+PiAgICAgICAgICDilJzilIDilIAgNwo+PiAgICAgICAgICDilIIgICDilJzilIDi
lIAgYnVzeQo+PiAgICAgICAgICDilIIgICDilIIgICDilJzilIDilIAgMAo+IAo+IFByZWZlciAn
MCcgb3ZlciByY3M/CgpJIHRoaW5rIHNvLCBzYXZlcyB1c2Vyc3BhY2Uga2VlcGluZyBhIG1hcCBv
ZiBuYW1lcyB0byBjbGFzcyBlbnVtLiBPciAKbWF5YmUgaXQgZG9lc24ndCwgZGVwZW5kcy4gU2F2
ZXMgdXMgaGF2aW5nIHRvIGNvbWUgdXAgd2l0aCBBQkkgbmFtZXMuIApCdXQgSSB0aGluayBJIGNv
dWxkIGJlIGVhc2lseSBjb252aW5jZWQgZWl0aGVyIHdheS4KCj4+IEkgd2lsbCBwb3N0IHRoZSBj
b3JyZXNwb25kaW5nIHBhdGNoIHRvIGludGVsX2dwdV90b3AgZm9yIHJlZmVyZW5jZSBhcyB3ZWxs
Lgo+IAo+IFRoZSBvdGhlciByZXF1aXJlbWVudCBpcyB0aGF0IHdlIG5lZWQgdG8gYXQgbGVhc3Qg
cHJvdmUgdGhlIHN5c2ZzCj4gaW50ZXJmYWNlIGV4aXN0cyBpbiBndC4gcGVyZl9zeXNmcz8KPiAK
PiBRdWljayBsaXN0LAo+IC0gY2hlY2sgaWd0X3NwaW5fdCByZXNwb25zZXMgKHByZXR0eSBtdWNo
IHZlcmJhdGltIG9mIHBlcmZfcG11LmMpCj4gLSBjaGVjayB0aGUgY2xpZW50IG5hbWUgaXMgY29y
cmVjdCBhcm91bmQgZmQgcGFzc2luZwo+IC0gY2hlY2sgaW50ZXJhY3Rpb25zIHdpdGggY3R4LT5l
bmdpbmVzW10KClllcCwgSSBrbm93IGl0IHdpbGwgYmUgbmVlZGVkLiBCdXQgaGF2ZW4ndCBiZWVu
IGJvdGhlcmluZyB5ZXQgc2luY2UgdGhlIApzZXJpZXMgaGFzIGJlZW4gaW4gYSBob3BlbGVzcyBt
b2RlIGZvciB3aGF0LCB0d28geWVhcnMgb3Igc28uIEkgZm9yZ290IAp0byBuYW1lIGl0IFJGQyB0
aGlzIHRpbWUgcm91bmQuLiA6KQoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
