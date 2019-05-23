Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B601D28500
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 19:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D76A89FDD;
	Thu, 23 May 2019 17:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D08289FDD
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 17:34:13 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 10:34:12 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008.jf.intel.com with ESMTP; 23 May 2019 10:34:12 -0700
Date: Thu, 23 May 2019 10:34:39 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190523173439.GP4441@intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523082420.10352-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/dmc: use kernel types
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDE6MjQ6MTFBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IENoYW5nZSBhbGwgZmllbGRzIGluIGludGVsX3BhY2thZ2VfaGVhZGVyIGFuZCBp
bnRlbF9kbWNfaGVhZGVyIHdob3NlCj4gbWVhbmluZyBhcmUgMS1ieXRlIG51bWJlcnMgdG8gdXNl
IHU4Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMTAgKysr
KystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4gaW5kZXggNDUyN2I5NjYyMzMwLi5iMDVl
N2E2YWViYzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+IEBAIC0xMzAsMTIgKzEz
MCwxMiBAQCBzdHJ1Y3QgaW50ZWxfZndfaW5mbyB7Cj4gIAo+ICBzdHJ1Y3QgaW50ZWxfcGFja2Fn
ZV9oZWFkZXIgewo+ICAJLyogRE1DIGNvbnRhaW5lciBoZWFkZXIgbGVuZ3RoIGluIGR3b3JkcyAq
Lwo+IC0JdW5zaWduZWQgY2hhciBoZWFkZXJfbGVuOwo+ICsJdTggaGVhZGVyX2xlbjsKPiAgCj4g
IAkvKiBhbHdheXMgdmFsdWUgd291bGQgYmUgMHgwMSAqLwo+IC0JdW5zaWduZWQgY2hhciBoZWFk
ZXJfdmVyOwo+ICsJdTggaGVhZGVyX3ZlcjsKPiAgCj4gLQl1bnNpZ25lZCBjaGFyIHJlc2VydmVk
WzEwXTsKPiArCXU4IHJlc2VydmVkWzEwXTsKPiAgCj4gIAkvKiBOdW1iZXIgb2YgdmFsaWQgZW50
cmllcyBpbiB0aGUgRldJbmZvIGFycmF5IGJlbG93ICovCj4gIAl1MzIgbnVtX2VudHJpZXM7Cj4g
QEAgLTE0OCwxMCArMTQ4LDEwIEBAIHN0cnVjdCBpbnRlbF9kbWNfaGVhZGVyIHsKPiAgCXUzMiBz
aWduYXR1cmU7Cj4gIAo+ICAJLyogRE1DIGJpbmFyeSBoZWFkZXIgbGVuZ3RoICovCj4gLQl1bnNp
Z25lZCBjaGFyIGhlYWRlcl9sZW47Cj4gKwl1OCBoZWFkZXJfbGVuOwo+ICAKPiAgCS8qIDB4MDEg
Ki8KPiAtCXVuc2lnbmVkIGNoYXIgaGVhZGVyX3ZlcjsKPiArCXU4IGhlYWRlcl92ZXI7Cj4gIAo+
ICAJLyogUmVzZXJ2ZWQgKi8KPiAgCXUxNiBkbWNjX3ZlcjsKPiAtLSAKPiAyLjIxLjAKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
