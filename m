Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B871214EC1B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009D789954;
	Fri, 31 Jan 2020 11:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB4989954
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:55:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20071502-1500050 for multiple; Fri, 31 Jan 2020 11:55:02 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
 <87y2tn973j.fsf@gaia.fi.intel.com>
In-Reply-To: <87y2tn973j.fsf@gaia.fi.intel.com>
Message-ID: <158047170013.2430.15418748422936870751@skylake-alporthouse-com>
Date: Fri, 31 Jan 2020 11:55:00 +0000
Subject: Re: [Intel-gfx] [CI 1/3] drm/i915/gt: Skip rmw for masked registers
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDIwLTAxLTMxIDExOjUxOjQ0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBIG1hc2tlZCByZWdp
c3RlciBkb2VzIG5vdCBuZWVkIHJtdyB0byB1cGRhdGUsIGFuZCBpdCBpcyBiZXN0IG5vdCB0byB1
c2UKPiA+IHN1Y2ggYSBzZXF1ZW5jZS4KPiA+Cj4gPiBSZXBvcnRlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAzMiArKysrKysrKysrKysrKy0tLS0tLS0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBp
bmRleCA1YTdkYjI3OWY3MDIuLmU0YzJiNmQ0MmY0NiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+IEBAIC0xMTYsNyArMTE2LDggQEAg
c3RhdGljIHZvaWQgX3dhX2FkZChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGNvbnN0IHN0cnVj
dCBpOTE1X3dhICp3YSkKPiA+ICAgICAgICAgICAgICAgfSBlbHNlIHsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICB3YV8gPSAmd2FsLT5saXN0W21pZF07Cj4gPiAgCj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgaWYgKCh3YS0+bWFzayAmIH53YV8tPm1hc2spID09IDApIHsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBpZiAoKHdhLT5tYXNrIHwgd2FfLT5tYXNrKSAmJgo+IAo+IERvbid0IHdl
IHdhbnQgdG8gZGlzY2FyZCBpZiBzb21lb25lIHRyaWVzIHRvIGRlbW90ZSBhIG1hc2tlZAo+IG9u
ZSBpbnRvIGEgcGxhaW4/CgpUaGF0IHNob3VsZCB0aHJvdyB0aGUgZXJyb3IsIHJpZ2h0PwoKSWYg
ZWl0aGVyIHVzZWQgYSBtYXNrIGFuZCBub3cgd2UgZG9uJ3QsIHRoZW4gMCAmIHggPT0gMCA9PiBE
Uk1fRVJST1IuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
