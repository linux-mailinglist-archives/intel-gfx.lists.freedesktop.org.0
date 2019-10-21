Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5EBDE931
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 12:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C1A89E08;
	Mon, 21 Oct 2019 10:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D1D89E08
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 10:18:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18910536-1500050 for multiple; Mon, 21 Oct 2019 11:18:35 +0100
MIME-Version: 1.0
To: Animesh Manna <animesh.manna@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <998ad164-4eac-e5a9-50e9-99632d238c81@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
 <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
 <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
 <dc529fe2-e3a8-6076-e8c7-a1c5bae40a63@linux.intel.com>
 <3bad55f1-d661-0f68-dab8-2879952f87e4@intel.com>
 <55b39daa-fae6-cb1d-0280-9677c57fd242@linux.intel.com>
 <998ad164-4eac-e5a9-50e9-99632d238c81@intel.com>
Message-ID: <157165311272.29536.12695876327995208507@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 11:18:32 +0100
Subject: Re: [Intel-gfx] [PATCH v2 02/15] drm/i915/dsb: DSB context creation.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTEwLTIxIDExOjExOjA0KQo+IAo+IAo+IE9uIDEw
LzE3LzIwMTkgODowOCBQTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gPgo+ID4gT24gMTcvMTAv
MjAxOSAxNDo1MywgQW5pbWVzaCBNYW5uYSB3cm90ZToKPiA+PiBPbiAxMC8xNy8yMDE5IDY6Mzkg
UE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+ID4+PiBPbiAxNy8xMC8yMDE5IDEzOjUyLCBBbmlt
ZXNoIE1hbm5hIHdyb3RlOgo+ID4+Pj4gT24gMTAvMTcvMjAxOSAyOjA1IFBNLCBUdnJ0a28gVXJz
dWxpbiB3cm90ZToKPiA+Pj4+PiBPbiAyMi8wOC8yMDE5IDEzOjA5LCBDaHJpcyBXaWxzb24gd3Jv
dGU6Cj4gPj4+Pj4+IFF1b3RpbmcgQW5pbWVzaCBNYW5uYSAoMjAxOS0wOC0yMiAxMzowNTowNikK
PiA+Pj4+Pj4+IEhpLAo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBPbiA4LzIxLzIwMTkg
MTE6NDEgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4+Pj4+PiBRdW90aW5nIEFuaW1lc2gg
TWFubmEgKDIwMTktMDgtMjEgMDc6MzI6MjIpCj4gPj4+Pj4+Pj4+ICsgICAgICAgdm1hID0gaTkx
NV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgCj4gPj4+Pj4+Pj4+IFBJTl9N
QVBQQUJMRSk7Cj4gPj4+Pj4+Pj4gT25seSB0aGlzIChjdXJyZW50bHkpIHN0aWxsIHJlcXVpcmVz
IHN0cnVjdF9tdXRleAo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFN1cmUgd2lsbCBhZGQuCj4gPj4+Pj4+
Pj4KPiA+Pj4+Pj4+PiBEb2VzIGl0IGhhdmUgdG8gbWFwcGFibGU/IElzIHRoYXQgdGhlIEhXIGNv
bnN0cmFpbnQ/Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gWWVzLCBhcyBwZXIgSFcgZGVzaWduIG5lZWQg
YSBjcHUgbWFwcGVkIGJ1ZmZlciB0byB3cml0ZSAKPiA+Pj4+Pj4+IG9wY29kZStkYXRhIGZyb20K
PiA+Pj4+Pj4+IGRyaXZlci4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gUElOX01BUFBBQkxFIHJlZmVycyB0
byB0aGUgaW9tZW0gYXBlcnR1cmUgcG9ydGlvbiBvZiB0aGUgR2xvYmFsIAo+ID4+Pj4+PiBHVFQg
KGkuZS4KPiA+Pj4+Pj4gdGhlIGxvdyA2NC01MTJNaUIpLiBZb3UgbmV2ZXIgdXNlIGEgR0dUVCBt
bWFwIGZvciB5b3VyIENQVSAKPiA+Pj4+Pj4gYWNjZXNzLCBzbyB0aGUKPiA+Pj4+Pj4gcGxhY2Vt
ZW50IHNob3VsZCBiZSBlbnRpcmVseSBkaWN0YXRlZCBieSB0aGUgRFNCIHJlcXVpcmVtZW50cy4g
SWYgCj4gPj4+Pj4+IHlvdQo+ID4+Pj4+PiBkb24ndCBuZWVkIHRvIGJlIGluIHRoZSBsb3cgcmVn
aW9uLCBkb24ndCBmb3JjZSBpdCB0byBiZSwgc28gd2UgaGF2ZQo+ID4+Pj4+PiBsZXNzIGNvbmdl
c3Rpb24gZm9yIHRoZSBvYmplY3RzIHRoYXQgaGF2ZSB0byBiZSBwbGFjZWQgaW4gdGhhdCAKPiA+
Pj4+Pj4gcmVnaW9uLgo+ID4+Pj4+Cj4gPj4+Pj4gSSB3YXMgZG9pbmcgYSBtaW5pIGF1ZGl0IG9m
IHdoYXQgdXNlcyB0aGUgYXBlcnR1cmUgdGhlc2UgZGF5cyBhbmQgCj4gPj4+Pj4gbm90aWNlZCB0
aGlzIGNvZGUgaGFzIGJlZW4gbWVyZ2VkIGluIHRoZSBtZWFudGltZSwgYnV0IEFGQUlDUyB0aGlz
IAo+ID4+Pj4+IHF1ZXN0aW9uIGZyb20gQ2hyaXMgaGFzbid0IGJlZW4gYW5zd2VyZWQ/IEF0IGxl
YXN0IG5vdCBvbiB0aGUgCj4gPj4+Pj4gbWFpbGluZyBsaXN0LiBTbyBkb2VzIGl0IG5lZWQgdG8g
YmUgaW4gdGhlIGFwZXJ0dXJlIHJlZ2lvbiBvciBub3Q/Cj4gPj4+Pgo+ID4+Pj4gSGksCj4gPj4+
Pgo+ID4+Pj4gQmFzZWQgb24gcmVjb21tZW5kYXRpb24gZnJvbSBIL3cgdGVhbSB1c2VkIFBJTl9N
QVBQQUJMRSwgbm90IHZlcnkgCj4gPj4+PiBzdXJlIGFib3V0IGludGVybmFsIGRldGFpbHMuCj4g
Pj4+Cj4gPj4+IFdoYXQgZGlkIHRoZSByZWNvbW1lbmRhdGlvbiBleGFjdGx5IHNheT8gVGhhdCBp
dCBoYXMgdG8gYmUgaW4gR0dUVCAKPiA+Pj4gb3IgYXBlcnR1cmU/Cj4gPj4KPiA+PiBJdCBzYWlk
Ogo+ID4+ICJHTU0gdG8gYWxsb2NhdGUgYnVmZmVyIGZyb20gZ2xvYmFsIEdUVCwgZ2V0IENQVSBt
YXBwZWQgYWRkcmVzcyBhcyAKPiA+PiB3ZWxsIChub3Qgc3RvbGVuIG1lbW9yeSkgLi4uICIuCj4g
Pgo+ID4gU28gaXQncyBwb3NzaWJsZSB5b3UgZG9uJ3QgbmVlZCBQSU5fTUFQUEFCTEUuCj4gCj4g
QXMgcGVyIEkgcmVtZW1iZXIgZnJvbSBpbml0aWFsIGRpc2N1c3Npb24gZnJvbSBoL3cgdGVhbSBE
U0IgaXMgbm90IGNhY2hlIAo+IGNvaGVyZW50LiBEdWUgdG8gdGhhdCB3ZSBoYXZlIHVzZWQgSTkx
NV9NQVBfV0MgZHVyaW5nIG1hcHBpbmcgdGhlIGJ1ZmZlciAKPiBhbmQgd2FudCB0byBrZWVwIHRo
ZSBidWZmZXIgaW4gYXBlcnR1cmUgcmVnaW9uLgoKVGhlIG1hcHBhYmxlIGFwZXJ0dXJlIGhhcyBu
b3RoaW5nIHRvIGRvIHdpdGggSTkxNV9NQVBfV0Mgd2hpY2ggaXMgYQpwcm9jZXNzb3IgYXR0cmli
dXRlIG9uIGl0cyBwYWdlIHRhYmxlcy4gSWYgb25seSBJIG1lbnRpb25lZCB3ZSBoYWQgYSB3YXkK
dG8gZmx1c2ggY2FjaGVzIQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
