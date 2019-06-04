Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3BC33F90
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 09:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E8989581;
	Tue,  4 Jun 2019 07:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D62789581
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 07:13:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 00:13:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,549,1549958400"; d="scan'208";a="181436868"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2019 00:13:05 -0700
Date: Tue, 4 Jun 2019 10:12:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190604071222.GA23036@ideak-desk.fi.intel.com>
References: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
 <155937872123.22493.3618519792490340553@skylake-alporthouse-com>
 <874l56o6fk.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874l56o6fk.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDk6NDM6NTlQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gU2F0LCAwMSBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+IHdyb3RlOgo+ID4gUXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5
LTA1LTMxIDIzOjI0OjA3KQo+ID4+IFNlcGFyYXRlIHRoZSBkaXNwbGF5IFBNIGZyb20gdGhlIFBD
SS1sZXZlbCBydW50aW1lIFBNLgo+ID4+IEknbGwgZm9sbG93IHRoaXMgdXAgd2l0aCB2MiBvZiB0
aGUgcnBtIGVuY2Fwc3VsYXRpb24gc2VyaWVzIFsxXSwgYnV0Cj4gPj4gSSdkIGxpa2UgdG8gZ2V0
IHRoaXMgaW4gYmVmb3JlIHRoYXQgdG8gYXZvaWQgaGF2aW5nIHRvIGNhcnJ5IHRoaXMKPiA+PiBi
aWcgZHVtYiBkaWZmIGluIHRoYXQgc2VyaWVzLgo+ID4KPiA+IFdpdGggUlVOVElNRV9QTV9ERUJV
RyBkaXNhYmxlZCwKPiA+Cj4gPiBhZGQvcmVtb3ZlOiAzLzEgZ3Jvdy9zaHJpbms6IDYvOCB1cC9k
b3duOiAzOTYvLTM5MyAoMykKPiA+IEZ1bmN0aW9uICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG9sZCAgICAgbmV3ICAgZGVsdGEKPiA+IGludGVsX3J1bnRpbWVfcG1fcmVsZWFz
ZSAgICAgICAgICAgICAgICAgICAgICAgLSAgICAgMjc0ICAgICsyNzQKPiA+IGludGVsX3J1bnRp
bWVfcG1fcHV0X3JhdyAgICAgICAgICAgICAgICAgICAgICAgLSAgICAgIDQ1ICAgICArNDUKPiA+
IGludGVsX3J1bnRpbWVfcG1fcHV0X3VuY2hlY2tlZCAgICAgICAgICAgICAgICAxMCAgICAgIDQ4
ICAgICArMzgKPiA+IGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jX3dvcmsgICAgICAgICAg
IDE3OSAgICAgMTkyICAgICArMTMKPiA+IGludGVsX2Rpc3BsYXlfcG93ZXJfZmx1c2hfd29yayAg
ICAgICAgICAgICAgIDExNyAgICAgMTI2ICAgICAgKzkKPiA+IF9faW50ZWxfZGlzcGxheV9wb3dl
cl9wdXRfYXN5bmMgICAgICAgICAgICAgIDE5MyAgICAgMTk5ICAgICAgKzYKPiA+IGludGVsX3J1
bnRpbWVfcG1fZ2V0X3JhdyAgICAgICAgICAgICAgICAgICAgICAgLSAgICAgICA0ICAgICAgKzQK
PiA+IGludGVsX2Rpc3BsYXlfcG93ZXJfZ3JhYl9hc3luY19wdXRfcmVmICAgICAgIDExNyAgICAg
MTIxICAgICAgKzQKPiA+IF9fd2FybmVkICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDQ2OSAgICAgNDcyICAgICAgKzMKPiA+IGludGVsX3J1bnRpbWVfcG1fZ2V0ICAgICAgICAg
ICAgICAgICAgICAgICAgICAxMCAgICAgICA3ICAgICAgLTMKPiA+IGludGVsX3Bvd2VyX2RvbWFp
bnNfZW5hYmxlICAgICAgICAgICAgICAgICAgICAzOCAgICAgIDMzICAgICAgLTUKPiA+IGludGVs
X2Rpc3BsYXlfcG93ZXJfcHV0X3VuY2hlY2tlZCAgICAgICAgICAgICAyMyAgICAgIDE4ICAgICAg
LTUKPiA+IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0X2lmX2VuYWJsZWQgICAgICAgICAgIDE0MyAg
ICAgMTM4ICAgICAgLTUKPiA+IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0ICAgICAgICAgICAgICAg
ICAgICAgICA4NCAgICAgIDc5ICAgICAgLTUKPiA+IGludGVsX3Bvd2VyX2RvbWFpbnNfc3VzcGVu
ZCAgICAgICAgICAgICAgICAgIDQ5MCAgICAgNDgwICAgICAtMTAKPiA+IGludGVsX3Bvd2VyX2Rv
bWFpbnNfZmluaV9odyAgICAgICAgICAgICAgICAgIDExNiAgICAgMTA2ICAgICAtMTAKPiA+IHJl
bGVhc2VfYXN5bmNfcHV0X2RvbWFpbnMgICAgICAgICAgICAgICAgICAgIDIyMCAgICAgMjAzICAg
ICAtMTcKPiA+IF9faW50ZWxfcnVudGltZV9wbV9wdXQuY29uc3Rwcm9wICAgICAgICAgICAgIDMz
MyAgICAgICAtICAgIC0zMzMKPiA+IFRvdGFsOiBCZWZvcmU9MjMzOTQzODgsIEFmdGVyPTIzMzk0
MzkxLCBjaGcgKzAuMDAlCj4gPgo+ID4gd2hpY2ggaXMgbXkgYmlnZ2VzdCB3b3JyeSB3aGVuIG1l
ZGRsaW5nIHdpdGggdGhlc2UsIHRoYXQgd2UgYWNjaWRlbnRhbGx5Cj4gPiBleHBsb2RlIHByb2R1
Y3Rpb24gY29kZSB3aXRoIHVudXNlZCBkZWJ1Z2dpbmcgKGFsbCB0aG9zZSB3YWtlcmVmcykuCj4g
Pgo+ID4gTGd0bSwgSSB3b3VsZCBsaWtlIEphbmkgdG8gaW5kaWNhdGUgdGhhdCBoZSdzIGhhcHB5
IHdpdGggdGhpcyBzcGxpdCBhcwo+ID4gd2VsbCBzaW5jZSBoZSBoYXMgYmVlbiBsb29raW5nIGF0
IHZlcnkgc2ltaWxhciBpZGVhcy4KPiAKPiBJIG1pZ2h0IGJpa2VzaGVkIHRoZSBuYW1pbmcsIGZy
b20gdGhlIFBPViB0aGF0IGZ1bmN0aW9ucyB3b3VsZCBiZSBuaWNlCj4gdG8gYmUgKGV2ZW50dWFs
bHkpIG5hbWVkIGJhc2VkIG9uIHRoZSBuYW1lIG9mIHRoZSBmaWxlIHRoZXkgcmVzaWRlCj4gaW4u
IEJ1dCBJIGd1ZXNzIGludGVsX2Rpc3BsYXlfcG93ZXIuW2NoXSBpcyBhcyBnb29kIGFzIGFueSBJ
IGNvdWxkIGNvbWUKPiB1cCB3aXRoLCBhbmQgbm90IGV2ZXJ5dGhpbmcgaXMgZ29pbmcgdG8gZm9s
bG93IHRoZSBuYW1pbmcgcGF0dGVybgo+IGFueXdheS4KPiAKPiBJJ2Qgc3RpbGwgbGlrZSB0byBn
ZXQgYW4gYWNrIGZyb20gSW1yZSBiZWZvcmUgbWVyZ2luZywgYnV0IGZyb20gbXkgc2lkZQo+IHRo
aXMgaXMsCj4gCj4gQWNrZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4gCj4gVGhhbmtzIGZvciBkb2luZyB0aGlzLgoKS2VlcGluZyB0aGUgZGlzcGxheSBwb3dlciBy
ZWxhdGVkIGZ1bmN0aW9ucyBncm91cGVkIGluIGEgc2VwYXJhdGUgZmlsZQptYWtlcyBzZW5zZSB0
byBtZToKCkFja2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cgo+IAo+IAo+
IAo+ID4gLUNocmlzCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLSAKPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
