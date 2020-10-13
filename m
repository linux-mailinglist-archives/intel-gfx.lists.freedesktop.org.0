Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5085028D180
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 17:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE77891C3;
	Tue, 13 Oct 2020 15:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB091891C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 15:51:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22704382-1500050 for multiple; Tue, 13 Oct 2020 16:51:01 +0100
MIME-Version: 1.0
In-Reply-To: <20201007120329.17076-2-ville.syrjala@linux.intel.com>
References: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
 <20201007120329.17076-2-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 16:51:00 +0100
Message-ID: <160260426090.2946.5418082025217279551@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix MOCS PTE setting for gen9+
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTA3IDEzOjAzOjI4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gRml4IHVwIHRo
ZSBNT0NTIFBURSBzZXR0aW5nIHRvIHJlYWxseSBnZXQgdGhlIExMQyBjYWNoZWFiaWxpdHkKPiBm
cm9tIHRoZSBQVEUgcmF0aGVyIHRoYW4gaGFyZG9jb2RpbmcgaXQgdG8gTExDIG9yIExMQytlTExD
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3Mu
YyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiBpbmRleCA2MzJlMDhh
NDU5MmIuLjZmNzcxYTQ4MjYwOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMKPiBAQCAtMTI0LDcgKzEyNCw3IEBAIHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlIHsKPiAg
ICAgICAgICAgICAgICAgICAgTEVfMV9VQyB8IExFX1RDXzJfTExDX0VMTEMsIFwKPiAgICAgICAg
ICAgICAgICAgICAgTDNfMV9VQyksIFwKPiAgICAgICAgIE1PQ1NfRU5UUlkoSTkxNV9NT0NTX1BU
RSwgXAo+IC0gICAgICAgICAgICAgICAgICBMRV8wX1BBR0VUQUJMRSB8IExFX1RDXzJfTExDX0VM
TEMgfCBMRV9MUlVNKDMpLCBcCj4gKyAgICAgICAgICAgICAgICAgIExFXzBfUEFHRVRBQkxFIHwg
TEVfVENfMF9QQUdFVEFCTEUgfCBMRV9MUlVNKDMpLCBcCj4gICAgICAgICAgICAgICAgICAgIEwz
XzNfV0IpCj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3NfZW50cnkgc2ts
X21vY3NfdGFibGVbXSA9IHsKPiBAQCAtMjc0LDcgKzI3NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSBpY2xfbW9jc190YWJsZVtdID0gewo+ICAgICAgICAgICAg
ICAgICAgICBMM18xX1VDKSwKPiAgICAgICAgIC8qIEJhc2UgLSBMMyArIExlQ0M6UEFUIChEZXBy
ZWNhdGVkKSAqLwo+ICAgICAgICAgTU9DU19FTlRSWShJOTE1X01PQ1NfUFRFLAo+IC0gICAgICAg
ICAgICAgICAgICBMRV8wX1BBR0VUQUJMRSB8IExFX1RDXzFfTExDLAo+ICsgICAgICAgICAgICAg
ICAgICBMRV8wX1BBR0VUQUJMRSB8IExFX1RDXzBfUEFHRVRBQkxFLAo+ICAgICAgICAgICAgICAg
ICAgICBMM18zX1dCKSwKCk1ha2VzIHNlbnNlLiBEaWQgdGhlIFBBR0VUQUJMRSBiaXQgY2Fycnkg
Zm9yd2FyZCBpbnRvIHRnbD8gVGhhdCBtaWdodApmaXh1cCB0aGUgbmV3IHJlZ3Jlc3Npb24uLi4K
CkZvciB0aGUgdHdvIGdpdmVuIGhlcmUsIGl0IGNlcnRhaW5seSBleGlzdHMgYW5kIG1ha2VzIGEg
d2hvbGUgbG90IG9mCnNlbnNlLApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
