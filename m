Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83624137675
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91D16EA8E;
	Fri, 10 Jan 2020 18:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFFA6EA8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:54:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19838716-1500050 for multiple; Fri, 10 Jan 2020 18:54:14 +0000
MIME-Version: 1.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
Message-ID: <157868245324.10140.16798394715431007470@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 Jan 2020 18:54:13 +0000
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Make a copy of the ggtt view
 for slave plane
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTEwIDE4OjMyOjIzKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gaW50ZWxfcHJl
cGFyZV9wbGFuZV9mYigpIHdpbGwgYWx3YXlzIHBpbiBwbGFuZV9zdGF0ZS0+aHcuZmIgd2hlbmV2
ZXIKPiBpdCBpcyBwcmVzZW50LiBXZSBjb3B5IHRoYXQgZnJvbSB0aGUgbWFzdGVyIHBsYW5lIHRv
IHRoZSBzbGF2ZSBwbGFuZSwKPiBidXQgd2UgZmFpbCB0byBjb3B5IHRoZSBjb3JyZXNwb25kaW5n
IGdndHQgdmlldy4gVGh1cyB3aGVuIGl0IGNvbWVzIHRpbWUKPiB0byBwaW4gdGhlIHNsYXZlIHBs
YW5lJ3MgZmIgd2UgdXNlIHNvbWUgc3RhbGUgZ2d0dCB2aWV3IGxlZnQgb3ZlciBmcm9tCj4gdGhl
IGxhc3QgdGltZSB0aGUgcGxhbmUgd2FzIHVzZWQgYXMgYSBub24tc2xhdmUgcGxhbmUuIElmIHRo
YXQgcHJldmlvdXMKPiB1c2UgaW52b2x2ZWQgOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiBvciByZW1h
cHBpbmcgd2UnbGwgdHJ5IHRvIHNodWZmbGUKPiB0aGUgcGFnZXMgb2YgdGhlIG5ldyBmYiBhcm91
bmQgYWNjb3JkaW5naW5nbHkuIEhvd2V2ZXIgdGhlIG5ldwo+IGZiIG1heSBiZSBiYWNrZWQgYnkg
YSBibyB3aXRoIGxlc3MgcGFnZXMgdGhhbiB3aGF0IHRoZSBnZ3R0IHZpZXcKPiByb3RhdGlvbi9y
ZW1hcHBlZCBpbmZvIHJlcXVpcmVzLCBhbmQgc28gd2Ugd2UgdHJpcCBhIEdFTV9CVUcoKS4KPiAK
PiBTdGVwcyB0byByZXByb2R1Y2Ugb24gaWNsOgo+IDEuIHBsYW5lIDE6IHdoYXRldmVyCj4gICAg
cGxhbmUgNjogbGFyZ2lzaCAhTlYxMiBmYiArIDkwIGRlZ3JlZSByb3RhdGlvbgo+IDIuIHBsYW5l
IDE6IHNtYWxsaXNoIE5WMTIgZmIKPiAgICBwbGFuZSA2OiBtYWtlIGludmlzaWJsZSBzbyBpdCBn
ZXRzIHNsYXZlZCB0byBwbGFuZSAxCj4gMy4gR0VNX0JVRygpCj4gCj4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTUxCj4gRml4ZXM6IDFmNTk0YjIwOWZl
MSAoImRybS9pOTE1OiBSZW1vdmUgc3BlY2lhbCBjYXNlIHNsYXZlIGhhbmRsaW5nIGR1cmluZyBo
dyBwcm9ncmFtbWluZywgdjMuIikKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+IGluZGV4IDU5YzM3NTg3OTE4Ni4uZmFmYjY3Njg5ZGVlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTIzNjYsNiArMTIz
NjYsNyBAQCBzdGF0aWMgaW50IGljbF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgICAgICAgICAgICAgICAgLyogQ29weSBwYXJhbWV0ZXJz
IHRvIHNsYXZlIHBsYW5lICovCj4gICAgICAgICAgICAgICAgIGxpbmtlZF9zdGF0ZS0+Y3RsID0g
cGxhbmVfc3RhdGUtPmN0bCB8IFBMQU5FX0NUTF9ZVVY0MjBfWV9QTEFORTsKPiAgICAgICAgICAg
ICAgICAgbGlua2VkX3N0YXRlLT5jb2xvcl9jdGwgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfY3RsOwo+
ICsgICAgICAgICAgICAgICBsaW5rZWRfc3RhdGUtPnZpZXcgPSBwbGFuZV9zdGF0ZS0+dmlldzsK
PiAgICAgICAgICAgICAgICAgbWVtY3B5KGxpbmtlZF9zdGF0ZS0+Y29sb3JfcGxhbmUsIHBsYW5l
X3N0YXRlLT5jb2xvcl9wbGFuZSwKPiAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihsaW5r
ZWRfc3RhdGUtPmNvbG9yX3BsYW5lKSk7CgpTbyB0aGlzIGJpdCBpcyBqdXN0IGNvcHlpbmcgYWNy
b3NzIHRoZSByZXN1bHRzIG9mCmludGVsX3BsYW5lX2NvbXB1dGVfZ3R0KCk/CgpXaGF0IGhhcHBl
bnMgZm9yIGVxdWl2YWxlbnQgb2YgaW50ZWxfcGxhbmVfbmVlZHNfcmVtYXAoKT8KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
