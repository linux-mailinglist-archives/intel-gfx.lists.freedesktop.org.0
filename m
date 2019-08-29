Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6D1A2854
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 22:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8B0893A8;
	Thu, 29 Aug 2019 20:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739DE893A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 20:45:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18309953-1500050 for multiple; Thu, 29 Aug 2019 21:45:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190829201919.21493-1-matthew.auld@intel.com>
In-Reply-To: <20190829201919.21493-1-matthew.auld@intel.com>
Message-ID: <156711154778.12323.684700213991044166@skylake-alporthouse-com>
Date: Thu, 29 Aug 2019 21:45:47 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915:
 s/for_each_sgt_dma/for_each_sgt_daddr/
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMjkgMjE6MTk6MTkpCj4gVGhlIHNnX3RhYmxl
IGZvciBvdXIgYmFja2luZyBzdG9yZSBtaWdodCBjb250YWluIGFkZHJlc3NlcyBmcm9tCj4gc3Rv
bGVuLW1lbW9yeSBvciBpbiB0aGUgZnV0dXJlIGxvY2FsLW1lbW9yeSwgYXQgd2hpY2ggcG9pbnQg
dGhpcyBpcyBubwo+IGxvbmdlciBhIGRtYS1pdGVyYXRvci4gQXMgYSBjb25zZXF1ZW5jZSB3ZSBz
aG91bGQgbm93IGJyZWFrIG9uIE5VTEwKPiBpdGVyLnNncCwgaW5zdGVhZCBvZiBkbWFwID09IDAg
d2hpY2ggaXMgY29uc2lkZXJlZCBhbiBpbnZhbGlkIGRtYQo+IGFkZHJlc3MuCgpGdW5jdGlvbiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbGQgICAgIG5ldyAgIGRlbHRhCmdl
bjhfZ2d0dF9pbnNlcnRfZW50cmllcyAgICAgICAgICAgICAgICAgICAgIDIxMSAgICAgMTkyICAg
ICAtMTkKZ2VuNl9nZ3R0X2luc2VydF9lbnRyaWVzICAgICAgICAgICAgICAgICAgICAgMjkyICAg
ICAyNjIgICAgIC0zMAppOTE1X2Vycm9yX29iamVjdF9jcmVhdGUgICAgICAgICAgICAgICAgICAg
ICA5OTYgICAgIDk1NCAgICAgLTQyCgpXaHkgZGlkbid0IHlvdSBzYXkgc28hCgo+IFNpZ25lZC1v
ZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgo+IC0jZGVmaW5lIF9fZm9yX2VhY2hf
c2d0X2RtYShfX2RtYXAsIF9faXRlciwgX19zZ3QsIF9fc3RlcCkgICAgICAgICAgICAgIFwKPiAr
I2RlZmluZSBfX2Zvcl9lYWNoX3NndF9kYWRkcihfX2RwLCBfX2l0ZXIsIF9fc2d0LCBfX3N0ZXAp
ICAgICAgICAgICAgICBcCj4gICAgICAgICBmb3IgKChfX2l0ZXIpID0gX19zZ3RfaXRlcigoX19z
Z3QpLT5zZ2wsIHRydWUpOyAgICAgICAgICAgICAgICAgXAo+IC0gICAgICAgICAgICAoKF9fZG1h
cCkgPSAoX19pdGVyKS5kbWEgKyAoX19pdGVyKS5jdXJyKTsgICAgICAgICAgICAgICAgIFwKPiAr
ICAgICAgICAgICAgKChfX2RwKSA9IChfX2l0ZXIpLmRtYSArIChfX2l0ZXIpLmN1cnIpLCAoX19p
dGVyKS5zZ3A7ICAgICBcCj4gICAgICAgICAgICAgICgoKF9faXRlcikuY3VyciArPSAoX19zdGVw
KSkgPj0gKF9faXRlcikubWF4KSA/ICAgICAgICAgICAgXAo+ICAgICAgICAgICAgICAoX19pdGVy
KSA9IF9fc2d0X2l0ZXIoX19zZ19uZXh0KChfX2l0ZXIpLnNncCksIHRydWUpLCAwIDogMCkKCl9f
c2d0X2l0ZXIoKSBzZXRzIGFsbCB0byAwIGlmIF9fc2dfbmV4dCgpIHJlcG9ydHMgdGhlIGVuZCBv
ZiB0aGUgY2hhaW4uCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
