Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F06B763E9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 12:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453516ED1A;
	Fri, 26 Jul 2019 10:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990586ED1A
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 10:54:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17624975-1500050 for multiple; Fri, 26 Jul 2019 11:54:32 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190725205106.36148-1-michal.wajdeczko@intel.com>
In-Reply-To: <20190725205106.36148-1-michal.wajdeczko@intel.com>
Message-ID: <156413847060.30723.7960621077354504737@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 11:54:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't sanitize guc_log_level
 modparam
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI1IDIxOjUxOjA2KQo+IFdlIGFyZSBh
bHJlYWR5IHN0b3JpbmcgcnVudGltZSB2YWx1ZSBvZiBsb2cgbGV2ZWwgaW4gcHJpdmF0ZQo+IGZp
ZWxkLCBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIG1vZGlmeSBtb2RwYXJhbS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KCk1pY2hhbCBpcyBwZXJzdWFzaXZlIHRoYXQgaGF2aW5nIGFscmVhZHkgYnJva2VuIHRoZSBs
aW5rIGJldHdlZW4gdGhlCm1vZHBhcmFtIGFuZCB0aGUgYWN0dWFsIHZhbHVlIHNldCB2aWEgZGVi
dWdmcywgbm8gb25lIGNhbiBjdXJyZW50bHkKdHJ1c3QgdGhlIHZhbHVlIHJlcG9ydGVkIGJ5IG1v
ZHBhcmFtLgoKSW4gdGhhdCByZXNwZWN0LCB0aGlzIHNob3VsZCBub3QgaGF2ZSBub3RpY2VhYmxl
IHVzZXJzcGFjZSBjb25zZXF1ZW5jZXMKYW5kIGlzIGp1c3QgYW5vdGhlciBzdGVwIGFsb25nIHRo
ZSByb2FkIG9mIHJlbW92aW5nIHRoZSBtb2RwYXJhbQplbnRpcmVseS4KClJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
