Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E398E7D2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 11:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5B46E958;
	Thu, 15 Aug 2019 09:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6300B6E958
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 09:09:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18148641-1500050 for multiple; Thu, 15 Aug 2019 10:09:03 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190815083055.14132-1-mika.kuoppala@linux.intel.com>
References: <20190815083055.14132-1-mika.kuoppala@linux.intel.com>
Message-ID: <156586014057.5838.9032833503443652498@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 15 Aug 2019 10:09:00 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/icl: Implement gen11 flush
 including tile cache
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE1IDA5OjMwOjUzKQo+IEFkZCB0aWxlIGNh
Y2hlIGZsdXNoaW5nIGZvciBnZW4xMS4gVG8gcmVsaXZlIHVzIGZyb20gdGhlCj4gYnVyZGVuIG9m
IHByZXZpb3VzIG9ic29sZXRlIHdvcmthcm91bmRzLCBtYWtlIGEgZGVkaWNhdGVkCj4gZmx1c2gv
aW52YWxpZGF0ZSBjYWxsYmFjayBmb3IgZ2VuMTEuCj4gCj4gVG8gZm9ydGlmeSBhbiBpbmRlcGVu
ZGVudCBzaW5nbGUgZmx1c2gsIGRvIHBvc3QKPiBzeW5jIG9wIGFzIHRoZXJlIGFyZSBpbmRpY2F0
aW9ucyB0aGF0IHdpdGhvdXQgaXQKPiB3ZSBkb24ndCBmbHVzaCBldmVyeXRoaW5nLiBUaGlzIHNo
b3VsZCBhbHNvIG1ha2UgdGhpcwo+IGNhbGxiYWNrIG1vcmUgcmVhZGlseSB1c2FibGUgaW4gdGds
IChzZWUgbDMgZmFicmljIGZsdXNoKS4KPiAKPiB2Mjogd2hpdGVzcGFjaW5nCj4gCj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKVGhlIGJp
dHMgbWF0Y2ggdG8gYnNwZWMsIHNvIGdvaW5nIGJ5IG5hbWUgYWxvbmUsClJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
