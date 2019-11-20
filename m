Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D76BB103A11
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 13:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AF36E4A7;
	Wed, 20 Nov 2019 12:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3815D6E4A7;
 Wed, 20 Nov 2019 12:30:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19271330-1500050 for multiple; Wed, 20 Nov 2019 12:30:39 +0000
MIME-Version: 1.0
To: Chuansheng Liu <chuansheng.liu@intel.com>, igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191120062912.10853-1-chuansheng.liu@intel.com>
References: <20191120062912.10853-1-chuansheng.liu@intel.com>
Message-ID: <157425303636.13839.5788530893723789852@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 20 Nov 2019 12:30:36 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/pm_rps: install SIGTERM
 handler for load_helper process
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

UXVvdGluZyBDaHVhbnNoZW5nIExpdSAoMjAxOS0xMS0yMCAwNjoyOToxMikKPiBSZWZlcmVuY2U6
Cj4gaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTI2Cj4g
Cj4gVGhlIGlzc3VlIHdlIGhpdCBpcyB0aGUgR1BVIGtlZXBzIHZlcnkgaGlnaCBsb2FkIGFmdGVy
IHJ1bm5pbmcKPiB0aGUgc3VidGVzdCBtaW4tbWF4LWNvbmZpZy1sb2FkZWQuCj4gCj4gU29tZSBi
YWNrZ3JvdW5kIG9mIHRoZSBpc3N1ZToKPiBDdXJyZW50bHkgdGhlIHJwcyBpcyBub3QgZnVsbHkg
ZW5hYmxlZCB5ZXQgb24gVEdMLCBhbmQgcnVubmluZwo+IHRoZSBzdWJ0ZXN0IG1pbi1tYXgtY29u
ZmlnLWxvYWRlZCB3aWxsIGhpdCBiZWxvdyBhc3NlcnRpb246Cj4gPT0KPiAoaTkxNV9wbV9ycHM6
MTI2MSkgQ1JJVElDQUw6IFRlc3QgYXNzZXJ0aW9uIGZhaWx1cmUgZnVuY3Rpb24gbG9hZGVkX2No
ZWNrLCBmaWxlIC4uL3Rlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYzo1MDU6Cj4gKGk5MTVfcG1fcnBz
OjEyNjEpIENSSVRJQ0FMOiBGYWlsZWQgYXNzZXJ0aW9uOiBmcmVxc1tNQVhdIDw9IGZyZXFzW0NV
Ul0KPiAoaTkxNV9wbV9ycHM6MTI2MSkgQ1JJVElDQUw6IExhc3QgZXJybm86IDIsIE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkKPiA9PQo+IAo+IHdpdGggaWd0IHN0cmVzcyB0ZXN0LCB3ZSBmaW5k
IHRoZSBHVCBrZWVwcyBidXN5IGFmdGVyIHJ1bm5pbmcKPiB0aGlzIHN1YnRlc3QsIGl0IGlzIGR1
ZSB0byB0aGUgaWd0X3NwaW5fZW5kKCkgaXMgbm90IGNhbGxlZAo+IHJhbmRvbWx5Lgo+IAo+IFRo
ZSByb290IGNhdXNlIGFuYWx5c2lzIGlzOgo+IFdoZW4gdGhlIG1haW4gcHJvY2VzcyBpOTE1X3Bt
X3JwcyBmb3IgcnVubmluZyB0aGUgc3VidGVzdAo+IG1pbi1tYXgtY29uZmlnLWxvYWRlZCBoaXRz
IHRoZSBhc3NlcnRpb24sIHRoZSBtYWluIHByb2Nlc3Mgd2lsbAo+IHRyeSB0byBzZW5kIHNpZ25h
bCBTSUdURVJNIHRvIHRoZSBjaGlsZCBwcm9jZXNzIGxvYWRlcl9oZWxwZXIKPiB3aGljaCBpcyBj
cmVhdGVkIGJ5IG1haW4gcHJvY2VzcyBmb3Igc3RhcnRpbmcgR1QgbG9hZCwgdGhlbiB0aGUKPiBt
YWluIHByb2Nlc3MgaXRzZWxmIHdpbGwgZXhpdC4KPiAKPiBUaGUgU0lHVEVSTSBoYW5kbGVyIGZv
ciBsb2FkZXJfaGVscGVyIGlzIHRoZSBkZWZhdWx0IG9uZSwgd2hpY2gKPiB3aWxsIGNhdXNlIHRo
ZSBsb2FkZXJfaGVscGVyIGV4aXRzIGRpcmVjdGx5LiBUaGF0IGlzIHVuc2FmZSwgd2UKPiBhbHdh
eXMgZXhwZWN0IHRoZSBpZ3Rfc3Bpbl9lbmQoKSBpcyBjYWxsZWQgYmVmb3JlIGxvYWRlcl9oZWxw
ZXIKPiBwcm9jZXNzIGV4aXRzLCB3aGljaCBpcyB1c2VkIHRvIHN0b3AgdGhlIGxvYWQgb2YgR1Qu
Cj4gCj4gRnVydGhlcm1vcmUsIGluIG5vcm1hbCBzY2VuYXJpbywgYmVmb3JlIG1haW4gcHJvY2Vz
cyBleGl0cywKPiBpdCB3aWxsIHNlbmQgU0lHVVNSMSB0byBjaGlsZCBwcm9jZXNzIGZvciBzdG9w
cGluZyBHVCBsb2FkaW5nCj4gaW4gc2FmZSB3YXkuCj4gCj4gU28gaGVyZSB3ZSBpbnN0YWxsIHRo
ZSBwcm9wZXIgaGFuZGxlciBmb3Igc2lnbmFsIFNJR1RFUk0gaW4gdGhlCj4gc2ltaWxhciB3YXku
IFdpdGhvdXQgdGhpcyBwYXRjaCwgdGhlIEdUIG1heSBrZWVwIGJ1c3kgYWZ0ZXIKPiBydW5uaW5n
IHRoaXMgc3VidGVzdC4gRW5hYmxpbmcgcnBzIHNob3VsZCBiZSB0cmFja2VkIG9uIHRoZQo+IG90
aGVyIHNpZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2h1YW5zaGVuZyBMaXUgPGNodWFuc2hlbmcu
bGl1QGludGVsLmNvbT4KPiAtLS0KPiAgdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jIHwgMSArCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9p
OTE1L2k5MTVfcG1fcnBzLmMgYi90ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMKPiBpbmRleCBlZjYy
N2MwYi4uOGM3MWMxYTEgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jCj4g
KysrIGIvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jCj4gQEAgLTI1Miw2ICsyNTIsNyBAQCBzdGF0
aWMgdm9pZCBsb2FkX2hlbHBlcl9ydW4oZW51bSBsb2FkIGxvYWQpCj4gIAo+ICAgICAgICAgICAg
ICAgICBzaWduYWwoU0lHVVNSMSwgbG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRsZXIpOwo+ICAgICAg
ICAgICAgICAgICBzaWduYWwoU0lHVVNSMiwgbG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRsZXIpOwo+
ICsgICAgICAgICAgICAgICBzaWduYWwoU0lHVEVSTSwgbG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRs
ZXIpOwoKSSBkb24ndCBzZWUgYW55IGJlaGF2aW91ciBjaGFuZ2VzIHRvIGlndCB0byBjYXVzZSBp
dCB0byBzZW5kIFNJR1RFUk0gb24KZXhpdF9zdWJ0ZXN0LgoKQnV0IHlvdSBtaWdodCBhcyB3ZWxs
IGp1c3Qgcy9TSUdVU1IyL1NJR1RFUk0vIGZvciBjbGVhcmVyIGFuZCBjb21tb24KaW50ZW50aW9u
cy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
