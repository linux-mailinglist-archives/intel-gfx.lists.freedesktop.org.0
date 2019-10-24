Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A640E2AD6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF98D6E0F8;
	Thu, 24 Oct 2019 07:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3113B6E0F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:13:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18944949-1500050 for multiple; Thu, 24 Oct 2019 08:13:31 +0100
MIME-Version: 1.0
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191023210340.GP3257@intel.com>
References: <20191022115126.18746-4-chris@chris-wilson.co.uk>
 <20191022115705.4744-1-chris@chris-wilson.co.uk>
 <20191023210340.GP3257@intel.com>
Message-ID: <157190120947.18724.9509951564701317530@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 24 Oct 2019 08:13:29 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add coverage of mocs
 registers
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

UXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMTAtMjMgMjI6MDM6NDApCj4gT24g
VHVlLCBPY3QgMjIsIDIwMTkgYXQgMTI6NTc6MDVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gUHJvYmUgdGhlIG1vY3MgcmVnaXN0ZXJzIGZvciBuZXcgY29udGV4dHMgYW5kIGFjcm9z
cyBHUFUgcmVzZXRzLiBTaW1pbGFyCj4gPiB0byBpbnRlbF93b3JrYXJvdW5kcywgd2UgaGF2ZSB0
YWJsZXMgb2Ygd2hhdCByZWdpc3RlciB2YWx1ZXMgd2UgZXhwZWN0Cj4gPiB0byBzZWUsIHNvIHZl
cmlmeSB0aGF0IHVzZXIgY29udGV4dHMgYXJlIGFmZmVjdGVkIGJ5IHRoZW0uIEluIHRoZQo+ID4g
ZnV0dXJlLCB3ZSBzaG91bGQgYWRkIHRlc3RzIHNpbWlsYXIgdG8gaW50ZWxfc3NldSB0byBjb3Zl
ciBkeW5hbWljCj4gPiByZWNvbmZpZ3VyYXRpb25zLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBQcmF0aGFwIEt1
bWFyIFZhbHNhbiA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPgo+ID4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IAo+IHMvZm9yX2VhY2hf
ZW5naW5lL2Zvcl9lYWNoX3VhYmlfZW5naW5lID8KCk5vLCB3ZSBhcmUgaW5zaWRlIHRoZSBndCBj
b21wYXJ0bWVudCwgc28gd2Ugb25seSBvcGVyYXRlIHdpdGhpbiBvdXIKbGl0dGxlIGVuY2xvc3Vy
ZS4gVGhpbmsgcGFyYWxsZWxpc20uLi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
