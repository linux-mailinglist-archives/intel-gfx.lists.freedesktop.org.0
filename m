Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 323F1F9122
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 14:55:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845206E459;
	Tue, 12 Nov 2019 13:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD396E459
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 13:55:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 05:55:38 -0800
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198084157"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 12 Nov 2019 05:55:37 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191112090638.31692-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5a7b2d59-2ede-3b09-dbc3-c575730a28a8@linux.intel.com>
Date: Tue, 12 Nov 2019 13:55:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112090638.31692-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush context free work on cleanup
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEyLzExLzIwMTkgMDk6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaHJvdyBpbiBhIGZs
dXNoX3dvcmsoKSBhbmQgcmN1X2JhcnJpZXIoKSB0byBzcGVjaWZpY2FsbHkgZmx1c2ggdGhlCj4g
Y29udGV4dCBjbGVhbnVwIHdvcmsuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI0OAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKRml4ZXM6IGE0ZTdjY2RhYzM4ZSAoImRy
bS9pOTE1OiBNb3ZlIGNvbnRleHQgbWFuYWdlbWVudCB1bmRlciBHRU0iKQoKPyBNaWdodCBoYXZl
IGdvdHRlbiBpdCB3cm9uZy4uIG9ubHkgZGlkIGEgcXVpY2sgZGlnLgoKPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCAxICsKPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgfCAxICsKPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCj4gaW5kZXggNzJkMzg5YWZhMjhhLi4xN2YzOTU2NzJlNWUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBAQCAtNzc2
LDYgKzc3Niw3IEBAIGludCBpOTE1X2dlbV9pbml0X2NvbnRleHRzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQo+ICAgdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVsZWFzZV9fY29udGV4dHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICB7Cj4gICAJZGVzdHJveV9rZXJuZWxf
Y29udGV4dCgmaTkxNS0+a2VybmVsX2NvbnRleHQpOwo+ICsJZmx1c2hfd29yaygmaTkxNS0+Z2Vt
LmNvbnRleHRzLmZyZWVfd29yayk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgY29udGV4dF9p
ZHJfY2xlYW51cChpbnQgaWQsIHZvaWQgKnAsIHZvaWQgKmRhdGEpCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBpbmRleCBiOTYxM2QwNDQzOTMuLjFmNjg3MDBh
MjMxMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
Y3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4g
QEAgLTQwMiw2ICs0MDIsNyBAQCB2b2lkIGludGVsX2VuZ2luZXNfY2xlYW51cChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQo+ICAgCQlndC0+ZW5naW5lW2lkXSA9IE5VTEw7Cj4gICAJCWd0LT5pOTE1LT5l
bmdpbmVbaWRdID0gTlVMTDsKPiAgIAl9Cj4gKwlyY3VfYmFycmllcigpOwoKV2h5IHRoaXM/Cgo+
ICAgfQo+ICAgCj4gICAvKioKPiAKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
