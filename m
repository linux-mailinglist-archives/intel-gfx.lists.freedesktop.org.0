Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ECE431A1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 00:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A58388FA8;
	Wed, 12 Jun 2019 22:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B8B89265
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 22:24:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16882204-1500050 for multiple; Wed, 12 Jun 2019 23:24:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
Message-ID: <156037827065.10298.7641905618266319260@skylake-alporthouse-com>
Date: Wed, 12 Jun 2019 23:24:30 +0100
Subject: Re: [Intel-gfx] [PATCH v2 0/8] RPM Encapsulation
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTEyIDE5OjM3OjM5KQo+IFJl
YmFzZWQgc2VyaWVzIGFmdGVyIHRoZSBkaXNwbGF5IHBvd2VyIGNvZGUgaGFzIGJlZW4gc3BsaXQg
b3V0Lgo+IE1vc3RseSB0aGUgc2FtZSBhcyBWMSwganVzdCBzbWFsbCBmaXhlcyBiYXNlZCBvbiBy
ZXZpZXcgY29tbWVudHMKPiBhbmQgQ0kgcmVzdWx0cy4gVGhlIGxhc3QgcGF0Y2ggaXMgbmV3Lgo+
IAo+IFRoZSBzZXJpZXMgZ3Jvd3MgdGhlIGNvZGUgYSBiaXQsIGJ1dCBJIGJlbGlldmUgaXQgaXMg
d29ydGggaXQgZm9yIHRoZQo+IGV4dHJhIGxvZ2ljYWwgZW5jYXBzdWxhdGlvbi4gV2l0aCBhbGwg
ZGVidWcgb3B0aW9ucyBkaXNhYmxlZDoKPiAKPiBhZGQvcmVtb3ZlOiAwLzAgZ3Jvdy9zaHJpbms6
IDkyLzE0IHVwL2Rvd246IDEyMjUvLTE2MiAoMTA2MykKPiBUb3RhbDogQmVmb3JlPTEyNjY4OTMs
IEFmdGVyPTEyNjc5NTYsIGNoZyArMC4wOCUKPiAKPiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICg4
KToKPiAgIGRybS9pOTE1OiBwcmVmZXIgaTkxNV9ydW50aW1lX3BtIGluIGludGVsX3J1bnRpbWUg
ZnVuY3Rpb24KPiAgIGRybS9pOTE1OiBSZW1vdmUgcnBtIGFzc2VydHMgdGhhdCB1c2UgaTkxNQo+
ICAgZHJtL2k5MTU6IG1ha2UgZW5hYmxlL2Rpc2FibGUgcnBtIGFzc2VydCBmdW5jdGlvbiB1c2Ug
dGhlIHJwbQo+ICAgICBzdHJ1Y3R1cmUKPiAgIGRybS9pOTE1OiBtb3ZlIGFuZCByZW5hbWUgaTkx
NV9ydW50aW1lX3BtCj4gICBkcm0vaTkxNTogbW92ZSBhIGZldyBtb3JlIGZ1bmN0aW9ucyB0byBh
Y2NlcHQgdGhlIHJwbSBzdHJ1Y3R1cmUKPiAgIGRybS9pOTE1OiB1cGRhdGUgcnBtX2dldC9wdXQg
dG8gdXNlIHRoZSBycG0gc3RydWN0dXJlCj4gICBkcm0vaTkxNTogdXBkYXRlIHdpdGhfaW50ZWxf
cnVudGltZV9wbSB0byB1c2UgdGhlIHJwbSBzdHJ1Y3R1cmUKPiAgIGRybS9pOTE1OiBtYWtlIGlu
dGVsX3dha2VyZWYgd29yayBvbiB0aGUgcnBtIHN0cnVjdAoKTG9va3MgZmluZS4gSSBjYW4ndCB0
aGluayBvZiBhbnkgbmVhdCB3YXkgdG8gYXZvaWQgdGhlIGV4dHJhIG9mZnNldHMsIHNvCndlJ2xs
IGp1c3QgaGF2ZSB0byB0aGluayBvZiBhIGJldHRlciB3YXkgb2YgZGl2aWRpbmcgdXAgdGhlIGRy
aXZlciB0bwphdm9pZCBsb2FkaW5nIHVubmVlZGVkIGNvZGUuCgpQcmVlbXB0aXZlIFJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4Kb24gdGhlIHNlcmll
cyBhcyBub3RoaW5nIGxlYXB0IG91dCBhdCBtZSBmcm9tIHRoZSBtZWNoYW5pY2FsIGNodXJuLiAK
UGxlYXNlIGNjIEltcmUgb24gdGhlIHJlYmFzZSBpbiBjYXNlIGhlIGhhcyBhIGdvb2QgcmVhc29u
IHRvIHJlc3RydWN0dXJlCml0IGRpZmZlcmVudGx5LgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
