Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 883FA104CE1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 08:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE236EB50;
	Thu, 21 Nov 2019 07:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B67E6EB43;
 Thu, 21 Nov 2019 07:47:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19281148-1500050 for multiple; Thu, 21 Nov 2019 07:47:10 +0000
MIME-Version: 1.0
To: "Liu, Chuansheng" <chuansheng.liu@intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <27240C0AC20F114CBF8149A2696CBE4A615D8A40@SHSMSX101.ccr.corp.intel.com>
References: <20191120062912.10853-1-chuansheng.liu@intel.com>
 <157425303636.13839.5788530893723789852@skylake-alporthouse-com>
 <27240C0AC20F114CBF8149A2696CBE4A615D8A40@SHSMSX101.ccr.corp.intel.com>
Message-ID: <157432242660.24852.16181781359342754810@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 07:47:06 +0000
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaXUsIENodWFuc2hlbmcgKDIwMTktMTEtMjEgMDE6MzQ6MjQpCj4gVGhhbmtzIGZv
ciByZXZpZXdpbmcgdGhlIHBhdGNoLCBwbGVhc2Ugc2VlIGJlbG93IGNvbW1lbnRzLgo+IAo+ID4g
PiBTbyBoZXJlIHdlIGluc3RhbGwgdGhlIHByb3BlciBoYW5kbGVyIGZvciBzaWduYWwgU0lHVEVS
TSBpbiB0aGUKPiA+ID4gc2ltaWxhciB3YXkuIFdpdGhvdXQgdGhpcyBwYXRjaCwgdGhlIEdUIG1h
eSBrZWVwIGJ1c3kgYWZ0ZXIKPiA+ID4gcnVubmluZyB0aGlzIHN1YnRlc3QuIEVuYWJsaW5nIHJw
cyBzaG91bGQgYmUgdHJhY2tlZCBvbiB0aGUKPiA+ID4gb3RoZXIgc2lkZS4KPiA+ID4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogQ2h1YW5zaGVuZyBMaXUgPGNodWFuc2hlbmcubGl1QGludGVsLmNvbT4K
PiA+ID4gLS0tCj4gPiA+ICB0ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMgfCAxICsKPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvdGVz
dHMvaTkxNS9pOTE1X3BtX3Jwcy5jIGIvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jCj4gPiA+IGlu
ZGV4IGVmNjI3YzBiLi44YzcxYzFhMSAxMDA2NDQKPiA+ID4gLS0tIGEvdGVzdHMvaTkxNS9pOTE1
X3BtX3Jwcy5jCj4gPiA+ICsrKyBiL3Rlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYwo+ID4gPiBAQCAt
MjUyLDYgKzI1Miw3IEBAIHN0YXRpYyB2b2lkIGxvYWRfaGVscGVyX3J1bihlbnVtIGxvYWQgbG9h
ZCkKPiA+ID4KPiA+ID4gICAgICAgICAgICAgICAgIHNpZ25hbChTSUdVU1IxLCBsb2FkX2hlbHBl
cl9zaWduYWxfaGFuZGxlcik7Cj4gPiA+ICAgICAgICAgICAgICAgICBzaWduYWwoU0lHVVNSMiwg
bG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRsZXIpOwo+ID4gPiArICAgICAgICAgICAgICAgc2lnbmFs
KFNJR1RFUk0sIGxvYWRfaGVscGVyX3NpZ25hbF9oYW5kbGVyKTsKPiA+IAo+ID4gSSBkb24ndCBz
ZWUgYW55IGJlaGF2aW91ciBjaGFuZ2VzIHRvIGlndCB0byBjYXVzZSBpdCB0byBzZW5kIFNJR1RF
Uk0gb24KPiA+IGV4aXRfc3VidGVzdC4KPiAKPiBZZXMsIGV4aXRfc3VidGVzdCgpIHdpbGwgbm90
IHNlbmQgU0lHVEVSTSBvdXQuIEJ1dCB3aGVuIG1haW4gcHJvY2VzcyBjYWxscwo+IGlndF9leGl0
KCkgdG8gZXhpdCwgaXQgaGl0cyB0aGUgYmVsb3cgYXNzZXJ0aW9uLCB0aGVuIGdvZXMgdG8gZmF0
YWxfc2lnX2hhbmRsZXIoKSB3aXRoIFNJR0FCT1JULgo+IChpOTE1X3BtX3JwczoxNjgwKSBpZ3Rf
Y29yZS1DUklUSUNBTDogRXhpdGluZyB3aXRoIHN0YXR1cyBjb2RlIDk4Cj4gaTkxNV9wbV9ycHM6
IC4uL2xpYi9pZ3RfY29yZS5jOjE3NzU6IGlndF9leGl0OiBBc3NlcnRpb24gYHdhaXRwaWQoLTEs
ICZ0bXAsIFdOT0hBTkcpID09IC0xICYmIGVycm5vID09IEVDSElMRCcgZmFpbGVkLgo+IFJlY2Vp
dmVkIHNpZ25hbCBTSUdBQlJULgoKT2ssIGJ1dCB0aGF0J3Mgbm90IGEgaHVnZSBjb25jZXJuLCBz
aW5jZSB3ZSBhcmUgYWxyZWFkeSBpbiBhbiBlcnJvciBzdGF0ZS4KTXkgY29uY2VybiBpcyBmb3Ig
Zml4aW5nIHdoYXRldmVyIGdvdCB1cyBpbnRvIHRoYXQgc3RhdGUuCgo+IEluIGZhdGFsX3NpZ19o
YW5kbGVyKCksIHRoZSBpbnN0YWxsZWQgZXhpdCBoYW5kbGVyIGZvcmtfaGVscGVyX2V4aXRfaGFu
ZGxlcigpCj4gd2lsbCBzZW5kIG91dCB0aGUgU0lHVEVSTSB0byBhbGwgY2hpbGRyZW4gcHJvY2Vz
cy4KPiAKPiA+IAo+ID4gQnV0IHlvdSBtaWdodCBhcyB3ZWxsIGp1c3Qgcy9TSUdVU1IyL1NJR1RF
Uk0vIGZvciBjbGVhcmVyIGFuZCBjb21tb24KPiA+IGludGVudGlvbnMuCj4gRG9uJ3QgZ2V0IHlv
dXIgcmVhbCBwb2ludCwgU0lHVVNSMSBpcyBmb3IgYWN0aXZlbHkgc3RvcHBpbmcgbG9hZF9oZWxw
ZXIsIFNJR1VTUjIgaXMgZm9yCj4gc3dpdGNoaW5nIGhpZ2ggYW5kIGxvdyBsb2FkLCB0aGUgU0lH
VEVSTSBpcyBmb3IgcGFzc2l2ZWx5IGV4aXRpbmcuCgpJIHRoaW5rIHRoZSBkZXNpZ24gb2YgaGF2
aW5nIGEgcGVyc2lzdGVudCBoZWxwZXIgcHJvY2VzcyB0aGF0IGxlYWtzCmJldHdlZW4gc3VidGVz
dHMgaXMgYnJva2VuLiBUaGVuIHVzaW5nIHRocmVlIHNpZ25hbHMgZm9yIGVzc2VudGlhbGx5IG9u
bHkKMiBjb21tYW5kcyBpcyBhZXN0aGV0aWNhbGx5IHVucGxlYXNpbmcuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
