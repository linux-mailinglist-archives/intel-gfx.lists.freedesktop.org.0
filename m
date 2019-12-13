Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C43911E722
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 16:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EF86E92A;
	Fri, 13 Dec 2019 15:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC4A6E914
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 15:54:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19569789-1500050 for multiple; Fri, 13 Dec 2019 15:54:36 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
Message-ID: <157625247338.7535.668231195608100084@skylake-alporthouse-com>
Date: Fri, 13 Dec 2019 15:54:33 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add device name to display
 tracepoints
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEyLTEzIDE1OjI4OjIzKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSW5jbHVkZSBk
ZXZfbmFtZSgpIGluIHRoZSB0cmFjcG9pbnRzIHNvIG9uZSBjYW4gZmlsdGVyIGJhc2VkIG9uCj4g
dGhlIGRldmljZS4KPiAKPiBFeGFtcGxlOgo+IGVjaG8gJ2Rldj09IjAwMDA6MDA6MDIuMCInID4g
ZXZlbnRzL2k5MTUvaW50ZWxfY3B1X2ZpZm9fdW5kZXJydW4vZmlsdGVyCj4gCj4gVE9ETzogbWF5
YmUgZG9uJ3QgYm90aCBzcGVjaWZ5aW5nIHRoZSBmaWVsZCBuYW1lIGFsd2F5cyBhbmQganVzdAo+
ICAgICAgIG1ha2UgaXQgJ2RldicgKG9yIHdoYXRldmVyKSBhbHdheXM/Cj4gVE9ETzogYWRkIGZv
ciBvdGhlciB0cmFjcG9pbnRzIHRvbyBpZiB0aGlzIGlzIGRlZW1lZCBnb29kIGVub3VnaAo+IAo+
IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oIHwgOTYgKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNjUgaW5zZXJ0
aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdHJhY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHJhY2UuaAo+
IGluZGV4IDdlZjdhMWUxNjY0Yy4uODkzMWI2NzU2ZjQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdHJhY2UuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdHJhY2UuaAo+IEBAIC0yMCwxMSArMjAsMTggQEAKPiAgCj4gIC8qIHdhdGVybWFyay9maWZv
IHVwZGF0ZXMgKi8KPiAgCj4gKyNkZWZpbmUgX19kZXZfbmFtZV9pOTE1KGZpZWxkLCBpOTE1KSBf
X3N0cmluZyhmaWVsZCwgZGV2X25hbWUoKGk5MTUpLT5kcm0uZGV2KSkKPiArI2RlZmluZSBfX2Rl
dl9uYW1lX2NydGMoZmllbGQsIGNydGMpIF9fc3RyaW5nKGZpZWxkLCBkZXZfbmFtZSgoY3J0Yykt
PmJhc2UuZGV2LT5kZXYpKQo+ICsjZGVmaW5lIF9fYXNzaWduX2Rldl9uYW1lX2k5MTUoZmllbGQs
IGk5MTUpIF9fYXNzaWduX3N0cihmaWVsZCwgZGV2X25hbWUoKGk5MTUpLT5kcm0uZGV2KSkKPiAr
I2RlZmluZSBfX2Fzc2lnbl9kZXZfbmFtZV9jcnRjKGZpZWxkLCBjcnRjKSBfX2Fzc2lnbl9zdHIo
ZmllbGQsIGRldl9uYW1lKChjcnRjKS0+YmFzZS5kZXYtPmRldikpCj4gKyNkZWZpbmUgX19nZXRf
ZGV2X25hbWUoZmllbGQpIF9fZ2V0X3N0cihmaWVsZCkKClN0b3JpbmcgdGhlIHN0cmluZyBpcyBx
dWl0ZSBleHBlbnNpdmUsIEkgdGhvdWdodC4gQ2FuIHdlIHN0YXNoIHRoZSBpOTE1CmFuZCBzdHJp
bmdpZnkgaW4gdGhlIFRQX3ByaW50az8gT3IgaXMgc3Rhc2hpbmcgdGhlIHN0cmluZyB0aGUgc2Vj
cmV0IGZvcgp0aGUgZGV2PT0gZmlsdGVyPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
