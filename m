Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E257E3DF
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 22:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940A76E7AF;
	Thu,  1 Aug 2019 20:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35766E7B0
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 20:22:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17798335-1500050 for multiple; Thu, 01 Aug 2019 21:21:57 +0100
MIME-Version: 1.0
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190801203344.GY3842@intel.com>
References: <20190730112151.5633-1-chris@chris-wilson.co.uk>
 <20190730112151.5633-4-chris@chris-wilson.co.uk>
 <20190801203344.GY3842@intel.com>
Message-ID: <156469091549.12570.8633612310154953207@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 21:21:55 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Flush extra hard after
 writing relocations through the GTT
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMDgtMDEgMjE6MzM6NDQpCj4gT24g
VHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MjE6NTFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gUmVjZW50bHkgZGlzY292ZXJlZCBpbiBjb21taXQgYmRhZTMzYjhiODJiICgiZHJtL2k5
MTU6IFVzZSBtYXhpbXVtIHdyaXRlCj4gPiBmbHVzaCBmb3IgcHdyaXRlX2d0dCIpIHdhcyB0aGF0
IHdlIG5lZWRlZCB0byBvdXIgZnVsbCB3cml0ZSBiYXJyaWVyCj4gPiBiZWZvcmUgY2hhbmdpbmcg
dGhlIEdHVFQgUFRFIHRvIGVuc3VyZSB0aGF0IG91ciBpbmRpcmVjdCB3cml0ZXMgdGhyb3VnaAo+
ID4gdGhlIEdUVCBsYW5kZWQgYmVmb3JlIHRoZSBQVEUgY2hhbmdlZCAoYW5kIHRoZSB3cml0ZXMg
ZW5kIHVwIGluIGEKPiA+IGRpZmZlcmVudCBwYWdlKS4gVGhhdCBhbHNvIGFwcGxpZXMgdG8gb3Vy
IEdHVFQgcmVsb2NhdGlvbiBwYXRoLgo+IAo+IENocmlzLAo+IAo+IEFzIGkgdW5kZXJzdGFuZCwg
Y2hhbmdpbmcgdGhlIEdHVFQgUFRFIGFsc28gYW4gaW5kaXJlY3Qgd3JpdGUuIElmIHNvLCBpc24n
dCBhIHdtYigpCj4gc2hvdWxkIGJlIGdvb2QgZW5vdWdoLgoKSGEhIElmIG9ubHkgdGhhdCB3YXMg
dHJ1ZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
