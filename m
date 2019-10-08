Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B52CFE87
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3896E846;
	Tue,  8 Oct 2019 16:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740946E846
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:07:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18767297-1500050 for multiple; Tue, 08 Oct 2019 17:07:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191008160116.18379-1-matthew.auld@intel.com>
 <20191008160116.18379-3-matthew.auld@intel.com>
In-Reply-To: <20191008160116.18379-3-matthew.auld@intel.com>
Message-ID: <157055082885.13327.5627394209660912791@skylake-alporthouse-com>
Date: Tue, 08 Oct 2019 17:07:08 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/region: support contiguous
 allocations
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDggMTc6MDE6MTUpCj4gU29tZSBrZXJuZWwg
aW50ZXJuYWwgb2JqZWN0cyBtYXkgbmVlZCB0byBiZSBhbGxvY2F0ZWQgYXMgYSBjb250aWd1b3Vz
Cj4gYmxvY2ssIGFsc28gdGhpbmtpbmcgYWhlYWQgdGhlIHZhcmlvdXMga2VybmVsIGlvX21hcHBp
bmcgaW50ZXJmYWNlcyBzZWVtCj4gdG8gZXhwZWN0IGl0LCBhbHRob3VnaCB0aGlzIGlzIHB1cmVs
eSBhIGxpbWl0YXRpb24gaW4gdGhlIGtlcm5lbAo+IEFQSS4uLnNvIHBlcmhhcHMgc29tZXRoaW5n
IHRvIGJlIGltcHJvdmVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1pY2hhZWwgSiBSdWhsIDxtaWNoYWVsLmoucnVobEBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
