Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB65B308823
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 12:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B586EAD5;
	Fri, 29 Jan 2021 11:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0FE6EAD5
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 11:15:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23735158-1500050 for multiple; Fri, 29 Jan 2021 11:15:30 +0000
MIME-Version: 1.0
In-Reply-To: <87h7n0hu9p.fsf@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-18-matthew.d.roper@intel.com>
 <87h7n0hu9p.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 11:15:29 +0000
Message-ID: <161191892944.12947.12934684852512611563@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 17/18] drm/i915/display13: Add rc_qp_table
 for rcparams calculation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAyMS0wMS0yOSAxMToxMjowMikKPiBPbiBUaHUsIDI4IEph
biAyMDIxLCBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPiB3cm90ZToKPiA+
IEZyb206IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+ID4K
PiA+IEFkZCB0aGUgcXAgdGFibGUgZm9yIDQ0NCBmb3JtYXRzLCBmb3IgOGJwYywgMTBicGMgYW5k
IDEyYnBjLCBhcyBnaXZlbiBieQo+ID4gdGhlIFZFU0EgQyBtb2RlbCBmb3IgRFNDIDEuMQo+ID4K
PiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gU2ln
bmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+ID4gLS0tCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3FwX3RhYmxlcy5o
ICAgIHwgMjk0ICsrKysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmRzYy5jICAgICB8ICAyMiArLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzE1
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xcF90YWJsZXMuaAo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3FwX3RhYmxlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xcF90YWJsZXMuaAo+ID4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMTM2OTRkNTIyMGQ0Cj4gPiAt
LS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3FwX3RhYmxlcy5oCj4gPiBAQCAtMCwwICsxLDI5NCBAQAo+ID4gKy8qIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQgKi8KPiA+ICsvKgo+ID4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVs
IENvcnBvcmF0aW9uCj4gPiArICovCj4gPiArCj4gCj4gVGhlIGluY2x1ZGUgZ3VhcmQgaXMgbWlz
c2luZy4KClNob3VsZCB3ZSBldmVuIGJlIHB1dHRpbmcgbGFyZ2UgdGFibGVzIGludG8gYSBoZWFk
ZXI/CgpXb3VsZCB0aGlzIGJlIGJldHRlciBhcyBhIC5jPwotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
