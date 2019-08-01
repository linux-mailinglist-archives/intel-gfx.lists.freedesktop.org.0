Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0907D5E1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 08:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E0B6E395;
	Thu,  1 Aug 2019 06:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ED596E395
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 06:54:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17778587-1500050 for multiple; Thu, 01 Aug 2019 07:53:57 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190801005709.34092-2-daniele.ceraolospurio@intel.com>
References: <20190801005709.34092-1-daniele.ceraolospurio@intel.com>
 <20190801005709.34092-2-daniele.ceraolospurio@intel.com>
Message-ID: <156464243694.2512.12267622470586301783@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 07:53:56 +0100
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/uc: Move uC early functions
 inside the GT ones
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTAxIDAxOjU3OjA4KQo+IHVD
IGlzIGEgc3ViY29tcG9uZW50IG9mIEdULCBzbyBpbml0aWFsaXplL2NsZWFuIGl0IGFzIHBhcnQg
b2YgaXQuIFRoZQo+IHdvcGNtX2luaXRfZWFybHkgZG9lc24ndCBoYXZlIHRvIGJlIGhhcHBlbiBi
ZWZvcmUgdGhlIHVDIG9uZSwgYnV0IHNpbmNlCj4gaW4gb3RoZXIgcGFydHMgb2YgdGhlIGNvZGUg
d2UgY29uc2lkZXIgV09QQ00gZmlyc3QgZG8gdGhlIHNhbWUgZm9yCj4gY29uc2lzdGVuY3kuCj4g
Cj4gdjI6IHMvY2xlYW51cF9lYXJseS9sYXRlX3JlbGVhc2UgdG8gbWF0Y2ggdGhlIGNhbGxlcgo+
IHYzOiBzL2xhdGVfcmVsZWFzZS9kcml2ZXJfbGF0ZV9yZWxlYXNlLyAoQ2hyaXMpCj4gCj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IFJldmll
d2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4gI3Yx
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
