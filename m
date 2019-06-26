Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5B956C43
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3296E452;
	Wed, 26 Jun 2019 14:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 398576E44F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:37:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="360326784"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jun 2019 07:37:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8133C5C1EAE; Wed, 26 Jun 2019 17:37:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156155681954.26855.3347683305533611391@skylake-alporthouse-com>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-4-chris@chris-wilson.co.uk>
 <87woh84g2t.fsf@gaia.fi.intel.com>
 <156155681954.26855.3347683305533611391@skylake-alporthouse-com>
Date: Wed, 26 Jun 2019 17:37:22 +0300
Message-ID: <87tvcc4dlp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Add a wakeref getter for iff
 the wakeref is already active
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI2IDE0OjQzOjU0KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBGb3IgdXNlIGluIHRoZSBu
ZXh0IHBhdGNoLCB3ZSB3YW50IHRvIGFjcXVpcmUgYSB3YWtlcmVmIHdpdGhvdXQgaGF2aW5nCj4+
ID4gdG8gd2FrZSB0aGUgZGV2aWNlIHVwIC0tIGkuZS4gb25seSBhY3F1aXJlIHRoZSBlbmdpbmUg
d2FrZXJlZiBpZiB0aGUKPj4gPiBlbmdpbmUgaXMgYWxyZWFkeSBhY3RpdmUuCj4+ID4KPj4gCj4+
IHMvaWZmL2lmIG9uIHRoZSBzdWJqZWN0Lgo+Cj4gaWZmID09PSBpZiwgYW5kIG9ubHkgaWYsCgp0
aWwuIEkgc3RhbmQgY29ycmVjdGVkLCBzdWJqZWN0IGlzIGZpbmUgYW5kIGFjY3VyYXRlLgoKLU1p
a2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
