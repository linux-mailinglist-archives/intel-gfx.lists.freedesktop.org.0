Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDBB33024
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 14:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B1788AA1;
	Mon,  3 Jun 2019 12:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3713E88AA1;
 Mon,  3 Jun 2019 12:47:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:47:56 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2019 05:47:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, 
 igt-dev@lists.freedesktop.org
References: <20190529132421.27905-1-chris@chris-wilson.co.uk>
 <dcc8f38f-2c9b-cb95-3061-0384e95fb7a2@linux.intel.com>
 <20190603103253.GZ22949@platvala-desk.ger.corp.intel.com>
 <2165d563-140f-1fb8-5234-c0099892fe96@linux.intel.com>
 <20190603111919.GA22949@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7b9dfef0-7d45-d8e3-4774-d6f7290b3dd9@linux.intel.com>
Date: Mon, 3 Jun 2019 13:47:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603111919.GA22949@platvala-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Fix
 intel_get_current_physical_engine() iterator
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

Ck9uIDAzLzA2LzIwMTkgMTI6MTksIFBldHJpIExhdHZhbGEgd3JvdGU6Cj4gT24gTW9uLCBKdW4g
MDMsIDIwMTkgYXQgMTE6Mzk6MjVBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Cj4+
IE9uIDAzLzA2LzIwMTkgMTE6MzIsIFBldHJpIExhdHZhbGEgd3JvdGU6Cj4+PiBPbiBNb24sIEp1
biAwMywgMjAxOSBhdCAxMToxOTo0OEFNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+
Pgo+Pj4+IE9uIDI5LzA1LzIwMTkgMTQ6MjQsIENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4gSWYg
d2UgcnVuIG91dCBvZiBlbmdpbmVzLCBpbnRlbF9nZXRfY3VycmVudF9waHlzaWNhbF9lbmdpbmUo
KSBkZWdyYWRlcwo+Pj4+PiBpbnRvIGFuIGluZmluaXRlIGxvb3AgYXMgYWx0aG91Z2ggaXQgYWR2
YW5jZWQgdGhlIGl0ZXJhdG9yLCBpdCBkaWQgbm90Cj4+Pj4+IHVwZGF0ZSBpdHMgbG9jYWwgZW5n
aW5lIHBvaW50ZXIuCj4+Pj4KPj4+PiBXZSBoYWQgb25lIGluZmluaXRlIGxvb3AgaW4gdGhlcmUg
YWxyZWFkeS4uIEFGQUlSIGl0IHdhcyBvbiBvbmUgZW5naW5lCj4+Pj4gcGxhdGZvcm1zLiBEb2Vz
IHRoZSBuZXcgaW5jYXJuYXRpb24gaGFwcGVuIGFjdHVhbGx5IHZpYSB0aGUKPj4+PiBfX2Zvcl9l
YWNoX3BoeXNpY2FsX2VuZ2luZSBpdGVyYXRvciBvciBwZXJoYXBzIG9ubHkgd2hlbiBjYWxsaW5n
Cj4+Pj4gaW50ZWxfZ2V0X2N1cnJlbnRfcGh5c2ljYWxfZW5naW5lIGFmdGVyIGxvb3AgZW5kPyBX
aHkgaXQgd2Fzbid0IHNlZW4gaW4KPj4+PiB0ZXN0aW5nPwo+Pj4KPj4+Cj4+PiBUaGUgbmV3IGlu
Y2FybmF0aW9uIGhhcHBlbnMgd2l0aCBhIHdlZGdlZCBHUFUuIFRoYXQncyBhIGNhc2UgdGhhdCdz
Cj4+PiBoYXJkIHRvIGNvbWUgYnkgaW4gdGVzdGluZy4KPj4KPj4gMS4KPj4gQ29sb3VyIG1lIGNv
bmZ1c2VkLiA6KSBIb3cgZG9lcyBhIHdlZGdlZCBHUFUgYWZmZWN0IHRoaXMgbG9vcD8KPiAKPiBX
ZWRnaW5nIGNvdWxkIGJlIGEgcmVkIGhlcnJpbmcsIGJ1dCByZWdhcmRsZXNzIHRoZSBHUFUgd2Fz
IGluIGEgZnVua3kKPiBzdGF0ZS4KPiAKPiBBbiBlYXN5IHJlcHJvZHVjdGlvbiBtZXRob2QgaXMg
anVzdAo+IAo+ICMgIC4vcGVyZl9wbXUKPiAKPiAoYXMgbm9ybWFsIHVzZXIsIG5vdCByb290ISkK
ClNlZSBpdCBub3csIHNvIHRoZSBwcm9ibGVtIGlzIGNvZGUgaXMgbm90IGNhcGFibGUgb2YgaGFu
ZGxpbmcgemVybyAKZW5naW5lcyAod2hpY2ggaXQgaGFwcGVucyBpZiBubyBhY2Nlc3MgdG8gZHJt
IG1hc3RlciBsaWtlIGluIHlvdXIgZXhhbXBsZSkuCgpBcyBzdWNoLCBDaHJpcycgcGF0Y2ggbG9v
a3Mgb2theSB0byBtZS4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
