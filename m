Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6046A337A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 11:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD912894E7;
	Fri, 30 Aug 2019 09:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B1C892ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 09:14:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18314698-1500050 for multiple; Fri, 30 Aug 2019 10:14:21 +0100
MIME-Version: 1.0
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190830085849.12519-2-joonas.lahtinen@linux.intel.com>
References: <20190830085849.12519-1-joonas.lahtinen@linux.intel.com>
 <20190830085849.12519-2-joonas.lahtinen@linux.intel.com>
Message-ID: <156715645943.29078.2835378457498416484@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 30 Aug 2019 10:14:19 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Indent GuC/WOPCM
 documentation sections
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDgtMzAgMDk6NTg6NDkpCj4gSW5kZW50IEd1
Qy9XT1BDTSBkb2N1bWVudGF0aW9uIGNvcnJlY3RseSB0byByZXNpZGUgdW5kZXIKPiAiTWVtb3J5
IE1hbmFnZW1lbnQgYW5kIENvbW1hbmQgU3VibWlzc2lvbiIgc2VjdGlvbiB0byBhdm9pZAo+IGl0
IGVzY2FwaW5nIHRvIHRoZSB1cHBlciBsZXZlbCBuYXZpZ2F0aW9uLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4g
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBEb2N1
bWVudGF0aW9uL2dwdS9pOTE1LnJzdCB8IDE0ICsrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKPiBp
bmRleCA3ZDFmNjU2MTI4NTYuLmUyNDllYTdiMGVjNyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2dwdS9pOTE1LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0Cj4gQEAg
LTQwNywzMSArNDA3LDMxIEBAIE9iamVjdCBUaWxpbmcgSU9DVExzCj4gICAgIDpkb2M6IGJ1ZmZl
ciBvYmplY3QgdGlsaW5nCj4gIAo+ICBXT1BDTQo+IC09PT09PQo+ICstLS0tLQoKY2hhcHRlciA9
PiBzZWN0aW9uCgo+ICBXT1BDTSBMYXlvdXQKPiAtLS0tLS0tLS0tLS0tCj4gK35+fn5+fn5+fn5+
fgoKc2VjdGlvbiA9PiBzdWJzZWN0aW9uCgpObyBpZGVhIHdoYXQgaXQgbG9va3MgbGlrZSBpbiBw
cmFjdGljZSwKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
