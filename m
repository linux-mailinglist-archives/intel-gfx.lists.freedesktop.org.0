Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADFA58030
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C9C6E117;
	Thu, 27 Jun 2019 10:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2BC6E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:26:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17041920-1500050 for multiple; Thu, 27 Jun 2019 11:26:16 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627091111.14602-1-jani.nikula@intel.com>
References: <20190627091111.14602-1-jani.nikula@intel.com>
Message-ID: <156163117289.20851.1296928938829597740@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 11:26:12 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use wildcard to ensure all
 headers stay self-contained
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNyAxMDoxMToxMSkKPiBGb2xsb3cgc3VpdCB3
aXRoIHRoZSBoZWFkZXIgdGVzdHMgaW4gdGhlIHN1YmRpcmVjdG9yaWVzLgo+IAo+IHYyOiBubyBu
ZWVkIHRvIGZpbHRlciBpOTE1X29hXyouaCBhcyB0aGV5IHdlcmUgbW92ZWQgdG8gb2EvIHN1YmRp
cgo+IAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gIyB2MQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IHwg
MjggKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAyNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5o
ZWFkZXItdGVzdAo+IGluZGV4IDJmZDYxODY5YmRhYS4uY2VmMzRiZjFlODI3IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPiBAQCAtMiwzMyArMiw3IEBA
Cj4gICMgQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPiAgCj4gICMgVGVzdCB0
aGUgaGVhZGVycyBhcmUgY29tcGlsYWJsZSBhcyBzdGFuZGFsb25lIHVuaXRzCj4gLWhlYWRlcl90
ZXN0IDo9IFwKPiAtICAgICAgIGk5MTVfYWN0aXZlX3R5cGVzLmggXAo+IC0gICAgICAgaTkxNV9k
ZWJ1Z2ZzLmggXAo+IC0gICAgICAgaTkxNV9kcnYuaCBcCj4gLSAgICAgICBpOTE1X2ZpeGVkLmgg
XAo+IC0gICAgICAgaTkxNV9nZW1fZ3R0LmggXAo+IC0gICAgICAgaTkxNV9nbG9iYWxzLmggXAo+
IC0gICAgICAgaTkxNV9pcnEuaCBcCj4gLSAgICAgICBpOTE1X3BhcmFtcy5oIFwKPiAtICAgICAg
IGk5MTVfcHJpb2xpc3RfdHlwZXMuaCBcCj4gLSAgICAgICBpOTE1X3B2aW5mby5oIFwKPiAtICAg
ICAgIGk5MTVfcmVnLmggXAo+IC0gICAgICAgaTkxNV9zY2hlZHVsZXJfdHlwZXMuaCBcCj4gLSAg
ICAgICBpOTE1X3V0aWxzLmggXAo+IC0gICAgICAgaTkxNV92Z3B1LmggXAo+IC0gICAgICAgaW50
ZWxfY3NyLmggXAo+IC0gICAgICAgaW50ZWxfZHJ2LmggXAo+IC0gICAgICAgaW50ZWxfZ3VjX2N0
LmggXAo+IC0gICAgICAgaW50ZWxfZ3VjX2Z3aWYuaCBcCj4gLSAgICAgICBpbnRlbF9ndWNfcmVn
LmggXAo+IC0gICAgICAgaW50ZWxfZ3Z0LmggXAo+IC0gICAgICAgaW50ZWxfcG0uaCBcCj4gLSAg
ICAgICBpbnRlbF9ydW50aW1lX3BtLmggXAo+IC0gICAgICAgaW50ZWxfc2lkZWJhbmQuaCBcCj4g
LSAgICAgICBpbnRlbF91Y19mdy5oIFwKPiAtICAgICAgIGludGVsX3VuY29yZS5oIFwKPiAtICAg
ICAgIGludGVsX3dha2VyZWYuaAo+ICtoZWFkZXJfdGVzdCA6PSAkKG5vdGRpciAkKHdpbGRjYXJk
ICQoc3JjKS8qLmgpKQoKTm8gbW9yZSBzdWJzdCB0byB0cnkgYW5kIHBhcnNlLApSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
