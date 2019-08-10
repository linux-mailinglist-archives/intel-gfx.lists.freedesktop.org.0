Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A41F88A6C
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 11:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB48B6E2A0;
	Sat, 10 Aug 2019 09:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FA06E29F;
 Sat, 10 Aug 2019 09:52:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17951872-1500050 for multiple; Sat, 10 Aug 2019 10:52:01 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809222643.23142-3-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-3-matthew.auld@intel.com>
Message-ID: <156543071927.2301.3772928624220608803@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 10:51:59 +0100
Subject: Re: [Intel-gfx] [PATCH v3 02/37] drm/i915: introduce
 intel_memory_region
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjM6MjY6MDgpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwLi5lZjEyZTQ2MmFjYjgKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCj4gQEAgLTAsMCArMSwx
NzUgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ICsvKgo+ICsgKiBDb3B5
cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlICJp
bnRlbF9tZW1vcnlfcmVnaW9uLmgiCj4gKyNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICsKPiArY29u
c3QgdTMyIGludGVsX3JlZ2lvbl9tYXBbXSA9IHsKPiArICAgICAgIFtJTlRFTF9NRU1PUllfU01F
TV0gPSBCSVQoSU5URUxfU01FTSArIElOVEVMX01FTU9SWV9UWVBFX1NISUZUKSB8IEJJVCgwKSwK
PiArICAgICAgIFtJTlRFTF9NRU1PUllfTE1FTV0gPSBCSVQoSU5URUxfTE1FTSArIElOVEVMX01F
TU9SWV9UWVBFX1NISUZUKSB8IEJJVCgwKSwKPiArICAgICAgIFtJTlRFTF9NRU1PUllfU1RPTEVO
XSA9IEJJVChJTlRFTF9TVE9MRU4gKyBJTlRFTF9NRU1PUllfVFlQRV9TSElGVCkgfCBCSVQoMCks
CgpUaGlzIHRhYmxlIGlzbid0IHVzZWQ/IFNvIHRoZSBtZWFuaW5nIG9mIEJJVCgwKSBpcyBpbXBl
bmV0cmFibGUuIFNob3VsZAp3ZSBkZWZlciBhZGRpbmcgdGhlIHJlZ2lvbl9tYXAgdW50aWwgaXQg
aXMgdXNlZD8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
