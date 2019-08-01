Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAF47D825
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 11:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D186E40E;
	Thu,  1 Aug 2019 09:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1296E40E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 09:01:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 02:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="163557076"
Received: from fischerf-mobl.ger.corp.intel.com (HELO [10.249.35.92])
 ([10.249.35.92])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2019 02:01:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
 <20190731140733.23373-3-lionel.g.landwerlin@intel.com>
 <156460343987.15787.2880473369100261078@skylake-alporthouse-com>
 <6627af91-1f1c-c0ae-7526-25408ae86811@intel.com>
 <156464688459.2512.18044771787416479897@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <e6f97cd6-3e0b-0a6d-fa3b-3341b0ccd555@intel.com>
Date: Thu, 1 Aug 2019 12:01:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156464688459.2512.18044771787416479897@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: add syncobj timeline
 support
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

T24gMDEvMDgvMjAxOSAxMTowOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDgtMDEgMDg6NDM6MjQpCj4+IE9uIDMxLzA3LzIwMTkgMjM6MDMs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDctMzEgMTU6MDc6MzMpCj4+PiBJIHRoaW5rIEkgaGF2ZSBjb252aW5jZWQgbXlzZWxmIHRoYXQg
d2l0aCB0aGUgc3BsaXQgYmV0d2VlbiB3YWl0IGJlZm9yZSwKPj4+IHNpZ25hbCBhZnRlciBjb21i
aW5lZCB3aXRoIHRoZSBydWxlIHRoYXQgc2Vxbm8gcG9pbnQgYWxvbmcgdGhlIHN5bmNvYmoKPj4+
IGFyZSBtb25vdG9uaWMsIHlvdSBzaG91bGQgbm90IGJlIGFibGUgdG8gZ2VuZXJhdGUgYW4gQUIt
QkEgZGVhZGxvY2sKPj4+IGJldHdlZW4gY29uY3VycmVudCBjbGllbnRzLgo+Pj4KPj4+IEV4Y2Vw
dCB0aGF0IHdlIG5lZWQgdG8gZml4dXAgZHJtX3N5bmNvYmpfYWRkX3BvaW50KCkgdG8gYWN0dWFs
bHkgYXBwbHkKPj4+IHRoYXQgcnVsZS4gVGhyb3dpbmcgYW4gZXJyb3IgYW5kIGxlYXZpbmcgdGhl
IGNsaWVudCBzdHVjayBpcyBsZXNzIHRoYW4KPj4+IGlkZWFsLCB3ZSBjYW4ndCBldmVuIHJlY292
ZXIgd2l0aCBhIEdQVSByZXNldCwgYW5kIGFzIHRoZXkgYXJlIG5hdGl2ZQo+Pj4gZmVuY2VzIHdl
IGRvbid0IGVtcGxveSBhIGZhaWxzYWZlIHRpbWVyLgo+Pgo+PiBVbmZvcnR1bmF0ZWx5IHdlJ3Jl
IG5vdCB0aGUgb25seSB1c2VyIG9mIGFkZF9wb2ludCgpIGFuZCBhbWRncHUgZG9lc24ndAo+PiB3
YW50IGl0IHRvIGZhaWwuCj4gSXQncyBkYW5nZXJvdXNseSBleHBvc2luZyB0aGUgZGVhZGxvY2sg
ZnJvbSBpbmNvcnJlY3Qgc2Vxbm8gb3JkZXJpbmcgdG8KPiB1c2Vyc3BhY2UuIFdlIHNob3VsZCBi
ZSBhYmxlIHRvIGhpdCB0aGF0IERSTV9FUlJPUigpIGluIHRlc3RpbmcsIGFuZCBiZQo+IGFibGUg
dG8gZGV0ZWN0IHRoZSBvdXQtb2Ytc2VxdWVuY2UgdGltZWxpbmUuCj4KPj4gQmVzdCBJIGNhbiBj
b21lIHVwIHdpdGggaXMgdGFrZSB0aGUgc3luY29iaiBsb2NrIHdoZW4gc2lnbmFsaW5nIGluCj4+
IGdldF90aW1lbGluZV9mZW5jZV9hcnJheSgpIGRvIHRoZSBjaGVjayB0aGVyZSwgdW5sb2NrIGlu
IF9fZnJlZV9mZW5jZV9hcnJheS4KPiBJIHRoaW5rIHRoZSBpbnRlcm1lZGlhdGUgc3RlcCBpcyBh
ICJzYWZlIiB2ZXJzaW9uIG9mIGFkZF9wb2ludCB0aGF0Cj4gZG9lc24ndCBsZWF2ZSB0aGUgdGlt
ZWxpbmUgYnJva2VuLiBUaGF0IHN0aWxsIGxlYXZlcyBhIGdsaXRjaCB2aXNpYmxlIHRvCj4gdXNl
cnNwYWNlLCBidXQgaXQgc2hvdWxkIG5vdCBkZWFkbG9jay4KCgpSaWdodCwgc291bmRzIGRvYWJs
ZS4gV2hhdCBoYXBwZW5zIGluIGV4ZWNidWYgYWZ0ZXIgYWRkX3BvaW50KCkgZmFpbHM/CgpXZSd2
ZSBhbHJlYWR5IGhhbmRlZCB0aGUgcmVxdWVzdCB0byB0aGUgc2NoZWR1bGVyIGFuZCBwb3RlbnRp
YWxseSBpdCAKbWlnaHQgYmUgcnVubmluZyBhbHJlYWR5LgoKCj4KPiBUaGUgd2F5IEkgd2FzIGxv
b2tpbmcgYXQgaXQgd2FzIHRvIHJlc2VydmUgYSBwbGFjZWhvbGRlciBzeW5jcHQgYmVmb3JlCj4g
YnVpbGRpbmcgdGhlIHJlcXVlc3QgYW5kIGFsbG93IHJlcGxhY2luZyB0aGUgcGxhY2Vob2xkZXIg
YWZ0ZXJ3YXJkcy4KCgpUaGF0IHNvdW5kcyBmYWlybHkgdHJpY2t5IHRvIGdldCByaWdodCA6KAoK
VGhlIGZlbmNlIHN0dWZmIGlzIGFscmVhZHkgZnVsbCBvZiBtYWdpYy4KCgo+Cj4gSWYgd2UgYWJv
cnQgdGhlIHN1Ym1pc3Npb24gcGFydCB3YXksIHdlIGxlYXZlIHRoZSBwbGFjZWhvbGRlciBpbiB0
aGUKPiB0aW1lbGluZSB0byBiZSByZXBsYWNlZCBsYXRlciwgb3Igc3Vic3VtZWQgYnkgYSBsYXRl
ciBzeW5jcHQuCj4KPj4+IERvZXNuJ3QgV0FJVF9GT1JfU1VCTUlUIHRocm93IGEgc3Bhbm5lciBp
biB0aGUgd29ya3MgYW5kIGFsbG93IGZvcgo+Pj4gZGVhZGxvY2tzPwo+Pgo+PiBIbS4uLiBJIGNh
bid0IHNlZSBob3cuCj4+Cj4+IFVubGVzcyB5b3UgbWVhbiBjbGllbnRzIGNvdWxkIGRlYWRsb2Nr
IHRoZW0gdGhlbXNlbHZlcyB0aGUgc2FtZSB3YXkgaXQKPj4gd291bGQgdXNpbmcgMiBwdGhyZWFk
X211dGV4IGFuZCBoYXZpbmcgMiB0aHJlYWRzIHRyeWluZyB0byBsb2NrIGJvdGgKPj4gbXV0ZXhl
cyBpbiBvcHBvc2l0ZSBvcmRlci4KPiBZZXMuCj4gICAKPj4gSXMgaXQgdGhhdCB0aGUga2VybmVs
J3MgcHJvYmxlbT8KPiBJdCBiZWNvbWVzIGEgcHJvYmxlbSBmb3IgdXMgYXMgaXQgdGllcyB1cCBr
ZXJuZWwgcmVzb3VyY2VzIHRoYXQgd2UgY2FuCj4gbm90IHJlYXAgY3VycmVudGx5LiBVc2Vyc3Bh
Y2UgaXMgbm90IG1lYW50IHRvIGJlIGFibGUgdG8gYnJlYWsgdGhlCj4ga2VybmVsIG9uIGEgd2hp
bS4gIEV2ZW4gZnV0ZXhlcyBhcmUgcm9idXN0LiA7KQo+IC1DaHJpcwo+CgpUaGFua3MsCgoKLUxp
b25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
