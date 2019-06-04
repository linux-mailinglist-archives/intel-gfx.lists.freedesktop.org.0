Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333BA34036
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 09:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FC389760;
	Tue,  4 Jun 2019 07:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A9D89762
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 07:34:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16783118-1500050 for multiple; Tue, 04 Jun 2019 08:34:30 +0100
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190604071222.GA23036@ideak-desk.fi.intel.com>
References: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
 <155937872123.22493.3618519792490340553@skylake-alporthouse-com>
 <874l56o6fk.fsf@intel.com> <20190604071222.GA23036@ideak-desk.fi.intel.com>
Message-ID: <155963366501.4471.5470916959536434523@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 04 Jun 2019 08:34:25 +0100
Subject: Re: [Intel-gfx] [PATCH 0/2] split out intel_display_power
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMDYtMDQgMDg6MTI6MjIpCj4gT24gTW9uLCBKdW4gMDMs
IDIwMTkgYXQgMDk6NDM6NTlQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiBPbiBTYXQs
IDAxIEp1biAyMDE5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3Jv
dGU6Cj4gPiA+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wNS0zMSAyMzoy
NDowNykKPiA+ID4+IFNlcGFyYXRlIHRoZSBkaXNwbGF5IFBNIGZyb20gdGhlIFBDSS1sZXZlbCBy
dW50aW1lIFBNLgo+ID4gPj4gSSdsbCBmb2xsb3cgdGhpcyB1cCB3aXRoIHYyIG9mIHRoZSBycG0g
ZW5jYXBzdWxhdGlvbiBzZXJpZXMgWzFdLCBidXQKPiA+ID4+IEknZCBsaWtlIHRvIGdldCB0aGlz
IGluIGJlZm9yZSB0aGF0IHRvIGF2b2lkIGhhdmluZyB0byBjYXJyeSB0aGlzCj4gPiA+PiBiaWcg
ZHVtYiBkaWZmIGluIHRoYXQgc2VyaWVzLgo+ID4gPgo+ID4gPiBXaXRoIFJVTlRJTUVfUE1fREVC
VUcgZGlzYWJsZWQsCj4gPiA+Cj4gPiA+IGFkZC9yZW1vdmU6IDMvMSBncm93L3NocmluazogNi84
IHVwL2Rvd246IDM5Ni8tMzkzICgzKQo+ID4gPiBGdW5jdGlvbiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBvbGQgICAgIG5ldyAgIGRlbHRhCj4gPiA+IGludGVsX3J1bnRpbWVf
cG1fcmVsZWFzZSAgICAgICAgICAgICAgICAgICAgICAgLSAgICAgMjc0ICAgICsyNzQKPiA+ID4g
aW50ZWxfcnVudGltZV9wbV9wdXRfcmF3ICAgICAgICAgICAgICAgICAgICAgICAtICAgICAgNDUg
ICAgICs0NQo+ID4gPiBpbnRlbF9ydW50aW1lX3BtX3B1dF91bmNoZWNrZWQgICAgICAgICAgICAg
ICAgMTAgICAgICA0OCAgICAgKzM4Cj4gPiA+IGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5j
X3dvcmsgICAgICAgICAgIDE3OSAgICAgMTkyICAgICArMTMKPiA+ID4gaW50ZWxfZGlzcGxheV9w
b3dlcl9mbHVzaF93b3JrICAgICAgICAgICAgICAgMTE3ICAgICAxMjYgICAgICArOQo+ID4gPiBf
X2ludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jICAgICAgICAgICAgICAxOTMgICAgIDE5OSAg
ICAgICs2Cj4gPiA+IGludGVsX3J1bnRpbWVfcG1fZ2V0X3JhdyAgICAgICAgICAgICAgICAgICAg
ICAgLSAgICAgICA0ICAgICAgKzQKPiA+ID4gaW50ZWxfZGlzcGxheV9wb3dlcl9ncmFiX2FzeW5j
X3B1dF9yZWYgICAgICAgMTE3ICAgICAxMjEgICAgICArNAo+ID4gPiBfX3dhcm5lZCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA0NjkgICAgIDQ3MiAgICAgICszCj4gPiA+IGlu
dGVsX3J1bnRpbWVfcG1fZ2V0ICAgICAgICAgICAgICAgICAgICAgICAgICAxMCAgICAgICA3ICAg
ICAgLTMKPiA+ID4gaW50ZWxfcG93ZXJfZG9tYWluc19lbmFibGUgICAgICAgICAgICAgICAgICAg
IDM4ICAgICAgMzMgICAgICAtNQo+ID4gPiBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF91bmNoZWNr
ZWQgICAgICAgICAgICAgMjMgICAgICAxOCAgICAgIC01Cj4gPiA+IGludGVsX2Rpc3BsYXlfcG93
ZXJfZ2V0X2lmX2VuYWJsZWQgICAgICAgICAgIDE0MyAgICAgMTM4ICAgICAgLTUKPiA+ID4gaW50
ZWxfZGlzcGxheV9wb3dlcl9nZXQgICAgICAgICAgICAgICAgICAgICAgIDg0ICAgICAgNzkgICAg
ICAtNQo+ID4gPiBpbnRlbF9wb3dlcl9kb21haW5zX3N1c3BlbmQgICAgICAgICAgICAgICAgICA0
OTAgICAgIDQ4MCAgICAgLTEwCj4gPiA+IGludGVsX3Bvd2VyX2RvbWFpbnNfZmluaV9odyAgICAg
ICAgICAgICAgICAgIDExNiAgICAgMTA2ICAgICAtMTAKPiA+ID4gcmVsZWFzZV9hc3luY19wdXRf
ZG9tYWlucyAgICAgICAgICAgICAgICAgICAgMjIwICAgICAyMDMgICAgIC0xNwo+ID4gPiBfX2lu
dGVsX3J1bnRpbWVfcG1fcHV0LmNvbnN0cHJvcCAgICAgICAgICAgICAzMzMgICAgICAgLSAgICAt
MzMzCj4gPiA+IFRvdGFsOiBCZWZvcmU9MjMzOTQzODgsIEFmdGVyPTIzMzk0MzkxLCBjaGcgKzAu
MDAlCj4gPiA+Cj4gPiA+IHdoaWNoIGlzIG15IGJpZ2dlc3Qgd29ycnkgd2hlbiBtZWRkbGluZyB3
aXRoIHRoZXNlLCB0aGF0IHdlIGFjY2lkZW50YWxseQo+ID4gPiBleHBsb2RlIHByb2R1Y3Rpb24g
Y29kZSB3aXRoIHVudXNlZCBkZWJ1Z2dpbmcgKGFsbCB0aG9zZSB3YWtlcmVmcykuCj4gPiA+Cj4g
PiA+IExndG0sIEkgd291bGQgbGlrZSBKYW5pIHRvIGluZGljYXRlIHRoYXQgaGUncyBoYXBweSB3
aXRoIHRoaXMgc3BsaXQgYXMKPiA+ID4gd2VsbCBzaW5jZSBoZSBoYXMgYmVlbiBsb29raW5nIGF0
IHZlcnkgc2ltaWxhciBpZGVhcy4KPiA+IAo+ID4gSSBtaWdodCBiaWtlc2hlZCB0aGUgbmFtaW5n
LCBmcm9tIHRoZSBQT1YgdGhhdCBmdW5jdGlvbnMgd291bGQgYmUgbmljZQo+ID4gdG8gYmUgKGV2
ZW50dWFsbHkpIG5hbWVkIGJhc2VkIG9uIHRoZSBuYW1lIG9mIHRoZSBmaWxlIHRoZXkgcmVzaWRl
Cj4gPiBpbi4gQnV0IEkgZ3Vlc3MgaW50ZWxfZGlzcGxheV9wb3dlci5bY2hdIGlzIGFzIGdvb2Qg
YXMgYW55IEkgY291bGQgY29tZQo+ID4gdXAgd2l0aCwgYW5kIG5vdCBldmVyeXRoaW5nIGlzIGdv
aW5nIHRvIGZvbGxvdyB0aGUgbmFtaW5nIHBhdHRlcm4KPiA+IGFueXdheS4KPiA+IAo+ID4gSSdk
IHN0aWxsIGxpa2UgdG8gZ2V0IGFuIGFjayBmcm9tIEltcmUgYmVmb3JlIG1lcmdpbmcsIGJ1dCBm
cm9tIG15IHNpZGUKPiA+IHRoaXMgaXMsCj4gPiAKPiA+IEFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4gCj4gPiBUaGFua3MgZm9yIGRvaW5nIHRoaXMuCj4g
Cj4gS2VlcGluZyB0aGUgZGlzcGxheSBwb3dlciByZWxhdGVkIGZ1bmN0aW9ucyBncm91cGVkIGlu
IGEgc2VwYXJhdGUgZmlsZQo+IG1ha2VzIHNlbnNlIHRvIG1lOgo+IAo+IEFja2VkLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CgpTb2xkLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
