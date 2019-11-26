Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CCA109E2C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 13:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3193A6E0A5;
	Tue, 26 Nov 2019 12:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45B26E0A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 12:42:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 04:42:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202707534"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 04:42:16 -0800
Date: Tue, 26 Nov 2019 14:42:12 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191126124212.GC24821@ideak-desk.fi.intel.com>
References: <20191126100435.2636304-1-chris@chris-wilson.co.uk>
 <20191126122248.GB24821@ideak-desk.fi.intel.com>
 <157477153317.15944.4588211247192502626@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157477153317.15944.4588211247192502626@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Manual rc6 entry upon parking
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

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTI6MzI6MTNQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgSW1yZSBEZWFrICgyMDE5LTExLTI2IDEyOjIyOjQ4KQo+ID4gSGksCj4g
PiAKPiA+IE9uIFR1ZSwgTm92IDI2LCAyMDE5IGF0IDEwOjA0OjM1QU0gKzAwMDAsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+ID4gTm93IHRoYXQgd2UgcmFwaWRseSBwYXJrIHRoZSBHVCB3aGVuIHRo
ZSBHUFUgaWRsZXMsIHdlIG9mdGVuIGZpbmQKPiA+ID4gb3Vyc2VsdmVzIGlkbGluZyBmYXN0ZXIg
dGhhbiB0aGUgUkM2IHByb21vdGlvbiB0aW1lci4gVGh1cyBpZiB3ZSB0ZWxsCj4gPiA+IHRoZSBH
UFUgdG8gZW50ZXIgUkM2IG1hbnVhbGx5IGFzIHdlIHBhcmssIHdlIGNhbiBkbyBzbyBxdWlja2Vy
IChieQo+ID4gPiBhcm91bmQgNTBtcywgaGFsZiBhbiBFSSBvbiBhdmVyYWdlKSBhbmQgbWFyZ2lu
YWxseSBpbmNyZWFzZSBvdXIKPiA+ID4gcG93ZXJzYXZpbmcgYWNyb3NzIGFsbCBleGVjbGlzdHMg
cGxhdGZvcm1zLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGlu
dGVsLmNvbT4KPiA+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgo+ID4gPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gCj4g
PiBMb29rcyBvazoKPiA+IEFja2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
Cj4gPiAKPiA+IERvZXMgaW50ZWxfcmM2X3BhcmsoKSB3b3JrIG9uIFZMVi9DSFYgdG9vPyBJIGNh
bid0IHNlZSBhdCBsZWFzdCB0aGF0Cj4gPiB3ZSdkIGVuYWJsZSBSQzYgb24gdGhvc2Ugd2l0aCBH
RU42X1JDX0NUTF9SQzZfRU5BQkxFLgo+IAo+IEkgaGF2ZSBub3QgeWV0IG9ic2VydmVkIGFueSBp
bGwgZWZmZWN0cywgYnV0IEkgYWxzbyBoYXZlbid0IGNvbXBsZXRlZCBhCj4gcG0gcnVuIG9uIGJz
dy9ieXQsIHNvIEkgY2FuIG5vdCBzYXkgaWYgaXQncyBzaW1wbHkgaWdub3JlZCBieSB0aGUgUENV
Lgo+IAo+IEknbGwgZG8gYSBzZWxmdGVzdCB0byBjb25maXJtIHRoYXQgYnkgZGlzYWJsaW5nIHRo
ZSBIVyB0aW1lciBhbmQgc2V0dGluZwo+IHRob3NlIGJpdHMsIHdlIGRvIGVudGVyIHJjNiAoYW5k
IHZpY2UgdmVyc2Egb24gcmV0dXJuaW5nIGNvbnRyb2wgdG8gSFcpLgoKT2ssIEkgdHJ5IHRvIGZp
bmQgdGhlIGRvY3MgZm9yIHRoaXMgdG9vLgoKPiAgCj4gPiBBbHNvIHdoYXQgaXMgdGhlIHZhbHVl
IHdyaXR0ZW4gdG8gR0VONl9SQ19TVEFURT8gSXMgaXQgb2sgdG8gdXNlIHRoZQo+ID4gc2FtZSB2
YWx1ZSBhZnRlciB1bnBhcmsoKT8KPiAKPiBNYWdpYyA6KQo+IAo+IEFpdWkgKGJhc2VkIG1vc3Rs
eSBvbiBteSBvd24gaHlwb3RoZXNpcyBhbmQgd2F0Y2hpbmcgdGhlIEhXKSBpdCBhY3RzIGxpa2UK
PiBhIHJlcXVlc3QgYW5kIHdpbGwgYmUgd3JpdHRlbiBvdmVyIGJ5IHRoZSBIVyBhdCB0aGUgZW5k
IG9mIGl0cyBFSSAob3IKPiB3aGVuZXZlciBleGFjdGx5IGl0IGRlY2lkZXMgb24gd2hhdCBtb2Rl
IHRvIGJlIGluKS4gU28gYXMgd2UgZW5hYmxlIHRoZQo+IEhXIHRpbWVycywgd2UgbG9zZSBvd25l
cnNoaXAgb2YgdGhhdCBmaWVsZCBhbmQgY29udHJvbCBvdmVyIHdoZW4gdG8KPiBlbnRlciByYzYu
CgpPa2F5LCBhbmQgdGhlbiBJIHN1cHBvc2UgdGhlIHZhbHVlIHdyaXR0ZW4gaXMgbmVlZGVkIHRv
IGltbWVkaWF0ZWx5CmVudGVyIFJDNi4KCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
