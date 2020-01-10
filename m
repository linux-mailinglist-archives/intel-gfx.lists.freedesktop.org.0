Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32242137644
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFD089EEB;
	Fri, 10 Jan 2020 18:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B2F89EEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:42:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19838630-1500050 for multiple; Fri, 10 Jan 2020 18:42:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
 <20200110183228.8199-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20200110183228.8199-5-ville.syrjala@linux.intel.com>
Message-ID: <157868174583.10140.13408486478840554003@skylake-alporthouse-com>
Date: Fri, 10 Jan 2020 18:42:25 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Balance prepare_fb/cleanup_fb
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTEwIDE4OjMyOjI3KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gaW50ZWxfcHJl
cGFyZV9wbGFuZV9mYigpIGJhaWxzIGVhcmx5IGlmIHRoZXJlIGlzIG5vIGZiIChvciByYXRoZXIK
PiBubyBvYmosIHdoaWNoIGlzIHRoZSBzYW1lIHRoaW5nKS4gaW50ZWxfY2xlYW51cF9wbGFuZV9m
YigpIGRvZXMgbm90Lgo+IFRoaXMgbWVhbnMgdGhlIHN0ZXBzIHBlcmZvcm1lZCBieSBpbnRlbF9j
bGVhbnVwX3BsYW5lX2ZiKCkgYXJlbid0Cj4gYmFsYW5jZWQgd2l0aCB3aXRoIHdoYXQgd2FzIGRv
bmUgaW50ZWxfcHJlcGFyZV9wbGFuZV9mYigpIGlmIHRoZXJlCj4gaXMgbm8gZmIgZm9yIHRoZSBw
bGFuZS4gVGhlc2UgaG9va3MgZ2V0IGNhbGxlZCBmb3IgZXZlcnkgcGxhbmUgaW4KPiB0aGUgc3Rh
dGUgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZXkgaGF2ZSBhbiBmYiBvciBub3QuCj4gCj4gQWRk
IGEgbWF0Y2hpbmcgbnVsbCBvYmogY2hlY2sgdG8gaW50ZWxfY2xlYW51cF9wbGFuZV9mYigpIHRv
IHJlc3RvcmUKPiB0aGUgYmFsYW5jZS4KPiAKPiBOb3RlIHRoYXQgaW50ZWxfY2xlYW51cF9wbGFu
ZV9mYigpIGhhcyBzdWZmaWNpZW50IHByb3RlY3Rpb25zCj4gYWxyZWFkeSBpbiBwbGFjZSB0aGF0
IHRoZSBpbWJhbGFuY2UgZG9lc24ndCBjYXVzZSBhbnkgcmVhbCBwcm9ibGVtcy4KPiBCdXQgaGF2
aW5nIHRoaW5ncyBiZSBpbiBiYWxhbmNlIHNlZW1zIG5pY2VyIGFueXdheSwgYW5kIG1pZ2h0IGhl
bHAKPiBhdm9pZCBzb21lIHN1cnByaXNlcyBpbiB0aGUgZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDI3YjQzODIyMzQ0Yi4uZjc5
YTYzNzZiYmYwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiBAQCAtMTU4NjgsNiArMTU4NjgsMTAgQEAgaW50ZWxfY2xlYW51cF9wbGFuZV9m
YihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiAgICAgICAgIHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlID0KPiAgICAgICAgICAgICAgICAgdG9faW50ZWxfYXRvbWljX3N0YXRlKG9s
ZF9wbGFuZV9zdGF0ZS0+dWFwaS5zdGF0ZSk7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5kZXYpOwo+ICsgICAgICAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGludGVsX2ZiX29iaihvbGRfcGxhbmVfc3RhdGUtPmh3
LmZiKTsKPiArCj4gKyAgICAgICBpZiAoIW9iaikKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+
ICAKPiAgICAgICAgIGlmIChzdGF0ZS0+cnBzX2ludGVyYWN0aXZlKSB7Cj4gICAgICAgICAgICAg
ICAgIGludGVsX3Jwc19tYXJrX2ludGVyYWN0aXZlKCZkZXZfcHJpdi0+Z3QucnBzLCBmYWxzZSk7
CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
