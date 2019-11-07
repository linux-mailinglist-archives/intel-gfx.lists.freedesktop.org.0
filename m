Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DE6F26CC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 06:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A472C6EE86;
	Thu,  7 Nov 2019 05:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097B26EE86
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 05:17:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 21:17:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,276,1569308400"; d="scan'208";a="353696686"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga004.jf.intel.com with ESMTP; 06 Nov 2019 21:17:06 -0800
Date: Wed, 6 Nov 2019 21:05:26 -0800
From: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191107050525.GG19940@nvishwa1-DESK.sc.intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-4-niranjana.vishwanathapura@intel.com>
 <157300060718.21573.2346937645489800091@skylake-alporthouse-com>
 <20191106021641.GF19940@nvishwa1-DESK.sc.intel.com>
 <157303037798.18566.12503418453281213801@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157303037798.18566.12503418453281213801@skylake-alporthouse-com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use rcu_dereference for rcu
 protected pointer
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMDg6NTI6NThBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBOaXJhbmphbiBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDYgMDI6MTY6
NDIpCj4+IE9uIFdlZCwgTm92IDA2LCAyMDE5IGF0IDEyOjM2OjQ3QU0gKzAwMDAsIENocmlzIFdp
bHNvbiB3cm90ZToKPj4gPlF1b3RpbmcgTmlyYW5qYW5hIFZpc2h3YW5hdGhhcHVyYSAoMjAxOS0x
MS0wNiAwMDowMjowNSkKPj4gPj4gJ2N0eFwtPnZtJyBpcyByY3UgcHJvdGVjdGVkLCBzbyB1c2Ug
cmN1X2RlcmVmZXJlbmNlIGluc2lkZQo+PiA+PiByZWFkIHNpZGUgY3JpdGljYWwgc2VjdGlvbi4g
SXQgZml4ZXMgYSBzcGFyc2Ugd2FybmluZy4KPj4gPj4KPj4gPj4gQ2M6IENocmlzIFAgV2lsc29u
IDxjaHJpcy5wLndpbHNvbkBpbnRlbC5jb20+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IE5pcmFuamFu
YSBWaXNod2FuYXRoYXB1cmEgPG5pcmFuamFuYS52aXNod2FuYXRoYXB1cmFAaW50ZWwuY29tPgo+
PiA+PiAtLS0KPj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMgfCA5ICsrKysrLS0tLQo+PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4gPj4KPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCj4+ID4+IGluZGV4IGRlNmU1NWFmODJjZi4uZDNhNjIyZjYwZmQ5IDEw
MDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4
dC5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMKPj4gPj4gQEAgLTEwMDIsMTIgKzEwMDIsMTMgQEAgc3RhdGljIGludCBnZXRfcHBndHQoc3Ry
dWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2LAo+PiA+PiAgICAgICAgIHN0cnVj
dCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtOwo+PiA+PiAgICAgICAgIGludCByZXQ7Cj4+ID4+Cj4+
ID4+IC0gICAgICAgaWYgKCFyY3VfYWNjZXNzX3BvaW50ZXIoY3R4LT52bSkpCj4+ID4+IC0gICAg
ICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPj4gPgo+PiA+VGhpcyBpcyBjb3JyZWN0bHkgc2Vy
aWFsaXNlZCBieSB0aGUgY2FsbGVyLgo+Pgo+PiBPaywgaXMgdGhpcyB3b3J0aCBmaXhpbmcgdGhl
IHNwYXJzZSB3YXJuaW5nPwo+Cj4gIENIRUNLICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYzoyMDg3OjE3OiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgo+ZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYzoyMDg4OjE3OiBlcnJvcjog
YmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuYzoyMDg5OjE3OiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQg
ZXhwcmVzc2lvbgo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYzoy
MDkwOjE3OiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgo+ZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYzoyMDkxOjE3OiBlcnJvcjogYmFkIGlu
dGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NvbnRleHQuYzoyMDkyOjE3OiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVz
c2lvbgo+Cj5PZGQuCgpJIGFtIHNlZWluZywKCiAgQ0hFQ0sgICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmM6MTAwOToyOTogd2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gYXJndW1lbnQg
MSAoZGlmZmVyZW50IGFkZHJlc3Mgc3BhY2VzKQpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jOjEwMDk6Mjk6ICAgIGV4cGVjdGVkIHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MTAw
OToyOTogICAgZ290IHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgW25vZGVyZWZdIDxhc246ND4g
KnZtCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MTk1ODoyNTog
d2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gYXJndW1lbnQgMSAoZGlmZmVyZW50IGFkZHJlc3Mg
c3BhY2VzKQpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jOjE5NTg6
MjU6ICAgIGV4cGVjdGVkIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzICplCmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MTk1ODoyNTogICAgZ290IHN0cnVjdCBpOTE1
X2dlbV9lbmdpbmVzIFtub2RlcmVmXSA8YXNuOjQ+ICplbmdpbmVzCmRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MTk5MzoxNTogd2FybmluZzogaW5jb3JyZWN0IHR5
cGUgaW4gYXNzaWdubWVudCAoZGlmZmVyZW50IGFkZHJlc3Mgc3BhY2VzKQpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jOjE5OTM6MTU6ICAgIGV4cGVjdGVkIHN0cnVj
dCBpOTE1X2dlbV9lbmdpbmVzICpjbG9uZQpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY29udGV4dC5jOjE5OTM6MTU6ICAgIGdvdCBzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lcyBbbm9k
ZXJlZl0gPGFzbjo0PiAqZW5naW5lcwoKPgo+U3VyZSwgZm9yIGNvcnJlY3RuZXNzIHNlZSBjbG9u
ZV92bSgpLgoKT2ssIEkgY2FuIHB1dCBhIGNvbW1vbiBoZWxwZXIgZnVuY3Rpb24gbGlrZSB2bV9n
ZXRfcmN1X3NhZmUoY3R4KS4KCk5pcmFuamFuYQoKPi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
