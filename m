Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1465717A566
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 13:39:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7785A6E4F4;
	Thu,  5 Mar 2020 12:39:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D0D6E4F4
 for <Intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 12:39:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20453658-1500050 for multiple; Thu, 05 Mar 2020 12:38:30 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <158341190974.2252.6785632547050153354@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 05 Mar 2020 12:38:29 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
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
Cc: piotr.zdunowski@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMC0wMy0wNCAxNTozMTo0NCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEVuYWJsZSBGdHJQZXJD
dHh0UHJlZW1wdGlvbkdyYW51bGFyaXR5Q29udHJvbCBiaXQgYW5kIHNlbGVjdCB0aHJlYWQtCj4g
Z3JvdXAgYXMgdGhlIGRlZmF1bHQgcHJlZW1wdGlvbiBsZXZlbC4KPiAKPiB2MjoKPiAgKiBSZW1v
dmUgcmVnaXN0ZXIgd2hpdGVsaXN0aW5nIChSYWZhZWwsIFRvbnkpLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IE1pY2hh
xYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBwaW90ci56ZHVu
b3dza2lAaW50ZWwuY29tCj4gQ2M6IG1pY2hhbC5tcm96ZWtAaW50ZWwuY29tCj4gQ2M6IFRvbnkg
WWUgPHRvbnkueWVAaW50ZWwuY29tPgo+IENjOiBSYWZhZWwgQW50b2dub2xsaSA8cmFmYWVsLmFu
dG9nbm9sbGlAaW50ZWwuY29tPgoKL21lIG11dHRlcnMKClNvIGRvIHdlIG5lZWQgdG8gZGlzYWJs
ZSBmb3JjZS1wcmVlbXB0aW9uIG9uIHJjcyBpZiB3ZSBjYW4ndCBkbwpmaW5lLWdyYWluZWQgcHJl
ZW1wdGlvbj8KCkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
