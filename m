Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B97D29443D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 23:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692D36E055;
	Tue, 20 Oct 2020 21:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3B66E055
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 21:09:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22770982-1500050 for multiple; Tue, 20 Oct 2020 22:09:17 +0100
MIME-Version: 1.0
In-Reply-To: <20201020194330.28568-1-ville.syrjala@linux.intel.com>
References: <20201020194330.28568-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 22:09:15 +0100
Message-ID: <160322815540.17091.3501283187261356616@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Reject 90/270 degree rotated
 initial fbs
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTIwIDIwOjQzOjI5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2UgZG9uJ3Qg
Y3VycmVudGx5IGhhbmRsZSB0aGUgaW5pdGlhbCBmYiByZWFkb3V0IGNvcnJlY3RseQo+IGZvciA5
MC8yNzAgZGVncmVlIHJvdGF0ZWQgc2Nhbm91dC4gUmVqZWN0IGl0Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDYwYmFjZGJlN2Y5Mi4uZmQw
MTAzZjZjYzk1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiBAQCAtMTA2OTYsNiArMTA2OTYsMTAgQEAgc2tsX2dldF9pbml0aWFsX3BsYW5l
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgICAgICAgICAgICB2YWwgJiBQTEFO
RV9DVExfRkxJUF9IT1JJWk9OVEFMKQo+ICAgICAgICAgICAgICAgICBwbGFuZV9jb25maWctPnJv
dGF0aW9uIHw9IERSTV9NT0RFX1JFRkxFQ1RfWDsKPiAgCj4gKyAgICAgICAvKiA5MC8yNzAgZGVn
cmVlIHJvdGF0aW9uIHdvdWxkIHJlcXVpcmUgZXh0cmEgd29yayAqLwo+ICsgICAgICAgaWYgKGRy
bV9yb3RhdGlvbl85MF9vcl8yNzAocGxhbmVfY29uZmlnLT5yb3RhdGlvbikpCj4gKyAgICAgICAg
ICAgICAgIGdvdG8gZXJyb3I7CgpPbmx5IHNrbCsgaGF2ZSA5MC8yNzAgcm90YXRpb24gc28gaTl4
eF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoKSBkb2VzCm5vdCByZXF1aXJlIHRoZSBjaGVjay4K
ZXJyb3I6IHNlZW1zIHZhbGlkCgpBbmQgYXMgZXZpZGVuY2VkIGJ5IHRoZSBuZXh0IHBhdGNoLCBw
bGVudHkgbmVlZHMgdG8gYmUgZG9uZSB0byBoYW5kbGUKOTAvMjcwLgoKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKSSBleHBlY3QgeW91IGludGVu
ZCBjYzpzdGFibGUgZm9yIHNhbml0eT8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
