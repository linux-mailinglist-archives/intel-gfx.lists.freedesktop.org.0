Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A352EAD595
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 11:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E38891BB;
	Mon,  9 Sep 2019 09:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4309F891BB;
 Mon,  9 Sep 2019 09:23:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18423665-1500050 for multiple; Mon, 09 Sep 2019 10:23:44 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <e05e82f0-255d-5728-98e5-45bf68df4a23@linux.intel.com>
References: <20190909071226.15401-1-chris@chris-wilson.co.uk>
 <e05e82f0-255d-5728-98e5-45bf68df4a23@linux.intel.com>
Message-ID: <156802102222.21072.16329690166966071648@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Sep 2019 10:23:42 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Check on the health of
 the spinner while waiting
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0wOSAxMDoxOTowOCkKPiAKPiBPbiAwOS8w
OS8yMDE5IDA4OjEyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBbmQgZ2l2ZSB1cCBpZiB3ZSBu
ZXZlciBldmVuIG1ha2UgaXQgdG8gdGhlIHN0YXJ0Lgo+ID4gCj4gPiBCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTkyCj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIHRl
c3RzL3BlcmZfcG11LmMgfCAzICsrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIvdGVzdHMvcGVyZl9w
bXUuYwo+ID4gaW5kZXggZDM5MmE2N2Q0Li44YTA2ZTVkNDQgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0
cy9wZXJmX3BtdS5jCj4gPiArKysgYi90ZXN0cy9wZXJmX3BtdS5jCj4gPiBAQCAtMTkxLDEwICsx
OTEsMTIgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgX19zcGluX3dhaXQoaW50IGZkLCBpZ3Rfc3Bp
bl90ICpzcGluKQo+ID4gICAgICAgICAgICAgICB3aGlsZSAoIWlndF9zcGluX2hhc19zdGFydGVk
KHNwaW4pKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyB0ID0gaWd0
X25zZWNfZWxhcHNlZCgmc3RhcnQpOwo+ID4gICAKPiA+ICsgICAgICAgICAgICAgICAgICAgICBp
Z3RfYXNzZXJ0KGdlbV9ib19idXN5KGZkLCBzcGluLT5oYW5kbGUpKTsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICBpZiAoKHQgLSB0aW1lb3V0KSA+IDI1MGU2KSB7Cj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB0aW1lb3V0ID0gdDsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGlndF93YXJuKCJTcGlubmVyIG5vdCBydW5uaW5nIGFmdGVyICUuMmZtc1xuIiwKPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChkb3VibGUpdCAvIDFlNik7
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgaWd0X2Fzc2VydCh0IDwgMmU5KTsKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICB9Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAgIH0gZWxz
ZSB7Cj4gPiBAQCAtMjAyLDYgKzIwNCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIF9fc3Bpbl93
YWl0KGludCBmZCwgaWd0X3NwaW5fdCAqc3BpbikKPiA+ICAgICAgICAgICAgICAgdXNsZWVwKDUw
MGUzKTsgLyogQmV0dGVyIHRoYW4gbm90aGluZyEgKi8KPiA+ICAgICAgIH0KPiA+ICAgCj4gPiAr
ICAgICBpZ3RfYXNzZXJ0KGdlbV9ib19idXN5KGZkLCBzcGluLT5oYW5kbGUpKTsKPiA+ICAgICAg
IHJldHVybiBpZ3RfbnNlY19lbGFwc2VkKCZzdGFydCk7Cj4gPiAgIH0KPiA+ICAgCj4gPiAKPiAK
PiBUaGUgMnMgdGltZW91dCBmb3IgYmF0Y2ggdG8gc3RhcnQgZXhlY3V0aW5nIHNvdW5kcyBva2F5
Lgo+IAo+IEknZCBwdWxsIHVwIGFuZCBjb25zb2xpZGF0ZSB0aGUgYm9fYnVzeSBjaGVja3MgaW50
byBvbmUgYXQgdGhlIHRvcCBvZiAKPiB0aGUgZnVuY3Rpb24sIHNpbmNlIGl0IGlzIG9ubHkgdGVs
bGluZyB1cyBiYXRjaCBoYXMgYmVlbiBzdWJtaXR0ZWQuIE9yIAo+IHlvdSBhcmUgdGhpbmtpbmcg
dGhlIHNlY29uZCBjaGVjayBicmluZ3MgdmFsdWUgaW4gY2hlY2tpbmcgYmF0Y2ggaXMgCj4gc3Rp
bGwgZXhlY3V0aW5nLCBoYXNuJ3QgZmFpbGVkIG9yIHNvbWV0aGluZz8KClRoZSB0aGlua2luZyBp
cyB0byBjYXRjaCBpZiB3ZSB0ZXJtaW5hdGUgdGhlIGJhdGNoIHZpYSBoYW5nY2hlY2sgYmVmb3Jl
CndyaXRpbmcgdGhlIGR3b3JkLiBJIHRoaW5rIHRoZXJlJ3MgdmFsdWUgaW4ga25vd2luZyBpZiB3
ZSBhcmUgc2xvdyB2cwpkZWFkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
