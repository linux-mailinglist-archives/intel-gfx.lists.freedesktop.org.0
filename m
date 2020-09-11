Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 552AB266488
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 18:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7CE46E069;
	Fri, 11 Sep 2020 16:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEFD6E069
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 16:41:29 +0000 (UTC)
IronPort-SDR: rDH23eHKLPkwl1r7QtGq7CdEpUyv3VQcadKXehGqxVbt8ojMYNhox2u7yl8SCte7c2r4bWaC2P
 N1pFfD++fkow==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="159742667"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="159742667"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:41:27 -0700
IronPort-SDR: xXbwC5dsw+EgNGv1mM9/SyS/0dpi4n0Uph5TpzFZ/Haiv/Ba+sfyDVlIWvc2jovxLIQy+lAHTj
 AAQ1LDkK7Nbg==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="481383002"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:41:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
Date: Fri, 11 Sep 2020 19:41:28 +0300
Message-ID: <87r1r8z2o7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Kill unused
 savePCH_PORT_HOTPLUG
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gVHVlLCAwOCBTZXAgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBXZSBkb24ndCBzYXZlL3Jlc3RvcmUgUENIX1BPUlRfSE9UUExV
RyBzbyBubyBwb2ludCBpbiByZXNldmluZwo+IHNwYWNlIGZvciB0aGUgdmFsdWUuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMSAtCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCBhNDU1
NzUyMjIxY2MuLjJlNDQzOGU4ZTNlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBA
IC01NDMsNyArNTQzLDYgQEAgc3RydWN0IGk5MTVfc3VzcGVuZF9zYXZlZF9yZWdpc3RlcnMgewo+
ICAJdTMyIHNhdmVTV0YwWzE2XTsKPiAgCXUzMiBzYXZlU1dGMVsxNl07Cj4gIAl1MzIgc2F2ZVNX
RjNbM107Cj4gLQl1MzIgc2F2ZVBDSF9QT1JUX0hPVFBMVUc7Cj4gIAl1MTYgc2F2ZUdDREdNQlVT
Owo+ICB9OwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
