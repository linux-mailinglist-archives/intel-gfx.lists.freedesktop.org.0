Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD06CD97E5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 18:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADE56E084;
	Wed, 16 Oct 2019 16:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033616E084
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 16:51:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 09:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="194888592"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by fmsmga008.fm.intel.com with ESMTP; 16 Oct 2019 09:51:18 -0700
Date: Wed, 16 Oct 2019 13:08:18 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191016170818.GA3257@intel.com>
References: <20191016090749.7092-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016090749.7092-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do initial mocs configuration
 directly
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMTA6MDc6NDlBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IE5vdyB0aGF0IHdlIHJlY29yZCB0aGUgZGVmYXVsdCAiZ29sZGVuc3RhdGUiIGNvbnRl
eHQsIHdlIGRvIG5vdCBuZWVkIHRvCj4gZW1pdCB0aGUgbW9jcyByZWdpc3RlcnMgYXQgdGhlIHN0
YXJ0IG9mIGVhY2ggY29udGV4dCBhbmQgY2FuIHNpbXBseSBkbwo+IG1taW8gYmVmb3JlIHRoZSBm
aXJzdCBjb250ZXh0IGFuZCBjYXB0dXJlIHRoZSByZWdpc3RlcnMgYXMgcGFydCBvZiBpdHMKPiBk
ZWZhdWx0IGltYWdlLiBBcyBhIGNvbnNlcXVlbmNlLCB0aGlzIG1lYW5zIHRoYXQgd2UgcmVwZWF0
IHRoZSBtbWlvCj4gYWZ0ZXIgZWFjaCBlbmdpbmUgcmVzZXQsIGZpeGluZyB1cCBhbnkgcGxhdGZv
cm0gYW5kIHJlZ2lzdGVycyB0aGF0IHdlcmUKPiB6YXBwZWQgYnkgdGhlIHJlc2V0IChmb3IgdGhv
c2UgcGxhdGZvcm1zIHdpdGggZ2xvYmFsIG5vdCBjb250ZXh0LXNhdmVkCj4gc2V0dGluZ3MpLgo+
IAo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMTcyMwo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMTY0NQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5r
dW1hci52YWxzYW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9tb2NzLmMgfCAyODEgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuaCB8ICAgMyAtCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgICAgICB8ICAgOSAtCj4gIDMgZmlsZXMgY2hhbmdlZCwgNzMgaW5zZXJ0
aW9ucygrKSwgMjIwIGRlbGV0aW9ucygtKQo+IAo+ICsvKioKPiArICogaW50ZWxfbW9jc19pbml0
X2VuZ2luZSgpIC0gZW1pdCB0aGUgbW9jcyBjb250cm9sIHRhYmxlCj4gKyAqIEBlbmdpbmU6CVRo
ZSBlbmdpbmUgZm9yIHdob20gdG8gZW1pdCB0aGUgcmVnaXN0ZXJzLgo+ICsgKgo+ICsgKiBUaGlz
IGZ1bmN0aW9uIHNpbXBseSBlbWl0cyBhIE1JX0xPQURfUkVHSVNURVJfSU1NIGNvbW1hbmQgZm9y
IHRoZQpUaGlzIGZ1bmN0aW9uIGRlc2NyaXB0aW9uICBuZWVkcyBhIGZpeCBhcyB3ZSBkb24ndCBl
bWl0IHRoZSBtb2NzIG5vdy4KClJldmlld2VkLWJ5OiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJh
dGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPgoKCj4gKyAqIGdpdmVuIHRhYmxlIHN0YXJ0aW5n
IGF0IHRoZSBnaXZlbiBhZGRyZXNzLgo+ICsgKi8KPiArdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5n
aW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgewo+IC0tIAo+IDIuMjMuMAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
