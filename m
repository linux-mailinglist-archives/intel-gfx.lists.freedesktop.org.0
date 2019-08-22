Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE010996CD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C216EB0D;
	Thu, 22 Aug 2019 14:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A176E046
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:36:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 04:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="330352319"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.27.127])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2019 04:12:04 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190822065917.18988-1-chris@chris-wilson.co.uk>
References: <20190822065917.18988-1-chris@chris-wilson.co.uk>
Message-ID: <156647232345.11829.12799168742587793498@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Thu, 22 Aug 2019 14:12:03 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill the undead
 i915_gem_batch_pool.c
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjIgMDk6NTk6MTcpCj4gWW91IGhhdmUgdG8g
Y3V0IGl0IG9mZiBhdCB0aGUgbmVjaywgb3RoZXJ3aXNlIGl0IGp1c3QgcmVhcHBlYXJzIGluIHRo
ZQo+IG5leHQgbWVyZ2UsIGxpa2UgY29tbWl0IDNmODY2MDI2ZjBjZSAoIk1lcmdlIGRybS9kcm0t
bmV4dAo+IGludG8gZHJtLWludGVsLW5leHQtcXVldWVkIikKPiAKPiBSZWZlcmVuY2VzOiAzZjg2
NjAyNmYwY2UgKCJNZXJnZSBkcm0vZHJtLW5leHQgaW50byBkcm0taW50ZWwtbmV4dC1xdWV1ZWQi
KQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CgpBY2tlZC1ieTog
Sm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJk
cywgSm9vbmFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
