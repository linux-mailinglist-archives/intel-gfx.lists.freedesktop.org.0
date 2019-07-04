Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CA95FB4F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 17:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C4C6E35F;
	Thu,  4 Jul 2019 15:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276BD6E362
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 15:59:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17131573-1500050 for multiple; Thu, 04 Jul 2019 16:59:06 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z4cru1xwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190703113640.31100-1-michal.wajdeczko@intel.com>
 <20190703113640.31100-2-michal.wajdeczko@intel.com>
 <156215400635.20783.16587348502567240067@skylake-alporthouse-com>
 <op.z4cru1xwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156225594438.25091.4340737278209952511@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 04 Jul 2019 16:59:04 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTAzIDE0OjAyOjUxKQo+IE9uIFdlZCwg
MDMgSnVsIDIwMTkgMTM6NDA6MDYgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDctMDMgMTI6MzY6NDApCj4gPj4gR3VDIGZpcm13YXJlIGlzIG5vdyBtYXR1cmUsIHNvIGxl
dCBpdCBydW4gYnkgZGVmYXVsdC4KPiA+PiBOb3RlIHRoYXQgdG9kYXkgR3VDIGlzIG9ubHkgdXNl
ZCBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uLgo+ID4KPiA+IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDYxNyA/Cj4gCj4gQWJvdmUgYnVnIHdhcyBmb3VuZCBv
biBzdXNwaWNpb3VzIGtlcm5lbCB3aXRoIG9sZCBHdUMgOS4zOToKPiAKPiBbICAgIDIuMzgxODAz
XSBbZHJtXSBIdUM6IExvYWRlZCBmaXJtd2FyZSBpOTE1L2tibF9odWNfdmVyMDJfMDBfMTgxMC5i
aW4gIAo+ICh2ZXJzaW9uIDIuMCkKPiBbICAgIDIuMzg2MzE2XSBbZHJtXSBHdUM6IExvYWRlZCBm
aXJtd2FyZSBpOTE1L2tibF9ndWNfdmVyOV8zOS5iaW4gIAo+ICh2ZXJzaW9uIDkuMzkpCj4gWyAg
ICAyLjQzODMxOF0gW2RybTppbnRlbF9odWNfYXV0aF0gKkVSUk9SKiBIdUM6IEZpcm13YXJlIG5v
dCB2ZXJpZmllZCAgCj4gMHg2MDAwCj4gWyAgICAyLjQ0NTIzNV0gW2RybTppbnRlbF9odWNfYXV0
aF0gKkVSUk9SKiBIdUM6IEF1dGhlbnRpY2F0aW9uIGZhaWxlZCAtMTEwCj4gWyAgICAyLjQ1MTk3
NV0gaTkxNSAwMDAwOjAwOjAyLjA6IEd1QyBpbml0aWFsaXphdGlvbiBmYWlsZWQgLTExMAo+IAo+
IHdoaWxlIHJlc3VsdHMgZnJvbSB0cnktYm90IFsxXSB3aXRoIDMzLjAuMCBvbiBLQkwgYXJlIGxv
b2tpbmcgZmluZToKPiAKPiBbICAgIDMuODU0MDg0XSBbZHJtXSBIdUM6IExvYWRlZCBmaXJtd2Fy
ZSBpOTE1L2tibF9odWNfdmVyMDJfMDBfMTgxMC5iaW4gIAo+ICh2ZXJzaW9uIDIuMCkKPiBbICAg
IDMuODY1NDE5XSBbZHJtXSBHdUM6IExvYWRlZCBmaXJtd2FyZSBpOTE1L2tibF9ndWNfMzMuMC4w
LmJpbiAodmVyc2lvbiAgCj4gMzMuMCkKPiBbICAgIDMuODc2MjQzXSBpOTE1IDAwMDA6MDA6MDIu
MDogR3VDIHN1Ym1pc3Npb24gZGlzYWJsZWQKPiBbICAgIDMuODc2MjQ1XSBpOTE1IDAwMDA6MDA6
MDIuMDogSHVDIGVuYWJsZWQKPiAKPiBOb3RlIHRoYXQgbmV3ZXIgR3VDIGZpeGVzIG90aGVyIGtu
b3duIGlzc3VlIFsyXSB0aGF0IGhhcyBzaW1pbGFyIHNpZ25hdHVyZToKPiAKPiBbMTYwLjE2ODYy
M10gW2RybTppbnRlbF9odWNfYXV0aCBbaTkxNV1dICpFUlJPUiogSHVDOiBGaXJtd2FyZSBub3Qg
IAo+IHZlcmlmaWVkIC0xMTAKPiBbMTYwLjE2ODgzOV0gW2RybTppbnRlbF9odWNfYXV0aCBbaTkx
NV1dICpFUlJPUiogSHVDOiBBdXRoZW50aWNhdGlvbiAgCj4gZmFpbGVkIC0xMTAKPiBbMTYwLjE2
OTE1OV0gW2RybTppOTE1X2dlbV9pbml0X2h3IFtpOTE1XV0gKkVSUk9SKiBFbmFibGluZyB1YyBm
YWlsZWQgIAo+ICgtMTEwKQoKUHVzaGVkIHRoZSBzd2l0Y2ggdG8gdGhlIG5ldyBHdUMgdmVyc2lv
biwgYnV0IEkgYW0gZGVmZXJyaW5nIHRoZQpkZWNpc2lvbiB0byBlbmFibGUtYnktZGVmYXVsdCB0
byBzb21lb25lIGluIE1BSU5UQUlORVJTLiBQcm9iYWJseSBKb29uYXMKaWYgaGUgc3Vydml2ZXMg
aGlzIHN3aW0gd2l0aCB0aGUgZmlzaGVzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
