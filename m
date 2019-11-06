Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF67F162B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 13:39:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3586E1F8;
	Wed,  6 Nov 2019 12:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4466E1F8;
 Wed,  6 Nov 2019 12:39:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 04:39:17 -0800
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="196193605"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.95.117])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 04:39:14 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191105145931.14612-1-chris@chris-wilson.co.uk>
References: <20191105145127.28616-1-chris@chris-wilson.co.uk>
 <20191105145931.14612-1-chris@chris-wilson.co.uk>
Message-ID: <157304395176.10062.3499160871944794327@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 06 Nov 2019 14:39:11 +0200
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Skip if we have no
 aperture and no mmap_gtt
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMDUgMTY6NTk6MzEpCj4gSWYgdGhlIGRldmlj
ZSBkb2VzIG5vdCBleHBvc2UgYW4gYXBlcnR1cmUgZm9yIGluZGlyZWN0IGFjY2VzcyB3aXRoCj4g
ZGV0aWxpbmcgZnVuY3Rpb25hbGl0eSwgdGhlIGtlcm5lbCByZWplY3RzIGFuIGF0dGVtcHQgdG8g
Y3JlYXRlIHN1Y2ggYQo+IG1hcHBpbmcgd2l0aCAtRU5PREVWLiBJZiB0aGUgaW9jdGwgaXMgbm90
IHN1cHBvcnRlZCwgd2UgY2FuIHNraXAgYWxsIG9mCj4gb3VyIG1tYXBfZ3R0IHNwZWNpZmljIHRl
c3RzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzog
Sm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmV2aWV3
ZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
ClJlZ2FyZHMsIEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
