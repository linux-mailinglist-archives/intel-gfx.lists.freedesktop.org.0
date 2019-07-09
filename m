Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC1F633D7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E308975F;
	Tue,  9 Jul 2019 10:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620658975F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:00:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17181391-1500050 for multiple; Tue, 09 Jul 2019 11:00:45 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190709093208.20470-11-lionel.g.landwerlin@intel.com>
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-11-lionel.g.landwerlin@intel.com>
Message-ID: <156266644341.9375.1105653276634114123@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 09 Jul 2019 11:00:43 +0100
Subject: Re: [Intel-gfx] [PATCH v7 10/12] drm/i915/perf: allow holding
 preemption on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMDozMjowNikKPiBXZSB3b3Vs
ZCBsaWtlIHRvIG1ha2UgdXNlIG9mIHBlcmYgaW4gVnVsa2FuLiBUaGUgVnVsa2FuIEFQSSBpcyBt
dWNoCj4gbG93ZXIgbGV2ZWwgdGhhbiBPcGVuR0wsIHdpdGggYXBwbGljYXRpb25zIGRpcmVjdGx5
IGV4cG9zZWQgdG8gdGhlCj4gY29uY2VwdCBvZiBjb21tYW5kIGJ1ZmZlcnMgKHByZXR0eSBtdWNo
IGVxdWl2YWxlbnQgdG8gb3VyIGJhdGNoCj4gYnVmZmVycykuIEluIFZ1bGthbiwgcXVlcmllcyBh
cmUgYWx3YXlzIGxpbWl0ZWQgaW4gc2NvcGUgdG8gYSBjb21tYW5kCj4gYnVmZmVyLiBJbiBPcGVu
R0wsIHRoZSBsYWNrIG9mIGNvbW1hbmQgYnVmZmVyIGNvbmNlcHQgbWVhbnQgdGhhdAo+IHF1ZXJp
ZXMnIGR1cmF0aW9uIGNvdWxkIHNwYW4gbXVsdGlwbGUgY29tbWFuZCBidWZmZXJzLgo+IAo+IFdp
dGggdGhhdCByZXN0cmljdGlvbiBnb25lIGluIFZ1bGthbiwgd2Ugd291bGQgbGlrZSB0byBzaW1w
bGlmeQo+IG1lYXN1cmluZyBwZXJmb3JtYW5jZSBqdXN0IGJ5IG1lYXN1cmluZyB0aGUgZGVsdGFz
IGJldHdlZW4gdGhlIGNvdW50ZXIKPiBzbmFwc2hvdHMgd3JpdHRlbiBieSAyIE1JX1JFQ09SRF9Q
RVJGX0NPVU5UIGNvbW1hbmRzLCByYXRoZXIgdGhhbiB0aGUKPiBtb3JlIGNvbXBsZXggc2NoZW1l
IHdlIGN1cnJlbnRseSBoYXZlIGluIHRoZSBHTCBkcml2ZXIsIHVzaW5nIDIKPiBNSV9SRUNPUkRf
UEVSRl9DT1VOVCBjb21tYW5kcyBhbmQgZG9pbmcgc29tZSBwb3N0IHByb2Nlc3Npbmcgb24gdGhl
Cj4gc3RyZWFtIG9mIE9BIHJlcG9ydHMsIGNvbWluZyBmcm9tIHRoZSBnbG9iYWwgT0EgYnVmZmVy
LCB0byByZW1vdmUgYW55Cj4gdW5yZWxhdGVkIGRlbHRhcyBpbiBiZXR3ZWVuIHRoZSAyIE1JX1JF
Q09SRF9QRVJGX0NPVU5ULgo+IAo+IERpc2FibGluZyBwcmVlbXB0aW9uIG9ubHkgYXBwbHkgdG8g
YSBzaW5nbGUgY29udGV4dCB3aXRoIHdoaWNoIHdhbnQgdG8KPiBxdWVyeSBwZXJmb3JtYW5jZSBj
b3VudGVycyBmb3IgYW5kIGlzIGNvbnNpZGVyZWQgYSBwcml2aWxlZ2VkCj4gb3BlcmF0aW9uLCBi
eSBkZWZhdWx0IHByb3RlY3RlZCBieSBDQVBfU1lTX0FETUlOLiBJdCBpcyBwb3NzaWJsZSB0bwo+
IGVuYWJsZSBpdCBmb3IgYSBub3JtYWwgdXNlciBieSBkaXNhYmxpbmcgdGhlIHBhcmFub2lkIHN0
cmVhbSBzZXR0aW5nLgo+IAo+IHYyOiBTdG9yZSBwcmVlbXB0aW9uIHNldHRpbmcgaW4gaW50ZWxf
Y29udGV4dCAoQ2hyaXMpCj4gCj4gdjM6IFVzZSBwcmlvcml0aWVzIHRvIGF2b2lkIHByZWVtcHRp
b24gcmF0aGVyIHRoYW4gdGhlIEhXIG1lY2hhbmlzbQo+IAo+IHY0OiBKdXN0IG1vZGlmeSB0aGUg
cG9ydCBwcmlvcml0eSByZXBvcnRpbmcgZnVuY3Rpb24KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMaW9u
ZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKQ291bGQgeW91IHNw
bGl0IHRoaXMgaW50byB0d28gLS0gc2VwYXJhdGUgdGhlIGJhY2tlbmQgbWVjaGFuaXNtIGZyb20K
cGVyZiBzZXR0aW5nIHRoZSBmbGFnPyBJIHdhbnQgdG8gYWRkIGEgc2VsZnRlc3QgYW5kIGFwcGx5
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
