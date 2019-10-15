Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E206BD7ABB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FD76E84A;
	Tue, 15 Oct 2019 16:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED066E846
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:03:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846500-1500050 for multiple; Tue, 15 Oct 2019 17:03:15 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-7-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-7-mika.kuoppala@linux.intel.com>
Message-ID: <157115539317.22469.988757831872672504@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:03:13 +0100
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/tgl: Wa_1409170338
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQ1KQo+IEF2b2lkIHBvc3Np
YmxlIGhhbmcgaW4gdHNnLHZmZSB1bml0cyBieSBrZWVwaW5nCj4gbDMgY2xvY2tzIHJ1bm5pbmdz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IGI3
ZDdmZGM1YmE5MC4uNGI3NzQwYWFmM2JmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTkwMiw2ICs5MDIsMTIgQEAgdGdsX2d0X3dvcmth
cm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCkKPiAgICAgICAgICAgICAgICAgd2Ffd3JpdGVfb3Iod2FsLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBTVUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBDUFNTVU5JVF9DTEtHQVRFX0RJUyk7Cj4gKwo+ICsgICAg
ICAgLyogV2FfMTQwOTE4MDMzODp0Z2wgKi8KPiArICAgICAgIGlmIChJU19UR0xfUkVWSUQoaTkx
NSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQo+ICsgICAgICAgICAgICAgICB3YV93cml0
ZV9vcih3YWwsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFNMSUNFX1VOSVRfTEVWRUxf
Q0xLR0FURSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgTDNfQ0xLR0FURV9ESVMgfCBM
M19DUjJYX0NMS0dBVEVfRElTKTsKPiAgfQoKSSd2ZSBzZWVuIHRoaXMgc29tZXdoZXJlIGJlZm9y
ZS4uLiA7KQpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
