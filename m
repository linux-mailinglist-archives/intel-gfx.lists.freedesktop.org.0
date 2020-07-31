Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95FD2346D9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 15:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6E56EAA3;
	Fri, 31 Jul 2020 13:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F378A6EAA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 13:28:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21993686-1500050 for multiple; Fri, 31 Jul 2020 14:28:36 +0100
MIME-Version: 1.0
In-Reply-To: <c847f75c-25f5-2157-c5c8-07bd6c252213@shipmail.org>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-18-chris@chris-wilson.co.uk>
 <c847f75c-25f5-2157-c5c8-07bd6c252213@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 14:28:35 +0100
Message-ID: <159620211510.21624.14815026034384682088@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 18/66] drm/i915: Always defer fenced work to
 the worker
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA3LTMxIDEwOjAzOjU5KQo+
IAo+IE9uIDcvMTUvMjAgMTo1MCBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gQ3VycmVudGx5
LCBpZiBhbiBlcnJvciBpcyByYWlzZWQgd2UgYWx3YXlzIGNhbGwgdGhlIGNsZWFudXAgbG9jYWxs
eQo+ID4gW2FuZCBza2lwIHRoZSBtYWluIHdvcmsgY2FsbGJhY2tdLiBIb3dldmVyLCBzb21lIGZ1
dHVyZSB1c2Vycwo+IENvdWxkIHlvdSBhZGQgYW4gZXhhbXBsZSBvZiB0aG9zZSBmdXR1cmUgdXNl
cnM/CgpJbiB0aGUgbmV4dCAob3IgdHdvKSBwYXRjaCwgdGhlIGNvZGUgbmVlZHMgdG8gZG8gdGhl
IGVycm9yIGNsZWFudXAgZnJvbQpwcm9jZXNzIGNvbnRleHQuIFNpbmNlIHRoZSBlcnJvciBwYXRo
cyBzaG91bGQgYmUgcmVsYXRpdmVseSBpbmZyZXF1ZW50LAphbmQgbW9yZSBvZnRlbiB0aGFuIG5v
dCByYWlzZWQgc3luY2hyb25vdXNseSwgSSBkaWRuJ3Qgc2VlIGEgcmVhc29uIHRvCmJ1aWxkIGlu
IGEgZmxhZyB0byBzYXkgd2hldGhlciBvciBub3QgdGhlIHJlbGVhc2Utb24tZXJyb3IgY291bGQg
YmUKcGVyZm9ybWVkIGltbWVkaWF0ZWx5IGZyb20gdGhlIGludGVycnVwdCBjb250ZXh0LgoKVGhl
IGV4YW1wbGUgaW4gdGhpcyBzZXJpZXMgaXMgdGhhdCBldmVuIGlmIGFuIGVycm9yIGlzIHRocm93
biwgd2UgaGF2ZQpjb21taXR0ZWQgY2hhbmdlcyB0byB0aGUgcHBHVFQgbGF5b3V0IChpbiBwYXJ0
aWN1bGFyIG1hcmtpbmcgUFRFIHRvIGJlCmV2aWN0ZWQpIGFuZCBzbyB3ZSBtdXN0IGNvbXBsZXRl
IHVuYmluZGluZyB0aGUgb2xkIHBhZ2VzIGZyb20gdGhlIHBwR1RULApvdGhlcndpc2UgdGhleSBt
YXkgcmVtYWluIGFjY2Vzc2libGUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
