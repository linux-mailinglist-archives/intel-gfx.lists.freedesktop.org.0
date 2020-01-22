Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E97B614587F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 16:16:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9857C6F57C;
	Wed, 22 Jan 2020 15:16:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D186F57B;
 Wed, 22 Jan 2020 15:16:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 07:16:09 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="229371757"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Jan 2020 07:16:08 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200122101043.21347-1-tvrtko.ursulin@linux.intel.com>
 <20200122144028.27346-1-tvrtko.ursulin@linux.intel.com>
 <157970441989.7477.13168128747438871488@skylake-alporthouse-com>
 <dcadd92b-5f5b-ac99-d6c4-ed9beb19f6ca@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <754810cf-420a-4920-dae3-8bcbf2e267a9@linux.intel.com>
Date: Wed, 22 Jan 2020 15:16:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <dcadd92b-5f5b-ac99-d6c4-ed9beb19f6ca@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2]
 i915/gem_engine_topology: Generate engine names based on class
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIyLzAxLzIwMjAgMTQ6NTMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDIyLzAx
LzIwMjAgMTQ6NDYsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxp
biAoMjAyMC0wMS0yMiAxNDo0MDoyOCkKPj4+IMKgIHN0YXRpYyB2b2lkIGluaXRfZW5naW5lKHN0
cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZTIsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IGNsYXNzLCBpbnQgaW5zdGFuY2UsIHVp
bnQ2NF90IGZsYWdzKQo+Pj4gwqAgewo+Pj4gLcKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50
ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKl9fZTI7Cj4+PiAtwqDCoMKgwqDCoMKgIHN0YXRpYyBjb25z
dCBjaGFyICp1bmtub3duX25hbWUgPSAidW5rbm93biIsCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICp2aXJ0dWFsX25hbWUgPSAidmlydHVhbCI7
Cj4+PiArwqDCoMKgwqDCoMKgIGludCByZXQ7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIGUyLT5jbGFz
c8KgwqDCoCA9IGNsYXNzOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBlMi0+aW5zdGFuY2UgPSBpbnN0
YW5jZTsKPj4+IC3CoMKgwqDCoMKgwqAgZTItPmZsYWdzwqDCoMKgID0gZmxhZ3M7Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgIC8qIGVuZ2luZSBpcyBhIHZpcnR1YWwgZW5naW5lICovCj4+PiDCoMKgwqDC
oMKgwqDCoMKgIGlmIChjbGFzcyA9PSBJOTE1X0VOR0lORV9DTEFTU19JTlZBTElEICYmCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW5zdGFuY2UgPT0gSTkxNV9FTkdJTkVfQ0xBU1NfSU5W
QUxJRF9WSVJUVUFMKSB7Cj4+Cj4+IENhbiB0aGlzIGV2ZXIgbWF0Y2g/wqAgaW5zdGFuY2UgaXMg
NjU1MzQgYW5kIElOVkFMSURfVklSVFVBTCBpcyAtMi4KPj4gaW50IGNsYXNzL2luc3RhbmNlIHNo
b3VsZCBiZSB1MTY/Cj4gCj4gWWVhaCwgbm8gaXQgY2FuJ3QgZXZlciBtYXRjaC4gSSdsbCBoYXZl
IGEgbG9vayBob3cgZWFzeSB0byBjaGFuZ2UgaXQgYWxsIAo+IHRvIHN0cnVjdCBpOTE1X2VuZ2lu
ZV9jbGFzc19pbnN0YW5jZS4KClRvbyBtdWNoIGNodXJuLiBJIGRpZCBzaW1wbGUgdWludDE2X3Qg
aGVyZSBhbmQgaW4gc3RydWN0IAppbnRlbF9leGVjdXRpb25fZW5naW5lMiBhcyBhIGZvbGxvdyB1
cCBwYXRjaCB0byB0aGlzIG9uZS4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
