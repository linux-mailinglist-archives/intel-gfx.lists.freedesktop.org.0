Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7DB5CF42
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 14:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B5E898C7;
	Tue,  2 Jul 2019 12:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C93898C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 12:16:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 05:16:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="315221883"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 02 Jul 2019 05:16:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A76975C166E; Tue,  2 Jul 2019 15:16:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <156206601183.2466.7357010939425742878@skylake-alporthouse-com>
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
 <20190628120720.21682-3-lionel.g.landwerlin@intel.com>
 <156206601183.2466.7357010939425742878@skylake-alporthouse-com>
Date: Tue, 02 Jul 2019 15:16:17 +0300
Message-ID: <87zhlw3a3y.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 2/3] drm/i915: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yOCAxMzowNzoxOSkKPj4gQ0ZMOkMwKyBjaGFu
Z2VkIHRoZSBzdGF0dXMgb2YgdGhvc2UgcmVnaXN0ZXJzIHdoaWNoIGFyZSBub3cKPj4gYmxhY2ts
aXN0ZWQgYnkgZGVmYXVsdC4KPj4gCj4+IFRoaXMgaXMgYnJlYWtpbmcgYSBudW1iZXIgb2YgQ1RT
IHRlc3RzIG9uIEdMICYgVnVsa2FuIDoKPj4gCj4+ICAgS0hSLUdMNDUucGlwZWxpbmVfc3RhdGlz
dGljc19xdWVyeV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlv
bnMgKEdMKQo+PiAKPj4gICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVyeS5mcmFn
bWVudF9zaGFkZXJfaW52b2NhdGlvbnMuKiAoVnVsa2FuKQo+PiAKPj4gdjI6IE9ubHkgdXNlIG9u
ZSB3aGl0ZWxpc3QgZW50cnkgKExpb25lbCkKPgo+IEJzcGVjOiAxNDA5MQoKU29tZXRpbWVzIHdl
IGhhdmUgb3B0aW9uYWxseSB1c2VkIFJlZmVyZW5jZXM6IEJTSUQjMDkzNCB0bwptYXJrIHRoZSB3
b3JrYXJvdW5kLiBCdXQgaXQgZmVlbHMgYSB0YWQgcmVkdWRhbnQgbm93LgoKPj4gU2lnbmVkLW9m
Zi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IEFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
