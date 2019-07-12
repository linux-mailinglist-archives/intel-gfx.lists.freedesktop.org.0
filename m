Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC44866834
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 10:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364066E2EB;
	Fri, 12 Jul 2019 08:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F6B6E2EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 08:06:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 01:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="365537091"
Received: from jlahtine-mobl.fi.intel.com (HELO localhost) ([10.237.66.136])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jul 2019 01:06:02 -0700
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org,
 Zhenyu Wang <zhenyuw@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <156206856424.2466.13005612349532861735@skylake-alporthouse-com>
References: <20190702113149.21200-1-michal.winiarski@intel.com>
 <156206856424.2466.13005612349532861735@skylake-alporthouse-com>
Message-ID: <156291876155.8011.12180387362444561726@jlahtine-mobl.fi.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 11:06:01 +0300
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Introduce private PAT
 management"
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

KyBaaGVueXUgYXMgRllJCgpRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wNy0wMiAxNDo1Njow
NCkKPiBRdW90aW5nIE1pY2hhxYIgV2luaWFyc2tpICgyMDE5LTA3LTAyIDEyOjMxOjQ4KQo+ID4g
VGhpcyByZXZlcnRzIGNvbW1pdCA0Mzk1ODkwYTQ4NTUxOTgyNTQ5ZDIyMmQxOTIzZTI4MzNkYWM0
N2NmLgo+ID4gCj4gPiBJdCdzIGJlZW4gb3ZlciBhIHllYXIgc2luY2UgdGhpcyB3YXMgbWVyZ2Vk
LCBhbmQgdGhlIGFjdHVhbCB1c2VycyBvZgo+ID4gaW50ZWxfcHBhdF9nZXQgLyBpbnRlbF9wcGF0
X3B1dCBuZXZlciBtYXRlcmlhbGl6ZWQuCj4gPiAKPiA+IFRpbWUgdG8gcmVtb3ZlIGl0IQo+ID4g
Cj4gPiB2MjogVW5icmVhayBzdXNwZW5kIChDaHJpcykKPiA+IHYzOiBSZWJhc2UsIGRyb3AgZml4
ZXMgdGFnIHRvIGF2b2lkIGNvbmZ1c2lvbgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWC
IFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KPiA+IENjOiBaaGkgV2FuZyA8emhpLmEud2FuZ0BpbnRlbC5j
b20+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IAo+IFdoaWxlIEkgd291bGQgYXBwcmVjaWF0ZSBhbiBhY2sgZnJvbSBaaGkgKGJlaW5nIHRo
ZSBvcmlnaW5hbCBhdXRob3IpLAo+IHNpbmNlIHdlJ3ZlIGFscmVhZHkgc2VudCB0aGlzIGEgZmV3
IHRpbWVzLCB0aGVyZSdzIG5vIHJlYXNvbiB0byBkZWxheQo+IHdhaXRpbmcgZm9yIGEgcmVzcG9u
c2UuCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
