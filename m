Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B10331DE99
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3679B6E9A8;
	Wed, 17 Feb 2021 17:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09416E9A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:49:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23893879-1500050 for multiple; Wed, 17 Feb 2021 17:49:37 +0000
MIME-Version: 1.0
In-Reply-To: <20210217162050.13803-1-ville.syrjala@linux.intel.com>
References: <20210217162050.13803-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 17 Feb 2021 17:49:37 +0000
Message-ID: <161358417706.15107.9792013223984899132@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wait for scanout to stop when
 sanitizing planes
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIxLTAyLTE3IDE2OjIwOjUwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2hlbiB3ZSBz
YW5pdGl6ZSBwbGFuZXMgbGV0J3Mgd2FpdCBmb3IgdGhlIHNjYW5vdXQgdG8gc3RvcAo+IGJlZm9y
ZSB3ZSBsZXQgdGhlIHN1YnNlcXVlbnQgY29kZSB0ZWFyIGRvd24gdGhlIGdndHQgbWFwcGluZ3MK
PiBhbmQgd2hhdG5vdC4gQ3VyZXMgYW4gdW5kZXJydW4gb24gbXkgaXZiIHdoZW4gSSBib290IHdp
dGgKPiBWVC1kIGVuYWJsZWQgYW5kIHRoZSBCSU9TIGZiIGdldHMgdGhyb3duIG91dCBkdWUgdG8g
c3RvbGVuCj4gYmVpbmcgY29uc2lkZXJlZCB1bnVzYWJsZSB3aXRoIFZULWQgYWN0aXZlLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYWNhZGUwMDRl
OGIxLi4zZTJjMTkyZWM3MDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0yNDAzLDYgKzI0MDMsNyBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wbGFuZV9kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAgICAg
ICAgICAgICAgICBpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2
LCBjcnRjLT5waXBlLCBmYWxzZSk7Cj4gIAo+ICAgICAgICAgaW50ZWxfZGlzYWJsZV9wbGFuZShw
bGFuZSwgY3J0Y19zdGF0ZSk7Cj4gKyAgICAgICBpbnRlbF93YWl0X2Zvcl92YmxhbmsoZGV2X3By
aXYsIGNydGMtPnBpcGUpOwoKSSBjb3VsZCBvbmx5IGZpbmQgcGF0aHMgaGVyZSBmcm9tIHNhbml0
aXplLCBzbyBpdCBsb29rcyBzYWZlIGZyb20gdGhlCnByb3NwZWN0IG9mIGFkZGluZyByYW5kb20g
ZGVsYXlzIHRvIHVzZXJzcGFjZS4KCk1ha2VzIHNlbnNlIHNvLApSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
