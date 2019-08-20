Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A35A895D09
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 13:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C9B6E791;
	Tue, 20 Aug 2019 11:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EEC6E791
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 11:16:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18200857-1500050 for multiple; Tue, 20 Aug 2019 12:16:39 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
Message-ID: <156629979673.1374.16325552128887063124@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 12:16:36 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIwIDAzOjAxOjQ3KQo+IFdp
dGggdGhlIGludHJvZHVjdGlvbiBvZiBkaXNwbGF5IHVuY29yZSwgd2Ugd2FudCB0byBjYXRlZ29y
aXplIHJlZ2lzdGVycwo+IGJldHdlZW4gZGlzcGxheSBhbmQgbm9uLWRpc3BsYXkuIFRvIGhlbHAg
dXMgZ2V0dGluZyBpdCByaWdodCwgaXQgd2lsbAo+IGJlIHVzZWZ1bCB0byBtb3ZlIHRoZSBkaXNw
bGF5IHJlZ2lzdGVycyB0byBhIG5ldyBmaWxlIHRoYXQgY2FuIGJlIHVzZWQKPiB3aXRob3V0IGlu
Y2x1ZGluZyBpOTE1X3JlZy5oLiBUbyBhbGxvdyB0aGF0LCBtb3ZlIGFsbCB0aGUgYmFzaWMgcmVn
aXN0ZXIKPiB0eXBlIGRlZmluaXRpb25zIGFuZCBoZWxwZXJzIHRvIGludGVsX3JlZ190eXBlcy5o
IGFuZCBpbmNsdWRlIHRoYXQKPiBpbnN0ZWFkIG9mIGk5MTVfcmVnLmggZnJvbSBoZWFkZXIgZmls
ZXMgaW4gdGhlIGRyaXZlci4gV2UnbGwgdGhlbgo+IGJlIGFibGUgdG8gcmVwbGFjZSBpOTE1X3Jl
Zy5oIHdpdGggdGhlIG5ldyBkaXNwbGF5LW9ubHkgaGVhZGVyIGluCj4gZGlzcGxheSBmaWxlcyBh
bmQgbWFrZSBzdXJlIHRoZSByZWdpc3RlcnMgYXJlIGNvcnJlY3RseQo+IGNvbXBhcnRtZW50YWxp
emVkLgo+IAo+IFdoaWxlIGF0IGl0LCByZW5hbWUgaTkxNV9yZWcuaCB0byBpbnRlbF9yZWcuaCB0
byBiZXR0ZXIgaW5kaWNhdGUgdGhhdCBpdAo+IGNvbnRhaW5zIEhXIGRlZnMuCj4gCj4gdjI6IHVz
ZSBpbnRlbF8qIHByZWZpeCBmb3IgcmVnaXN0ZXIgZmlsZXMgKE1pY2hhbCkKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpBZnRlciBzb21lIG11bGxpbmcsIGlu
dGVsX1tzdWJzeXNdX3JlZy5oICYgaW50ZWxfcmVnX3R5cGVzLmggd29ya2Zvcm1lLApSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
