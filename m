Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C9CAC55D
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 10:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DD8891AC;
	Sat,  7 Sep 2019 08:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1730B891AC
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 08:39:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18406699-1500050 for multiple; Sat, 07 Sep 2019 09:39:55 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b9c6a7df-9137-6be0-bc40-209f5c2cb17e@intel.com>
References: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
 <b9c6a7df-9137-6be0-bc40-209f5c2cb17e@intel.com>
Message-ID: <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 07 Sep 2019 09:39:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTA2IDIzOjI4OjA1KQo+IAo+
IAo+IE9uIDkvNS8xOSAyOjA5IEFNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPiBXaGVu
IHRyeWluZyB0byByZXNldCBhIGRldmljZSB3aXRoIHJlc2V0IGNhcGFiaWxpdHkgZGlzYWJsZWQg
b3Igbm90Cj4gPiBzdXBwb3J0ZWQgd2hpbGUgcmluZ3MgYXJlIGZ1bGwgb2YgcmVxdWVzdHMsIGl0
IGhhcyBiZWVuIG9ic2VydmVkIHdoZW4KPiA+IHJ1bm5pbmcgaW4gZXhlY2xpc3RzIHN1Ym1pc3Np
b24gbW9kZSB0aGF0IGNvbW1hbmQgc3RyZWFtIGJ1ZmZlciB0YWlsCj4gPiB0ZW5kcyB0byBiZSBp
bmNyZW1lbnRlZCBieSBhcHBhcmVudGx5IHN0aWxsIHJ1bm5pbmcgR1BVIHJlZ2FyZGxlc3Mgb2YK
PiA+IGFsbCByZXF1ZXN0cyBiZWluZyBhbHJlYWR5IGNhbmNlbGxlZCBhbmQgY29tbWFuZCBzdHJl
YW0gYnVmZmVyIHBvaW50ZXJzCj4gPiByZXNldC4gIEFzIGEgcmVzdWx0LCBrZXJuZWwgcGFuaWMg
b24gTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9jY3Vycwo+ID4gd2hlbiBhIHRyYWNlX3BvcnRz
KCkgaGVscGVyIGlzIGNhbGxlZCB3aXRoIGNvbW1hbmQgc3RyZWFtIGJ1ZmZlciB0YWlsCj4gPiBp
bmNyZW1lbnRlZCBidXQgcmVxdWVzdCBwb2ludGVycyBiZWluZyBOVUxMIGR1cmluZyBmaW5hbAo+
ID4gX19pbnRlbF9ndF9zZXRfd2VkZ2VkKCkgb3BlcmF0aW9uIGNhbGxlZCBmcm9tIGludGVsX2d0
X3Jlc2V0KCkuCj4gPiAKPiA+IFNraXAgYWN0dWFsIHJlc2V0IHByb2NlZHVyZSBpZiByZXNldCBp
cyBkaXNhYmxlZCBvciBub3Qgc3VwcG9ydGVkLgo+IAo+IFRoaXMgbGFzdCBzZW50ZW5jZSBpcyBh
IGJpdCBjb25mdXNpbmcuIFlvdSdyZSBub3Qgc2tpcHBpbmcgdGhlIHJlc2V0IAo+IHByb2NlZHVy
ZSwgeW91J3JlIHNraXBwaW5nIHRoZSBhdHRlbXB0IG9mIHVud2VkZ2luZyBhbmQgcmVzZXR0aW5n
IGFnYWluIAo+IGFmdGVyIGEgcmVzZXQgJiB3ZWRnZSBhbHJlYWR5IGhhcHBlbmVkLgoKTG9zcyBv
ZiBlbWFpbCBvdmVyIHRoZSBsYXN0IHdlZWssIHNvIGp1bXBpbmcgaW4gYXQgdGhlIGVuZC4gTXkg
Z3V0CnJlc3BvbnNlIGlzIHRoYXQgdGhpcyBpcyBzdGlsbCBqdXN0IHBhcGVyaW5nIG92ZXIgdGhl
IGJ1ZywgYXMgd2hhdCB5b3UKc2F5IGFib3ZlIG1ha2VzIG5vIHNlbnNlLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
