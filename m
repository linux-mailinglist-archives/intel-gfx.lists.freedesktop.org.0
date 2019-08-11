Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 779E38939F
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 22:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89AA6E39C;
	Sun, 11 Aug 2019 20:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7001F6E39C
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 20:27:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17962626-1500050 for multiple; Sun, 11 Aug 2019 21:26:56 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190811195132.9660-5-michal.wajdeczko@intel.com>
References: <20190811195132.9660-1-michal.wajdeczko@intel.com>
 <20190811195132.9660-5-michal.wajdeczko@intel.com>
Message-ID: <156555521375.11756.13811655413887147903@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 11 Aug 2019 21:26:53 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/uc: Use -EIO code for GuC
 initialization failures
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTExIDIwOjUxOjMyKQo+IFNpbmNlIGNv
bW1pdCA2Y2E5YTJiZWI1NGEgKCJkcm0vaTkxNTogVW53aW5kIGk5MTVfZ2VtX2luaXQoKSBmYWls
dXJlIikKPiB3ZSBiZWxpZXZlZCB0aGF0IHdlIGNvcnJlY3RseSBoYW5kbGUgYWxsIGVycm9ycyBl
bmNvdW50ZXJlZCBkdXJpbmcKPiBHdUMgaW5pdGlhbGl6YXRpb24sIGluY2x1ZGluZyBzcGVjaWFs
IG9uZSB0aGF0IGluZGljYXRlcyByZXF1ZXN0IHRvCj4gcnVuIGRyaXZlciB3aXRoIGRpc2FibGVk
IEdQVSBzdWJtaXNzaW9uICgtRUlPKS4KPiAKPiBVbmZvcnR1bmF0ZWx5IHNpbmNlIGNvbW1pdCAx
MjE5ODFmYWZlNjkgKCJkcm0vaTkxNS9ndWM6IENvbWJpbmUKPiBlbmFibGVfZ3VjX2xvYWRpbmd8
c3VibWlzc2lvbiBtb2RwYXJhbXMiKSB3ZSBzdG9wcGVkIHVzaW5nIHRoYXQKPiBlcnJvciBjb2Rl
IHRvIGF2b2lkIHVud2FudGVkIGZhbGxiYWNrIHRvIGV4ZWNsaXN0IHN1Ym1pc3Npb24gbW9kZS4K
PiAKPiBJbiByZXN1bHQgYW55IEd1QyBpbml0aWFsaXphdGlvbiBmYWlsdXJlIHdhcyB0cmVhdGVk
IGFzIG5vbi1yZWNvdmVyYWJsZQo+IGVycm9yIGxlYWRpbmcgdG8gZHJpdmVyIGxvYWQgYWJvcnQs
IHNvIHdlIGNvdWxkIG5vdCBldmVuIHJlYWQgcmVsYXRlZAo+IEd1QyBlcnJvciBsb2cgdG8gaW52
ZXN0aWdhdGUgY2F1c2Ugb2YgdGhlIHByb2JsZW0uCj4gCj4gRm9yIG5vdyBhbHdheXMgcmV0dXJu
IC1FSU8gb24gYW55IHVDIGhhcmR3YXJlIHJlbGF0ZWQgZmFpbHVyZS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpXb3JrcyBmb3Ig
bWUsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
