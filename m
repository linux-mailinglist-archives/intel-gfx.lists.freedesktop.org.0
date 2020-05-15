Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1593D1D5650
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 18:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798E86ECF6;
	Fri, 15 May 2020 16:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32DF6ECF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 16:40:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21207177-1500050 for multiple; Fri, 15 May 2020 17:40:45 +0100
MIME-Version: 1.0
In-Reply-To: <20191028113036.27553-5-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
 <20191028113036.27553-5-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158956084395.29850.7604358380652503253@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 15 May 2020 17:40:43 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Enable pipe gamma for the
 overlay
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEwLTI4IDExOjMwOjM1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2UgcGFzcyB0
aGUgcGxhbmUgZGF0YSB0aHJvdWdoIHRoZSBwaXBlIGdhbW1hIGZvciBhbGwgdGhlIG90aGVyCj4g
cGxhbmVzLiBDYW4ndCBzZWUgd2h5IHdlIHNob3VsZCB0cmVhdCB0aGUgb3ZlcmxheSBkaWZmZXJl
bnRseSwKPiBzbyBsZXQncyBlbmFibGUgcGlwZSBnYW1tYSBmb3IgaXQgYXMgd2VsbC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXku
YyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCj4gaW5kZXggZTUxNTkyZTM1
ZWZlLi4zMjQxY2M5OGUyNTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9vdmVybGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX292ZXJsYXkuYwo+IEBAIC03ODQsNiArNzg0LDggQEAgc3RhdGljIGludCBpbnRlbF9v
dmVybGF5X2RvX3B1dF9pbWFnZShzdHJ1Y3QgaW50ZWxfb3ZlcmxheSAqb3ZlcmxheSwKPiAgICAg
ICAgICAgICAgICAgaWYgKGNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSAmJgo+ICAgICAgICAgICAg
ICAgICAgICAgY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkK
PiAgICAgICAgICAgICAgICAgICAgICAgICBvY29uZmlnIHw9IE9DT05GX0NDX09VVF84QklUOwo+
ICsgICAgICAgICAgICAgICBpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIG9jb25maWcgfD0gT0NPTkZfR0FNTUEyX0VOQUJMRTsKCk1ha2VzIHNl
bnNlLApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
