Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BA04348E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 11:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367AF897F9;
	Thu, 13 Jun 2019 09:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9096A897F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 09:16:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16885729-1500050 for multiple; Thu, 13 Jun 2019 10:16:27 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190613084416.6794-1-jani.nikula@intel.com>
References: <20190613084416.6794-1-jani.nikula@intel.com>
Message-ID: <156041738573.27443.11336619597847360845@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Jun 2019 10:16:25 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: make intel_sdvo_regs.h
 self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0xMyAwOTo0NDoxNCkKPiBFbnN1cmUgaW50ZWxf
c2R2b19yZWdzLmggaXMgc2VsZi1jb250YWluZWQgYW5kIHJlbWFpbnMgdGhhdCB3YXkuCj4gCj4g
U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2R2b19yZWdzLmggICAgfCA3ICsrKysrKysKPiAgMiBm
aWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdAo+IGluZGV4IDZlZjNiNjQ3YWM2NS4uYzA0Mjk3Y2U1N2I0IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPiBAQCAtNTYs
NiArNTYsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCj4gICAgICAgICBpbnRlbF9xdWlya3MuaCBcCj4g
ICAgICAgICBpbnRlbF9ydW50aW1lX3BtLmggXAo+ICAgICAgICAgaW50ZWxfc2R2by5oIFwKPiAr
ICAgICAgIGludGVsX3Nkdm9fcmVncy5oIFwKPiAgICAgICAgIGludGVsX3NpZGViYW5kLmggXAo+
ICAgICAgICAgaW50ZWxfc3ByaXRlLmggXAo+ICAgICAgICAgaW50ZWxfdHYuaCBcCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfc2R2b19yZWdzLmgKPiBpbmRleCBlOWJhM2IwNDdmOTMuLmFmMDJj
MGQyMWQ2YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvX3Jl
Z3MuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oCj4gQEAg
LTI0LDYgKzI0LDExIEBACj4gICAqICAgICBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+
ICAgKi8KPiAgCj4gKyNpZm5kZWYgX19JTlRFTF9TRFZPX1JFR1NfSF9fCj4gKyNkZWZpbmUgX19J
TlRFTF9TRFZPX1JFR1NfSF9fCj4gKwoKI2luY2x1ZGUgPGxpbnV4L2NvbXBpbGVyLmg+IG9yIGNv
bXBpbGVyX2F0dHJpYnV0ZXMuaCBmb3IgX19wYWNrZWQKCkxvb2tzIGxpa2UgcmFuZG9tIGluY2x1
c2lvbiBvdGhlcndpc2UuCgo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
