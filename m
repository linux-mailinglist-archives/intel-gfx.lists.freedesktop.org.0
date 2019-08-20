Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606F196262
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF0C6E818;
	Tue, 20 Aug 2019 14:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBC06E818
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:26:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18203385-1500050 for multiple; Tue, 20 Aug 2019 15:26:41 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156629979673.1374.16325552128887063124@skylake-alporthouse-com>
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <156629979673.1374.16325552128887063124@skylake-alporthouse-com>
Message-ID: <156631119878.1374.17295878153394489570@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 15:26:38 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjAgMTI6MTY6MzYpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIwIDAzOjAxOjQ3KQo+ID4gV2l0aCB0aGUgaW50
cm9kdWN0aW9uIG9mIGRpc3BsYXkgdW5jb3JlLCB3ZSB3YW50IHRvIGNhdGVnb3JpemUgcmVnaXN0
ZXJzCj4gPiBiZXR3ZWVuIGRpc3BsYXkgYW5kIG5vbi1kaXNwbGF5LiBUbyBoZWxwIHVzIGdldHRp
bmcgaXQgcmlnaHQsIGl0IHdpbGwKPiA+IGJlIHVzZWZ1bCB0byBtb3ZlIHRoZSBkaXNwbGF5IHJl
Z2lzdGVycyB0byBhIG5ldyBmaWxlIHRoYXQgY2FuIGJlIHVzZWQKPiA+IHdpdGhvdXQgaW5jbHVk
aW5nIGk5MTVfcmVnLmguIFRvIGFsbG93IHRoYXQsIG1vdmUgYWxsIHRoZSBiYXNpYyByZWdpc3Rl
cgo+ID4gdHlwZSBkZWZpbml0aW9ucyBhbmQgaGVscGVycyB0byBpbnRlbF9yZWdfdHlwZXMuaCBh
bmQgaW5jbHVkZSB0aGF0Cj4gPiBpbnN0ZWFkIG9mIGk5MTVfcmVnLmggZnJvbSBoZWFkZXIgZmls
ZXMgaW4gdGhlIGRyaXZlci4gV2UnbGwgdGhlbgo+ID4gYmUgYWJsZSB0byByZXBsYWNlIGk5MTVf
cmVnLmggd2l0aCB0aGUgbmV3IGRpc3BsYXktb25seSBoZWFkZXIgaW4KPiA+IGRpc3BsYXkgZmls
ZXMgYW5kIG1ha2Ugc3VyZSB0aGUgcmVnaXN0ZXJzIGFyZSBjb3JyZWN0bHkKPiA+IGNvbXBhcnRt
ZW50YWxpemVkLgo+ID4gCj4gPiBXaGlsZSBhdCBpdCwgcmVuYW1lIGk5MTVfcmVnLmggdG8gaW50
ZWxfcmVnLmggdG8gYmV0dGVyIGluZGljYXRlIHRoYXQgaXQKPiA+IGNvbnRhaW5zIEhXIGRlZnMu
Cj4gPiAKPiA+IHYyOiB1c2UgaW50ZWxfKiBwcmVmaXggZm9yIHJlZ2lzdGVyIGZpbGVzIChNaWNo
YWwpCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KPiAKPiBBZnRlciBzb21lIG11bGxpbmcsIGludGVsX1tzdWJzeXNdX3JlZy5oICYgaW50ZWxf
cmVnX3R5cGVzLmggd29ya2Zvcm1lLAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KCkFwcGxpZWQgdGhlIHZsdl9zMGl4IGNsZWFudXAsIGJ1dCBs
ZWZ0IHRoaXMgYXMgdGhpcyBkZXNlcnZlcyBhIGZldyBtb3JlCmFja3MuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
