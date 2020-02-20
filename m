Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41521661EB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378256EDC5;
	Thu, 20 Feb 2020 16:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CF76EDC3;
 Thu, 20 Feb 2020 16:10:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20290654-1500050 for multiple; Thu, 20 Feb 2020 16:10:19 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158221495468.8112.473694413094253324@skylake-alporthouse-com>
References: <20200220153203.29571-1-janusz.krzysztofik@linux.intel.com>
 <158221495468.8112.473694413094253324@skylake-alporthouse-com>
Message-ID: <158221501725.28524.13379236691342209554@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Feb 2020 16:10:17 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] lib/i915: Restrict mmap types to
 GTT if no MMAP_OFFSET support
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDItMjAgMTY6MDk6MTQpCj4gUXVvdGluZyBKYW51
c3ogS3J6eXN6dG9maWsgKDIwMjAtMDItMjAgMTU6MzI6MDMpCj4gPiBDb21taXQgYjBkYThiYjcw
NWMwICgibGliL2k5MTU6IGZvcl9lYWNoX21tYXBfb2Zmc2V0X3R5cGUoKSIpCj4gPiBpbnRyb2R1
Y2VkIGEgbWFjcm8gdGhhdCBtYWtlcyBpdCBlYXN5IHRvIHJlcGVhdCBhIHRlc3QgYm9keSB3aXRo
aW4gYQo+ID4gbG9vcCBmb3IgZWFjaCBtbWFwLW9mZnNldCBtYXBwaW5nIHR5cGUgc3VwcG9ydGVk
IGJ5IHY0IG9mIGk5MTUgTU1BUF9HVFQKPiA+IEFQSS4gSG93ZXZlciwgd2hlbiBydW4gb24gYW4g
b2xkZXIgdmVyc2lvbiBvZiB0aGUgZHJpdmVyLCB0aG9zZQo+ID4gc3VidGVzdHMgYXJlIGJlbGll
dmVkIHRvIGJlIHN0aWxsIHJlcGVhdGVkIGZvciBlYWNoIGtub3duIG1tYXAtb2Zmc2V0Cj4gPiBt
YXBwaW5nIHR5cGUgd2hpbGUgZWZmZWN0aXZlbHkgZXhlcmNpc2luZyBHVFQgbWFwcGluZyB0eXBl
IG9ubHkuICBBcwo+ID4gdGhhdCBtYXkgYmUgY29uZnVzaW5nLCBmaXggaXQuCj4gPiAKPiA+IEl0
IGhhcyBiZWVuIGFzc3VtZWQgdGhhdCB0aGUgbW9kaWZpZWQgbWFjcm8gaXMgc3RpbGwgc3VpdGFi
bGUgZm9yIHVzZQo+ID4gaW5zaWRlIGdlbV9tbWFwX29mZnNldCB0ZXN0IGl0c2VsZi4gIFdvdWxk
IHRoYXQgbm90IGJlIGNhc2UsCj4gPiBnZW1fbW1hcF9vZmZzZXQgY291bGQgcmVkZWZpbmUgdGhl
IG1hY3JvIGJhY2sgdG8gaXRzIGluaXRpYWwgZm9ybSBmb3IKPiA+IGludGVybmFsIHVzZS4KPiA+
IAo+ID4gU3VnZ2VzdGVkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBp
bnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICBsaWIvaTkxNS9nZW1fbW1hbi5oICAgICAg
ICAgIHwgIDUgKysrLS0KPiA+ICB0ZXN0cy9pOTE1L2dlbV9jdHhfc3NldS5jICAgIHwgIDIgKy0K
PiA+ICB0ZXN0cy9pOTE1L2dlbV9leGVjX3BhcmFtcy5jIHwgIDIgKy0KPiA+ICB0ZXN0cy9pOTE1
L2dlbV9tYWR2aXNlLmMgICAgIHwgMTggKysrKysrKysrKysrKystLS0tCj4gPiAgdGVzdHMvaTkx
NS9nZW1fbW1hcF9vZmZzZXQuYyB8IDEwICsrKysrLS0tLS0KPiA+ICB0ZXN0cy9pOTE1L2k5MTVf
cG1fcnBtLmMgICAgIHwgIDIgKy0KPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX21t
YW4uaCBiL2xpYi9pOTE1L2dlbV9tbWFuLmgKPiA+IGluZGV4IDRmYzZhMDE4Ni4uNDkxNzY3MDIz
IDEwMDY0NAo+ID4gLS0tIGEvbGliL2k5MTUvZ2VtX21tYW4uaAo+ID4gKysrIGIvbGliL2k5MTUv
Z2VtX21tYW4uaAo+ID4gQEAgLTEwMSw5ICsxMDEsMTAgQEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBt
bWFwX29mZnNldCB7Cj4gPiAgICAgICAgIHVuc2lnbmVkIGludCBkb21haW47Cj4gPiAgfSBtbWFw
X29mZnNldF90eXBlc1tdOwo+ID4gIAo+ID4gLSNkZWZpbmUgZm9yX2VhY2hfbW1hcF9vZmZzZXRf
dHlwZShfX3QpIFwKPiA+ICsjZGVmaW5lIGZvcl9lYWNoX21tYXBfb2Zmc2V0X3R5cGUoZmQsIF9f
dCkgXAo+ID4gICAgICAgICBmb3IgKGNvbnN0IHN0cnVjdCBtbWFwX29mZnNldCAqX190ID0gbW1h
cF9vZmZzZXRfdHlwZXM7IFwKPiA+IC0gICAgICAgICAgICAoX190KS0+bmFtZTsgXAo+ID4gKyAg
ICAgICAgICAgIChfX3QpLT5uYW1lICYmIChnZW1faGFzX21tYXBfb2Zmc2V0KGZkKSB8fCBcCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIChfX3QpLT50eXBlID09IEk5MTVfTU1BUF9P
RkZTRVRfR1RUKTsgXAo+IAo+IFNpZ2guCj4gCj4gZXh0ZXJuIGJvb2wgZ2VtX2hhc19tbWFwX29m
ZnNldF90eXBlKGludCBpOTE1LCBjb25zdCBzdHJ1Y3QgbW1hcF9vZmZzZXQgKnQpOwo+IAo+ICYm
IGdlbV9oYXNfbW1hcF9vZmZzZXRfdHlwZShmZCwgdCkKClNvcnJ5LCBtYWtlIHRoYXQKCglmb3Jf
ZWFjaF9pZihnZW1faGFzX21tYXBfb2Zmc2V0X3R5cGUoaTkxNSwgdCkpCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
