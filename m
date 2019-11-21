Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9721052B2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 14:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1658089D30;
	Thu, 21 Nov 2019 13:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E4A89D30
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 13:09:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 05:09:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="201118118"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 05:09:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191120234608.17775-3-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191120234608.17775-1-lucas.demarchi@intel.com>
 <20191120234608.17775-3-lucas.demarchi@intel.com>
Date: Thu, 21 Nov 2019 15:09:03 +0200
Message-ID: <878so9wf4g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/i915: assume vbt is 4-byte
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

T24gV2VkLCAyMCBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFRoZSB1bmFsaWduZWQgaW9yZWFkMzIoKSB3aWxsIG1ha2UgdXMgcmVh
ZCBieXRlIGJ5IGJ5dGUgbG9va2luZyBmb3IgdGhlCj4gdmJ0LiBXZSBjb3VsZCBqdXN0IGFzIHdl
bGwgaGF2ZSBkb25lIGEgaW9yZWFkOCgpICsgYSBzaGlmdCBhbmQgYXZvaWQgdGhlCj4gZXh0cmEg
Y29uZnVzaW9uIG9uIGhvdyB3ZSBhcmUgbG9va2luZyBmb3IgIiRWQlQiLgo+Cj4gSG93ZXZlciB3
aGVuIHVzaW5nIEFDUEkgaXQncyBndWFyYW50ZWVkIHRoZSBWQlQgaXMgNC1ieXRlIGFsaWduZWQK
PiBwZXIgc3BlYywgc28gd2UgY2FuIHByb2JhYmx5IGFzc3VtZSBpdCBoZXJlIGFzIHdlbGwuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAx
OSArKysrKystLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMKPiBpbmRleCBhYTliMTgyZWZlZTUuLjZiZjU3YjFhZDA1NiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTE5MDIsMjcgKzE5MDIsMjAg
QEAgc3RhdGljIHN0cnVjdCB2YnRfaGVhZGVyICpvcHJvbV9nZXRfdmJ0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiAgCXZvaWQgX19pb21lbSAqcCA9IE5VTEwsICpvcHJvbTsK
PiAgCXN0cnVjdCB2YnRfaGVhZGVyICp2YnQ7Cj4gIAl1MTYgdmJ0X3NpemU7Cj4gLQlzaXplX3Qg
aSwgc2l6ZTsKPiArCXNpemVfdCBzaXplOwo+ICAKPiAgCW9wcm9tID0gcGNpX21hcF9yb20ocGRl
diwgJnNpemUpOwo+ICAJaWYgKCFvcHJvbSkKPiAgCQlyZXR1cm4gTlVMTDsKPiAgCj4gIAkvKiBT
Y291ciBtZW1vcnkgbG9va2luZyBmb3IgdGhlIFZCVCBzaWduYXR1cmUuICovCj4gLQlmb3IgKGkg
PSAwOyBpICsgNCA8IHNpemU7IGkrKykgewo+IC0JCWlmIChpb3JlYWQzMihvcHJvbSArIGkpICE9
ICooKGNvbnN0IHUzMiAqKSIkVkJUIikpCj4gLQkJCWNvbnRpbnVlOwo+IC0KPiAtCQlwID0gb3By
b20gKyBpOwo+IC0JCXNpemUgLT0gaTsKPiAtCQlicmVhazsKPiAtCX0KPiAtCj4gLQlpZiAoIXAp
Cj4gLQkJZ290byBlcnJfdW5tYXBfb3Byb207Cj4gKwlmb3IgKHAgPSBvcHJvbTsgc2l6ZSA+PSA0
OyBwICs9IDQsIHNpemUgLT0gNCkKPiArCQlpZiAoaW9yZWFkMzIocCkgPT0gKigoY29uc3QgdTMy
ICopIiRWQlQiKSkKPiArCQkJYnJlYWs7CgpJIHRoaW5rIHRoZSBvcmlnaW5hbCBpcyBlYXNpZXIg
dG8gcmVhZC4gWW91IG9ubHkgcmVhbGx5IG5lZWQgdG8gY2hhbmdlCiJpKysiIHRvICJpICs9IDQi
IGFuZCBiZSBkb25lIHdpdGggaXQuCgpCUiwKSmFuaS4KCj4gIAo+ICAJaWYgKHNpemVvZihzdHJ1
Y3QgdmJ0X2hlYWRlcikgPiBzaXplKSB7Cj4gLQkJRFJNX0RFQlVHX0RSSVZFUigiVkJUIGhlYWRl
ciBpbmNvbXBsZXRlXG4iKTsKPiArCQlpZiAoc2l6ZSA+PSA0KQo+ICsJCQlEUk1fREVCVUdfRFJJ
VkVSKCJWQlQgaGVhZGVyIGluY29tcGxldGVcbiIpOwo+ICAJCWdvdG8gZXJyX3VubWFwX29wcm9t
Owo+ICAJfQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
