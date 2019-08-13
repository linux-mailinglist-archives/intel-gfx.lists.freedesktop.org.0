Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC38B8FE
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 14:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68FA6E117;
	Tue, 13 Aug 2019 12:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455206E117
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 12:46:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 05:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="181173857"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.80.203])
 by orsmga006.jf.intel.com with ESMTP; 13 Aug 2019 05:46:32 -0700
MIME-Version: 1.0
To: Dong Yang <dong.yang@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190812023616.6194-1-dong.yang@intel.com>
References: <20190812023616.6194-1-dong.yang@intel.com>
Message-ID: <156570039130.5501.3990807001128210261@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 13 Aug 2019 15:46:31 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E
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
Cc: Yang@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEb25nIFlhbmcgKDIwMTktMDgtMTIgMDU6MzY6MTYpCj4gRnJvbTogIllhbmcsIERv
bmciIDxkb25nLnlhbmdAaW50ZWwuY29tPgo+IAo+IFRoZSBBUEwgYWxyZWFkeSBmaXhlZCB0aGlz
IGJ1ZyBzaW5jZSBHVCBFLCBidWcgZXhpc3QgZnJvbQo+IDAgdG8gRCwgYXBwbHkgV0EgYWNjb3Jk
aW5nIEdUIHN0ZXBwaW5nLgoKIkJyb3h0b24gc3RlcHBpbmdzIHN0YXJ0aW5nIGZyb20gRTAgaGF2
ZSBmaXhlZCB0aGUgYnVnLiIKCj4gU2lnbmVkLW9mZi1ieTogWWFuZywgRG9uZyA8ZG9uZy55YW5n
QGludGVsLmNvbT4KCllvdSBwcm9iYWJseSB3YW50IHRvIHVzZSAiIiBoZXJlIHRvby4gT3IganVz
dCBzd2FwIG9yZGVyLgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8
IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggNWYzZTVjMTNmYmFhLi5lZTM4NGMy
ODE3NGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMjE0MSw2ICsyMTQxLDgg
QEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4g
ICNkZWZpbmUgQlhUX1JFVklEX0IwICAgICAgICAgICAweDMKPiAgI2RlZmluZSBCWFRfUkVWSURf
Ql9MQVNUICAgICAgIDB4OAo+ICAjZGVmaW5lIEJYVF9SRVZJRF9DMCAgICAgICAgICAgMHg5Cj4g
KyNkZWZpbmUgQlhUX1JFVklEX0QwICAgICAgICAgICAweEMKCiNkZWZpbmUgQlhUX1JFVklEX0Rf
TEFTVAkweEMKCj4gKyNkZWZpbmUgQlhUX1JFVklEX0UwICAgICAgICAgICAweEQKPiAgCj4gICNk
ZWZpbmUgSVNfQlhUX1JFVklEKGRldl9wcml2LCBzaW5jZSwgdW50aWwpIFwKPiAgICAgICAgIChJ
U19CUk9YVE9OKGRldl9wcml2KSAmJiBJU19SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSkK
PiBAQCAtMjM1Nyw3ICsyMzU5LDcgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX3NjYW5vdXRf
bmVlZHNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgc3RhdGlj
IGlubGluZSBib29sCj4gIGludGVsX2dndHRfdXBkYXRlX25lZWRzX3Z0ZF93YShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIHsKPiAtICAgICAgIHJldHVybiBJU19CUk9YVE9O
KGRldl9wcml2KSAmJiBpbnRlbF92dGRfYWN0aXZlKCk7Cj4gKyAgICAgICByZXR1cm4gcmV0dXJu
IElTX0JYVF9SRVZJRChkZXZfcHJpdiwgMCwgQlhUX1JFVklEX0QwKSAmJiBpbnRlbF92dGRfYWN0
aXZlKCk7CgoJcmV0dXJuIElTX0JYVF9SRVZJRChkZXZfcHJpdiwgMCwgQlhUX1JFVklEX0RfTEFT
VCkgJiYKCSAgICAgICBpbnRlbF92dGRfYWN0aXZlKCk7CgpSZWdhcmRzLCBKb29uYXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
