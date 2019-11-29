Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D9510D38F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C80F4892ED;
	Fri, 29 Nov 2019 10:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4F9892ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 10:00:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:00:19 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203688279"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:00:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191126225110.8127-4-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191126225110.8127-1-lucas.demarchi@intel.com>
 <20191126225110.8127-4-lucas.demarchi@intel.com>
Date: Fri, 29 Nov 2019 12:00:14 +0200
Message-ID: <87o8wvkno1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/bios: assume vbt is 4-byte
 aligned into oprom
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

T24gVHVlLCAyNiBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFRoZSB1bmFsaWduZWQgaW9yZWFkMzIoKSB3aWxsIG1ha2UgdXMgcmVh
ZCBieXRlIGJ5IGJ5dGUgbG9va2luZyBmb3IgdGhlCj4gdmJ0LiBXZSBjb3VsZCBqdXN0IGFzIHdl
bGwgaGF2ZSBkb25lIGEgaW9yZWFkOCgpICsgYSBzaGlmdCBhbmQgYXZvaWQgdGhlCj4gZXh0cmEg
Y29uZnVzaW9uIG9uIGhvdyB3ZSBhcmUgbG9va2luZyBmb3IgIiRWQlQiLgo+Cj4gSG93ZXZlciB3
aGVuIHVzaW5nIEFDUEkgaXQncyBndWFyYW50ZWVkIHRoZSBWQlQgaXMgNC1ieXRlIGFsaWduZWQK
PiBwZXIgc3BlYywgc28gd2UgY2FuIHByb2JhYmx5IGFzc3VtZSBpdCBoZXJlIGFzIHdlbGwuCj4K
PiB2MjogZG8gbm90IHRyeSB0byBzaW1wbGlmeSB0aGUgbG9vcCBieSBlbGltaW5hdGluZyB0aGUg
YXV4aWxpYXJ5IGNvdW50ZXIKPiAoSmFuaSBhbmQgVmlsbGUpCj4KPiBTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCj4gaW5kZXggNTZlNTY2OTQ1ZTk4Li5mZWM2NzUyYjFmNTYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IEBAIC0xOTA5
LDcgKzE5MDksNyBAQCBzdGF0aWMgc3RydWN0IHZidF9oZWFkZXIgKm9wcm9tX2dldF92YnQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJCXJldHVybiBOVUxMOwo+ICAKPiAg
CS8qIFNjb3VyIG1lbW9yeSBsb29raW5nIGZvciB0aGUgVkJUIHNpZ25hdHVyZS4gKi8KPiAtCWZv
ciAoaSA9IDA7IGkgKyA0IDwgc2l6ZTsgaSsrKSB7Cj4gKwlmb3IgKGkgPSAwOyBpICsgNCA8IHNp
emU7IGkgKz0gNCkgewo+ICAJCWlmIChpb3JlYWQzMihvcHJvbSArIGkpICE9ICooKGNvbnN0IHUz
MiAqKSIkVkJUIikpCj4gIAkJCWNvbnRpbnVlOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
