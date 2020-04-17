Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0057C1AE62A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1826E8D7;
	Fri, 17 Apr 2020 19:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC566E8D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:46:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20938129-1500050 for multiple; Fri, 17 Apr 2020 20:45:59 +0100
MIME-Version: 1.0
In-Reply-To: <20200417134720.16654-4-ville.syrjala@linux.intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
 <20200417134720.16654-4-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158715275837.2062.11166502344324413259@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 20:45:58 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Pass encoder all the way to
 intel_ddi_transcoder_func_reg_val_get()
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA0LTE3IDE0OjQ3OjIwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUGFzcyB0aGUg
ZW5jb2RlciBhbGwgdGhlIHdheSBkb3duIHRvCj4gaW50ZWxfZGRpX3RyYW5zY29kZXJfZnVuY19y
ZWdfdmFsX2dldCgpLiBBbGxvd3MgdXMgZWxpbWluYXRlIHRoZQo+IGludGVsX2RkaV9nZXRfY3J0
Y19lbmNvZGVyKCkgZXllc29yZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydC5jICAgIHwgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICB8IDM5ICsrKysrKy0tLS0tLS0tLS0tLS0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oICAgIHwgIDMgKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8ICAyICstCj4gIDQgZmls
ZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCj4gaW5kZXggMGE3NTgyMWE2ODBiLi4y
ZjViOWE0YmFhZmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0
LmMKPiBAQCAtMzA4LDcgKzMwOCw3IEBAIHN0YXRpYyB2b2lkIGhzd19lbmFibGVfY3J0KHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAKPiAgICAgICAgIGRybV9XQVJOX09OKCZk
ZXZfcHJpdi0+ZHJtLCAhY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNvZGVyKTsKPiAgCj4gLSAgICAg
ICBpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhjcnRjX3N0YXRlKTsKPiArICAgICAg
IGludGVsX2RkaV9lbmFibGVfdHJhbnNjb2Rlcl9mdW5jKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+
ICAKPiAgICAgICAgIGludGVsX2VuYWJsZV9waXBlKGNydGNfc3RhdGUpOwo+ICAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCA2NDBjZjM0ZjZlMjQuLjg4
ZWRiNzAyYjZhYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Ywo+IEBAIC0xMzUxLDI3ICsxMzUxLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2luaXRfZHBf
YnVmX3JlZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiAgICAgICAgIGludGVsX2Rw
LT5EUCB8PSBERElfUE9SVF9XSURUSChpbnRlbF9kcC0+bGFuZV9jb3VudCk7Cj4gIH0KPiAgCj4g
LXN0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqCj4gLWludGVsX2RkaV9nZXRfY3J0Y19lbmNv
ZGVyKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+IC17Cj4gLSAgICAgICBzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Cj4gLSAgICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwgKnJldCA9IE5VTEw7Cj4gLSAgICAgICBpbnQgbnVtX2VuY29kZXJzID0gMDsK
PiAtCj4gLSAgICAgICBmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoZGV2LCAmY3J0Yy0+YmFzZSwg
ZW5jb2Rlcikgewo+IC0gICAgICAgICAgICAgICByZXQgPSBlbmNvZGVyOwo+IC0gICAgICAgICAg
ICAgICBudW1fZW5jb2RlcnMrKzsKPiAtICAgICAgIH0KPiAtCj4gLSAgICAgICBpZiAobnVtX2Vu
Y29kZXJzICE9IDEpCj4gLSAgICAgICAgICAgICAgIGRybV9XQVJOKGRldiwgMSwgIiVkIGVuY29k
ZXJzIG9uIGNydGMgZm9yIHBpcGUgJWNcbiIsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgIG51
bV9lbmNvZGVycywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgcGlwZV9uYW1lKGNydGMtPnBp
cGUpKTsKPiAtCj4gLSAgICAgICBCVUdfT04ocmV0ID09IE5VTEwpOwo+IC0gICAgICAgcmV0dXJu
IHJldDsKPiAtfQoKV29ydGggaXQuIEV5ZXNvcmUsIG1vcmUgbGlrZSBib29ieSB0cmFwLgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
