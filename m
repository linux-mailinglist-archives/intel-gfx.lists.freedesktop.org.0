Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B3E215C9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 10:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C19895E7;
	Fri, 17 May 2019 08:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696EA895E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 08:56:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16585435-1500050 for multiple; Fri, 17 May 2019 09:56:02 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4574042.xkdEOkl7qG@jkrzyszt-desk.ger.corp.intel.com>
References: <20190515150042.8409-1-chris@chris-wilson.co.uk>
 <3888466.CaR8c4z4uE@jkrzyszt-desk.ger.corp.intel.com>
 <4574042.xkdEOkl7qG@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <155808336081.12244.14505355260330555687@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 09:56:00 +0100
Subject: Re: [Intel-gfx] Shutdown hooks
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDUtMTcgMDk6MDQ6MTIpCj4gT24gVGh1
cnNkYXksIE1heSAxNiwgMjAxOSA4OjIwOjE4IEFNIENFU1QgSmFudXN6IEtyenlzenRvZmlrIHdy
b3RlOgo+ID4gT24gV2VkbmVzZGF5LCBNYXkgMTUsIDIwMTkgNTowMDo0MCBQTSBDRVNUIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+ID4gSmFudXMsIHNvbWUgb2xkIHBhdGNoZXMgdGhhdCBtYXkgYmUg
b2YgdXNlIGZvciBzaHV0ZG93biBwcmlvciB0byBrZXhlYy4KPiA+ID4gLUNocmlzCj4gPiAKPiA+
IEhpIENocmlzLAo+ID4gCj4gPiBUaGFua3MgZm9yIHNoYXJpbmcuCj4gPiAKPiA+IEknbSBvbmx5
IG5vdCBzdXJlIHdoeSB5b3UgbWVudGlvbmVkIGtleGVjLiAgSSBoYXZlIGFuIGltcHJlc3Npb24g
c29tZW9uZSAKPiBlbHNlIAo+ID4gd2FzIHRhbGtpbmcgYWJvdXQga2V4ZWMgcmVjZW50bHkgc28g
bWF5YmUgSSB3YXMgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQuICAKPiA+IEJ1dCBhbnl3YXks
IHRob3NlIHBhdGNoZXMgbG9vayB0byBtZSBsaWtlIHRoZXkgbWF5IGJlIGhlbHBmdWwgYnkgaG90
dW5wbHVnIAo+IHNvIAo+ID4gSSdtIGdvaW5nIHRvIGdpdmUgdGhlbSBhIHRyeSB3aXRoIHRoZSBo
b3R1bnBsdWcgdGVzdC4KPiAKPiBJIHdhcyB3cm9uZy4gVGhlIHNodXRkb3duIGhvb2sgaGFzIG5v
dGhpbmcgdG8gZG8gd2l0aCBob3QgdW5iaW5kIC8gdW5wbHVnIGFuZCAKPiB0aGUgYXBwbGljYWJs
ZSByZW1vdmUgaG9vayBhbHJlYWR5IGhhcyBpbiBpdHMgcGF0aCBib3RoIGNhbGxzIGNvdmVyZWQg
YnkgdGhvc2UgCj4gcGF0Y2hlcy4gIFRoZW4gaXQgbG9va3MgbGlrZSBpbmRlZWQgSSBtdXN0IGhh
dmUgYmVlbiBub3QgdGhlIGludGVuZGVkIAo+IHJlY2lwaWVudCBvZiB0aG9zZSBtZXNzYWdlcy4K
ClNvcnJ5LCBJIGRpZCBtaXN0YWtlIHlvdSBmb3Igc29tZW9uZSBlbHNlIGFza2luZyBhYm91dCBy
ZXNpZHVhbCBIVyBzZXR1cAphY3Jvc3Mga2V4ZWMgb24gSVJDLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
