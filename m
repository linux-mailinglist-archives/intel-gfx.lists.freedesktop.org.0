Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCA580134
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 21:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40F66ED5F;
	Fri,  2 Aug 2019 19:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D8C6ED5F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 19:46:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17825975-1500050 for multiple; Fri, 02 Aug 2019 20:46:53 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHPztTa-K-7zjBSVGZy3sFy8F-EoqhgoL14R3x05SRTN=g@mail.gmail.com>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-16-chris@chris-wilson.co.uk>
 <CAM0jSHPztTa-K-7zjBSVGZy3sFy8F-EoqhgoL14R3x05SRTN=g@mail.gmail.com>
Message-ID: <156477521103.6598.15357322110693273142@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 02 Aug 2019 20:46:51 +0100
Subject: Re: [Intel-gfx] [PATCH 15/17] drm/i915: Flush the freed object list
 on file close
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDIgMTg6MDA6NTEpCj4gT24gVHVlLCAzMCBK
dWwgMjAxOSBhdCAxNDo0OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IAo+IEluIG5lZWQgb2YgYSBwcm9wZXIgY29tbWl0IG1lc3NhZ2UuCgon
VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3ZlcwpEaWQgZ3lyZSBhbmQgZ3JpbWJsZSBp
biB0aGUgd2FibGU6CkFsbCBtaW1zeSB3ZXJlIHRoZSBib3JvZ292ZXMuLi4KClRoZSBwcm9ibGVt
IHRoYXQgd2UgYXR0ZW1wdCB0byBhZGRyZXNzIGlzIHRoZSBsYWNrIG9mIGJhY2twcmVzc3VyZQpl
eGFjZXJiYXRlZCBieSBwdXNoaW5nIG1vcmUgZGVmZXJyZWQgZnJlZXMgb24gUkNVLiBCZWZvcmUg
YXBwbHlpbmcgdGhlCmNsZWFudXAsIGl0J3MgZWFzeSBmb3IgZ2VtX2N0eF9jcmVhdGUvZmlsZXMg
dG8gcHVzaCBzZXZlcmFsIGh1bmRyZWQKdGhvdXNhbmQgb2JqZWN0cyBvbnRvIHRoZSBSQ1UgcXVl
dWVzLgoKU29tZXRoaW5nIGFsb25nIHRob3NlIGxpbmVzLCB0aGFua3MgZm9yIHRoZSByZW1pbmRl
ci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
