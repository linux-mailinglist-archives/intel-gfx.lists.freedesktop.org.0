Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8B27D117
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 00:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70A26E311;
	Wed, 31 Jul 2019 22:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03A56E311
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 22:23:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 15:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="200977094"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2019 15:23:36 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.58])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6VMNZVR017253; Wed, 31 Jul 2019 23:23:35 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190731143856.35460-1-michal.wajdeczko@intel.com>
 <20190731143856.35460-2-michal.wajdeczko@intel.com>
 <156460619736.2512.17033733101561223390@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 00:23:35 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5tchlavxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156460619736.2512.17033733101561223390@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/uc: Rename
 intel_uc_is_using* into intel_uc_supports*
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAzMSBKdWwgMjAxOSAyMjo0OTo1NyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNy0zMSAxNTozODo1MykKPj4gQEAgLTM2NSwxMiArMzY1LDEyIEBAIHZvaWQgaW50ZWxf
dWNfZmluaShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+PiAgewo+PiAgICAgICAgIHN0cnVjdCBpbnRl
bF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwo+Pgo+PiAtICAgICAgIGlmICghaW50ZWxfdWNfaXNfdXNp
bmdfZ3VjKHVjKSkKPj4gKyAgICAgICBpZiAoIWludGVsX3VjX3N1cHBvcnRzX2d1Yyh1YykpCj4+
ICAgICAgICAgICAgICAgICByZXR1cm47Cj4KPiBOb3RlIGJ5IHRoaXMgcG9pbnQgd2Ugc2hvdWxk
IGtub3cgd2hldGhlciBvciBub3Qgd2UgbG9hZGVkIHRoZSBndWMgYW5kCj4gbmVlZCB0byBjbGVh
bnVwLiBTbyBoZXJlIGlzX3VzaW5nX2d1YygpIGRvZXMgcmVhZCBiZXR0ZXIuIElmIHdlIGV2ZW4K
PiBuZWVkIHRvIGJvdGhlciBhbmQganVzdCBsZWF2ZSBpdCB0byB0aGUgaHVjX2ZpbmkgLyBndWNf
ZmluaSB0byBiZSBuby1vcHMKPiB3aGVuIHRoZXJlIGlzIG5vdGhpbmcgdG8gZG8uCgpub3RlIHRo
YXQgaGVyZSB3ZSBhbHJlYWR5IGhhdmUgc2FuaXRpemVkIHVjIGV2ZW4gaWYgaXQgd2FzIGxvYWRl
ZAphbmQgbm90ZSB0aGF0IHdlIGFsc28gaGF2ZSBpbnRlbF91Y19maW5pX2h3KCkKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
