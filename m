Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C03D4B238
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 08:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC446E29E;
	Wed, 19 Jun 2019 06:41:10 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20E096E29E
 for <Intel-GFX@lists.freedesktop.org>; Wed, 19 Jun 2019 06:41:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 23:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358096353"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 23:41:07 -0700
To: John Harrison <John.C.Harrison@Intel.com>, Intel-GFX@Lists.FreeDesktop.Org
References: <6d8350d9-7078-96d5-eba8-e8a894500492@linux.intel.com>
 <20190618195421.31027-1-John.C.Harrison@Intel.com>
 <fc984c16-ab56-c204-e031-6fda731332fb@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <18e16212-1111-40a9-6eb0-fc98e87b7dd2@linux.intel.com>
Date: Wed, 19 Jun 2019 07:41:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <fc984c16-ab56-c204-e031-6fda731332fb@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement read-only support in
 whitelist selftest
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

Ck9uIDE4LzA2LzIwMTkgMjE6MDgsIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4gVHZydGtvLCBkb2Vz
IHRoaXMgbG9vayBwbGF1c2libGU/Cj4gCj4gSXQgc2VlbXMgdG8gd29yayBmb3IgbWUgaW4gdGhh
dCBpdCBwYXNzZXMgb24gSUNMIHdpdGggdGhlIG5ldyByZWFkLW9ubHkgCj4gcmVnaXN0ZXJzLiBJ
J20gbm90IHN1cmUgaWYgdGhlcmUgaXMgYSB2YWxpZCB3YXkgdG8gZGV0ZWN0IHdoZXRoZXIgdGhl
IAo+IHJlZ2lzdGVycyBhcmUgYWN0dWFsbHkgcmVhZGFibGUgdGhvdWdoLiBIb3cgd291bGQgdGhl
IHRlc3Qga25vdyB3aGF0IGlzIAo+IGEgdmFsaWQgdmFsdWU/IElmIG9uZSBhc3N1bWVzIHRoYXQg
b25lIGdldHMgYmFjayB6ZXJvIGZyb20gYW4gaW52YWxpZCAKPiByZWFkLCBob3cgZG9lcyBvbmUg
a25vdyB0aGF0IHRoZSByZWFkLW9ubHkgcmVnaXN0ZXIgaXMgbm90IHN1cHBvc2VkIHRvIAo+IHJl
dHVybiB6ZXJvIGF0IHRoaXMgcG9pbnQgYW55d2F5Pwo+IAo+IE9yIGlzIGl0IHdvcnRoIGp1c3Qg
cHV0dGluZyBpbiBhIHRlc3QgZm9yIG5vbi16ZXJvIGFuZCBpZiB3ZSBkbyBmaW5kIGEgCj4gcmVn
aXN0ZXIgdGhhdCBjYW4gdmFsaWRseSByZXR1cm4gemVybyB0aGVuIHdlIHNwZWNpYWwgY2FzZSB0
aGF0IG9uZSBhbmQgCj4gaWdub3JlIGl0PwoKSSB3YXMgdGhpbmtpbmcgd2UganVzdCByZWFkIHRo
ZSByZWdpc3RlciBhbmQgdGhlbiB2ZXJpZnkgaXQgaXMgdW5jaGFuZ2VkIAphZnRlciBldmVyeSBl
eGlzdGluZyB3cml0ZSB0byBpdC4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
