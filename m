Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EADB94E2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 18:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1CE6FD4E;
	Fri, 20 Sep 2019 16:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB776FD4E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 16:05:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18561990-1500050 for multiple; Fri, 20 Sep 2019 17:05:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190920083624.4601-1-chris@chris-wilson.co.uk>
 <156899145257.10086.14761802446237119901@skylake-alporthouse-com>
 <baf00b47-396b-fa55-8965-ef02ad5900ff@linux.intel.com>
 <AD48BB7FB99B174FBCC69E228F58B3B68CE44225@FMSMSX119.amr.corp.intel.com>
 <156899541401.1196.1630748329776236243@skylake-alporthouse-com>
In-Reply-To: <156899541401.1196.1630748329776236243@skylake-alporthouse-com>
Message-ID: <156899552772.1196.16696292617471319107@skylake-alporthouse-com>
Date: Fri, 20 Sep 2019 17:05:27 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjAgMTc6MDM6MzQpCj4gUXVvdGluZyBCbG9v
bWZpZWxkLCBKb24gKDIwMTktMDktMjAgMTY6NTA6NTcpCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVHZydGtvCj4gPiA+IFVyc3VsaW4KPiA+ID4g
U2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMjAsIDIwMTkgODoxMiBBTQo+ID4gPiBUbzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1
OiBQcmV2ZW50IGJvbmRlZCByZXF1ZXN0cyBmcm9tCj4gPiA+IG92ZXJ0YWtpbmcgZWFjaCBvdGhl
ciBvbiBwcmVlbXB0aW9uCj4gPiA+IAo+ID4gPiAKPiA+ID4gT24gMjAvMDkvMjAxOSAxNTo1Nywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiA+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTA5
LTIwIDA5OjM2OjI0KQo+ID4gPiA+PiBGb3JjZSBib25kZWQgcmVxdWVzdHMgdG8gcnVuIG9uIGRp
c3RpbmN0IGVuZ2luZXMgc28gdGhhdCB0aGV5IGNhbm5vdCBiZQo+ID4gPiA+PiBzaHVmZmxlZCBv
bnRvIHRoZSBzYW1lIGVuZ2luZSB3aGVyZSB0aW1lc2xpY2luZyB3aWxsIHJldmVyc2UgdGhlIG9y
ZGVyLgo+ID4gPiA+PiBBIGJvbmRlZCByZXF1ZXN0IHdpbGwgb2Z0ZW4gd2FpdCBvbiBhIHNlbWFw
aG9yZSBzaWduYWxlZCBieSBpdHMgbWFzdGVyLAo+ID4gPiA+PiBjcmVhdGluZyBhbiBpbXBsaWNp
dCBkZXBlbmRlbmN5IC0tIGlmIHdlIGlnbm9yZSB0aGF0IGltcGxpY2l0IGRlcGVuZGVuY3kKPiA+
ID4gPj4gYW5kIGFsbG93IHRoZSBib25kZWQgcmVxdWVzdCB0byBydW4gb24gdGhlIHNhbWUgZW5n
aW5lIGFuZCBiZWZvcmUgaXRzCj4gPiA+ID4+IG1hc3Rlciwgd2Ugd2lsbCBjYXVzZSBhIEdQVSBo
YW5nLgo+ID4gPiA+Cj4gPiA+ID4gVGhpbmtpbmcgbW9yZSwgaXQgc2hvdWxkIG5vdCBkaXJlY3Rs
eSBjYXVzZSBhIEdQVSBoYW5nLCBhcyB0aGUgc3R1Y2sgcmVxdWVzdAo+ID4gPiA+IHNob3VsZCBi
ZSB0aW1lc2xpY2VkIGF3YXksIGFuZCBlYWNoIHByZWVtcHRpb24gc2hvdWxkIGJlIGVub3VnaCB0
byBrZWVwCj4gPiA+ID4gaGFuZ2NoZWNrIGF0IGJheSAodGhvdWdoIHdlIGhhdmUgZXZpZGVuY2Ug
aXQgbWF5IG5vdCkuIFNvIGF0IGJlc3QgaXQgcnVucwo+ID4gPiA+IGF0IGhhbGYtc3BlZWQsIGF0
IHdvcnN0IGEgdGhpcmQgKGlmIG15IG1vZGVsIGlzIGNvcnJlY3QpLgo+ID4gPiAKPiA+ID4gQnV0
IEkgdGhpbmsgaXQgaXMgc3RpbGwgY29ycmVjdCB0byBkbyBzaW5jZSB3ZSBkb24ndCBoYXZlIHRo
ZSBjb3VwbGluZwo+ID4gPiBpbmZvcm1hdGlvbiBvbiByZS1zdWJtaXQuIEhtLi4gYnV0IGRvbid0
IHdlIG5lZWQgdG8gcHJldmVudCBzbGF2ZSBmcm9tCj4gPiA+IGNoYW5naW5nIGVuZ2luZXMgYXMg
d2VsbD8KPiA+IAo+ID4gVW5sZXNzIEknbSBtaXNzaW5nIHNvbWV0aGluZywgdGhlIHByb3Bvc2Fs
IGhlcmUgaXMgdG8gc2V0IHRoZSBlbmdpbmVzIGluIHN0b25lIGF0IGZpcnN0IHN1Ym1pc3Npb24s
IGFuZCBuZXZlciBjaGFuZ2UgdGhlbT8KPiAKPiBGb3Igc3VibWlzc2lvbiBoZXJlLCB0aGluayBl
eGVjdXRpb24gKHN1Ym1pc3Npb24gdG8gYWN0dWFsIEhXKS4gKFdlIGhhdmUKPiAyIHNlcGFyYXRl
IHBoYXNlcyB0aGF0IGFsbCBsaWtlIHRvIGJlIGNhbGxlZCBzdWJtaXQoKSEpCnMvMi8zLwotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
