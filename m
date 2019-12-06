Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E908111586E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 22:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97736FA91;
	Fri,  6 Dec 2019 21:10:21 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2715F6FA91
 for <Intel-GFX@lists.freedesktop.org>; Fri,  6 Dec 2019 21:10:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 13:10:19 -0800
X-IronPort-AV: E=Sophos;i="5.69,286,1571727600"; d="scan'208";a="214539097"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [134.134.244.74])
 ([134.134.244.74])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 06 Dec 2019 13:10:19 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-GFX@Lists.FreeDesktop.Org
References: <20191121003142.34924-1-John.C.Harrison@Intel.com>
 <157432099314.24852.7857518833639685499@skylake-alporthouse-com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <9b2b2de1-e447-4523-1376-9da74ac07908@Intel.com>
Date: Fri, 6 Dec 2019 13:10:19 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <157432099314.24852.7857518833639685499@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Gen/GT info to GPU error state
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

T24gMTEvMjAvMjAxOSAyMzoyMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgSm9obi5D
LkhhcnJpc29uQEludGVsLmNvbSAoMjAxOS0xMS0yMSAwMDozMTo0MikKPj4gRnJvbTogSm9obiBI
YXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4KPj4gQWRkZWQgZ2VuICYgR1Qg
aW5mbyB0byB0aGUgZXJyb3IgY2FwdHVyZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9obiBIYXJy
aXNvbiA8am9obi5jLmhhcnJpc29uQGludGVsLmNvbT4KPj4gQ0M6IE1hdHRoZXcgQnJvc3QgPG1h
dHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dwdV9lcnJvci5jIHwgMiArKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9y
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCj4+IGluZGV4IDcxMThl
Y2I3ZjE0NC4uNGM5Mjg5MmQwNWZiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dwdV9lcnJvci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMKPj4gQEAgLTY5Myw2ICs2OTMsOCBAQCBzdGF0aWMgdm9pZCBfX2Vycl9wcmludF90
b19zZ2woc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwKPj4gICAgICAgICAgZXJy
X3ByaW50ZihtLCAiU3VicGxhdGZvcm06IDB4JXhcbiIsCj4+ICAgICAgICAgICAgICAgICAgICAg
aW50ZWxfc3VicGxhdGZvcm0oJmVycm9yLT5ydW50aW1lX2luZm8sCj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZXJyb3ItPmRldmljZV9pbmZvLnBsYXRmb3JtKSk7Cj4+
ICsgICAgICAgZXJyX3ByaW50ZihtLCAiR2VuOiAlZFxuIiwgZXJyb3ItPmRldmljZV9pbmZvLmdl
bik7Cj4gR2VuIGlzIGluIHRoZSB2ZXJ5IGZpcnN0IGxpbmUuIEJ1dCByZXBldGl0aW9uIGlzIG5v
dCB0ZXJyaWJsZS4KWWVhaCwgaXQncyBub3QgcGFydGljdWxhciBvYnZpb3VzIHdoYXQgdGhlICdl
Y29kZScgZmllbGRzIGFyZSwgdGhvdWdoLgoKCj4+ICsgICAgICAgZXJyX3ByaW50ZihtLCAiR1Q6
ICVkXG4iLCBlcnJvci0+ZGV2aWNlX2luZm8uZ3QpOwo+IGRldmljZV9pbmZvIGlzIGR1bXBlZCBs
YXRlciwgYnV0IGlzIG1pc3NpbmcgZnJvbSB0aGUgcHJpbnRlcnMuIEl0IHNob3VsZAo+IGJlIGFk
ZGVkIHRoZXJlIGZpcnN0LgpUaGUgZGV2aWNlX2luZm8gZmxhZ3MgYXJlIGR1bXBlZCBsYXRlciBi
dXQgb25seSB0aGUgZmxhZ3MuIE90aGVyIGludGVnZXIgCmZpZWxkcyBzdWNoIGFzIHRoZSBwbGF0
Zm9ybSBhbmQgc3VicGxhdGZvcm0gYXJlIGR1bXBlZCByaWdodCBoZXJlLiBJdCAKbWFkZSBzZW5z
ZSB0byBtZSB0byBrZWVwIGFsbCB0aGUgZGV2aWNlIGlkZW50aWZpY2F0aW9uIGluZm9ybWF0aW9u
IAp0b2dldGhlciAtIHBsYXRmb3JtLCBnZW4sIEdULCBQQ0kgaWQsIGV0Yy4gQWxsIGluIG9uZSBw
bGFjZSBhbmQgYWxsIG5pY2UgCmFuZCBlYXN5IHRvIHJlYWQuCgoKPiAtQ2hyaXMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
