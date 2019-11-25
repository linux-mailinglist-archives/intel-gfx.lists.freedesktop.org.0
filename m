Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB19108D16
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 12:36:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7216E12D;
	Mon, 25 Nov 2019 11:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D5D6E12D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 11:36:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19328607-1500050 for multiple; Mon, 25 Nov 2019 11:36:41 +0000
MIME-Version: 1.0
To: "Navik, Ankit P" <ankit.p.navik@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2F886D5F95ED3A47BC8C177EADCD1CC72844AAAC@BGSMSX104.gar.corp.intel.com>
References: <1574663945-31742-1-git-send-email-ankit.p.navik@intel.com>
 <157466977032.2314.3292181708267450194@skylake-alporthouse-com>
 <2F886D5F95ED3A47BC8C177EADCD1CC72844AAAC@BGSMSX104.gar.corp.intel.com>
Message-ID: <157468179564.7880.3649281033774314628@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 25 Nov 2019 11:36:35 +0000
Subject: Re: [Intel-gfx] [PATCH v5 0/3] drm/i915: Context aware user
 agnostic EU/Slice/Sub-slice control within kernel
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
Cc: "Anand, Vipin" <vipin.anand@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBOYXZpaywgQW5raXQgUCAoMjAxOS0xMS0yNSAxMDozMjoyMykKPiAKPiAKPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiA+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjUsIDIwMTkgMTo0
NiBQTQo+ID4gVG86IE5hdmlrLCBBbmtpdCBQIDxhbmtpdC5wLm5hdmlrQGludGVsLmNvbT47IGlu
dGVsLQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IE5hdmlrLCBBbmtpdCBQ
IDxhbmtpdC5wLm5hdmlrQGludGVsLmNvbT47IEFuYW5kLCBWaXBpbgo+ID4gPHZpcGluLmFuYW5k
QGludGVsLmNvbT4KPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjUgMC8zXSBk
cm0vaTkxNTogQ29udGV4dCBhd2FyZSB1c2VyIGFnbm9zdGljCj4gPiBFVS9TbGljZS9TdWItc2xp
Y2UgY29udHJvbCB3aXRoaW4ga2VybmVsCj4gPiAKPiA+IFF1b3RpbmcgQW5raXQgTmF2aWsgKDIw
MTktMTEtMjUgMDY6Mzk6MDIpCj4gPiA+IFRoaXMgcGF0Y2ggc2V0cyBpbXByb3ZlcyBHUFUgcG93
ZXIgY29uc3VtcHRpb24gb24gTGludXgga2VybmVsIGJhc2VkCj4gPiA+IE9TIHN1Y2ggYXMgQ2hy
b21pdW0gT1MsIFVidW50dSwgZXRjLiBGb2xsb3dpbmcgYXJlIHRoZSBwb3dlciBzYXZpbmdzLgo+
ID4gCj4gPiBUaGUgY29kZSBpcyBzdGlsbCBhcyBicm9rZW4gYXMgaXQgd2FzIHdoZW4gaXQgd2Fz
IGxhc3QgcG9zdGVkLgo+IAo+IEkgc2F3LCBDSSBpcyBmYWlsZWQuIExldCBtZSByZWJhc2UgYWdh
aW4uIAo+IEl0IHdvcmtzIGF0IG15IGVuZCBvbiA1LjQuMC1yYzIrLiAKClRoZSBsYXN0IHJldmll
dyBwb2ludGVkIG91dCBzZXZlcmFsIGZ1bmRhbWVudGFsIGRlc2lnbiBtaXN0YWtlcyB0aGF0Cm5l
ZWQgdG8gYmUgYWRkcmVzc2VkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
