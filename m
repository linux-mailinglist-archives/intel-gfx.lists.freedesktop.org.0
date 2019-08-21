Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F59D97CD2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7AA16E406;
	Wed, 21 Aug 2019 14:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09DB06E406
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:25:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18215283-1500050 for multiple; Wed, 21 Aug 2019 15:25:28 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190821142336.21609-1-chris@chris-wilson.co.uk>
References: <20190821142336.21609-1-chris@chris-wilson.co.uk>
Message-ID: <156639752599.1374.7223177553009431491@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 15:25:26 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Set priority hint prior
 to submission
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjEgMTU6MjM6MzYpCj4gU2luY2Ugd2Ugbm93
IHJ1biBwcm9jZXNzX2NzYigpIG91dHNpZGUgb2YgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2ssIHdl
Cj4gY2FuIHByb2Nlc3MgYSBDUy1ldmVudCBpbW1lZGlhdGVseSB1cG9uIG91ciBFTFNQIHdyaXRl
LiBBcyB3ZSBjdXJyZW50bHkKPiBpbnNwZWN0IHRoZSBwZW5kaW5nIHF1ZXVlICphZnRlciogdGhl
IEVMU1Agd3JpdGUsIHRoZXJlIGlzIGFuCj4gb3Bwb3J0dW5pdHkgZm9yIGEgQ1MtZXZlbnQgdG8g
dXBkYXRlIHRoZSBwZW5kaW5nIHF1ZXVlIGJlZm9yZSB3ZSBjYW4KPiByZWFkIGl0LCBtYWtpbmcg
b3Vyc2VsdmVzIGNoYXNlcyBhbiBpbnZhbGlkIHBvaW50ZXIuCj4gCgpCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDI3Cj4gRml4ZXM6IGRm
NDAzMDY5MDI5ZCAoImRybS9pOTE1L2V4ZWNsaXN0czogTGlmdCBwcm9jZXNzX2NzYigpIG91dCBv
ZiB0aGUgaXJxLW9mZiBzcGlubG9jayIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA0NDc4MGU3
ZmFmZWMuLmQ0MjU4NDQzOWY1MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
Cj4gQEAgLTEzMzUsOSArMTMzNSw5IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgICAgICAgIGlmIChzdWJtaXQpIHsKPiAg
ICAgICAgICAgICAgICAgKnBvcnQgPSBleGVjbGlzdHNfc2NoZWR1bGVfaW4obGFzdCwgcG9ydCAt
IGV4ZWNsaXN0cy0+cGVuZGluZyk7Cj4gICAgICAgICAgICAgICAgIG1lbXNldChwb3J0ICsgMSwg
MCwgKGxhc3RfcG9ydCAtIHBvcnQpICogc2l6ZW9mKCpwb3J0KSk7Cj4gLSAgICAgICAgICAgICAg
IGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoZW5naW5lKTsKPiAgICAgICAgICAgICAgICAgZXhlY2xp
c3RzLT5zd2l0Y2hfcHJpb3JpdHlfaGludCA9Cj4gICAgICAgICAgICAgICAgICAgICAgICAgc3dp
dGNoX3ByaW8oZW5naW5lLCAqZXhlY2xpc3RzLT5wZW5kaW5nKTsKPiArICAgICAgICAgICAgICAg
ZXhlY2xpc3RzX3N1Ym1pdF9wb3J0cyhlbmdpbmUpOwo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAg
ICAgICAgICAgICAgcmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7Cj4gICAgICAgICB9Cj4gLS0g
Cj4gMi4yMy4wLnJjMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
