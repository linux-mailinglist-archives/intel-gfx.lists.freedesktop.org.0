Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B508ADD154
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 23:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AB989B11;
	Fri, 18 Oct 2019 21:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B033D89B11
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 21:43:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18887516-1500050 for multiple; Fri, 18 Oct 2019 22:42:52 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z9u41odsxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
 <op.z9u41odsxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <157143497001.10963.8188866285185437111@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 18 Oct 2019 22:42:50 +0100
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Restore full symmetry in
 i915_driver_modeset_probe/remove
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTEwLTE4IDE2OjUyOjI2KQo+IE9uIEZyaSwg
MTggT2N0IDIwMTkgMTI6MDc6MTAgKzAyMDAsIEphbnVzeiBLcnp5c3p0b2ZpayAgCj4gPGphbnVz
ei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+IAo+ID4gQ29tbWl0IDJkNmY2
ZjM1OWZkOCAoImRybS9pOTE1OiBhZGQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoKSIpCj4g
PiBjbGFpbWVkIHJlbW92YWwgb2YgYXN5bW1ldHJ5IGluIHByb2JlKCkgYW5kIHJlbW92ZSgpIGNh
bGxzLCBob3dldmVyLCBpdAo+ID4gZGlkbid0IHRha2UgY2FyZSBvZiBjYWxsaW5nIGludGVsX2ly
cV91bmluc3RhbGwoKSBvbiBkcml2ZXIgcmVtb3ZlLgo+ID4gVGhhdCBkb2Vzbid0IGh1cnQgYXMg
bG9uZyBhcyB3ZSBzdGlsbCBjYWxsIGl0IGZyb20KPiA+IGludGVsX21vZGVzZXRfZHJpdmVyX3Jl
bW92ZSgpIGJ1dCBpbiBvcmRlciB0byBoYXZlIGZ1bGwgc3ltbWV0cnkgd2UKPiA+IHNob3VsZCBj
YWxsIGl0IGFnYWluIGZyb20gaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoKS4KPiA+Cj4gPiBO
b3RlIHRoYXQgaXQncyBzYWZlIHRvIGNhbGwgaW50ZWxfaXJxX3VuaW5zdGFsbCgpIHR3aWNlIHRo
YW5rcyB0bwo+ID4gY29tbWl0IGIzMThiODI0NTViZCAoImRybS9pOTE1OiBOdWtlIGRybV9kcml2
ZXIgaXJxIHZmdW5jcyIpLiAgV2UgbWF5Cj4gPiBvbmx5IHdhbnQgdG8gbWVudGlvbiB0aGUgY2Fz
ZSB3ZSBhcmUgYWRkaW5nIGluIGEgcmVsYXRlZCBGSVhNRSBjb21tZW50Cj4gPiBwcm92aWRlZCBi
eSB0aGF0IGNvbW1pdC4gIFdoaWxlIGJlaW5nIGF0IGl0LCB1cGRhdGUgdGhlIG5hbWUgb2YKPiA+
IGZ1bmN0aW9uIG1lbnRpb25lZCBhcyBjYWxsaW5nIGl0IG91dCBvZiBzZXF1ZW5jZSBhcyB0aGF0
IG5hbWUgaGFzIGJlZW4KPiA+IGNoYW5nZWQgbWVhbndoaWxlIGJ5IGNvbW1pdCA3OGRhZTFhYzM1
ZGQgKCJkcm0vaTkxNTogUHJvcGFnYXRlCj4gPiAiX3JlbW92ZSIgZnVuY3Rpb24gbmFtZSBzdWZm
aXggZG93biIpLgo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9m
aWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogTWljaGFsIFdh
amRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gPiAtLS0KPiAKPiBSZXZpZXdl
ZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gYnV0
IHBsZWFzZSBzZWUgYmVsb3cKPiAKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
IHwgMiArKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA4ICsrKystLS0t
Cj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgIAo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiBpbmRleCBkZDk2MTNlNDU3MjMu
LjRhZTliZmE5NjI5MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+IEBAIC00
NTIsNiArNDUyLDggQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoc3Ry
dWN0ICAKPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgICAgICBpbnRlbF9tb2Rlc2V0
X2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gPiArICAgICBpbnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUp
Owo+ID4gKwo+ID4gICAgICAgaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+IAo+IEkn
bSB3b25kZXJpbmcgaWYgdGhpcyBpcyBhIGdvb2QgbG9jYXRpb24gZm9yIHRoaXMgY2FsbCBhcyBp
bgo+IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoKSB3ZSBjYWxsIGl0IGJlZm9yZSBpbnRlbF92
Z2FfcmVnaXN0ZXIoKQo+IHNvIGxpa2VseSBjbGVhbnVwIHNob3VsZCBiZSBkb25lIGFmdGVyIGlu
dGVsX3ZnYV91bnJlZ2lzdGVyKCkKCkkgdGhvdWdodCB5b3Ugd2VyZSBjb21wbGFpbmluZyBhYm91
dCB0aGUgcG9zaXRpb25pbmcgb2YKaW50ZWxfaXJxX3VuaW5zdGFsbCwgYnV0IHlvdSBkbyBtZWFu
IHRoZSBvcmRlcmluZyBvZiBpbnRlbF9iaW9zXyogdnMKaW50ZWxfdmdhXyouCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
