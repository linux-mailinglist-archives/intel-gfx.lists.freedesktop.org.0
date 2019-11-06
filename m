Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99258F1586
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 12:57:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CE26ECF1;
	Wed,  6 Nov 2019 11:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4438D6ECF1
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 11:57:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 03:57:19 -0800
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="196183225"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.95.117])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 03:57:17 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191105145305.14314-1-chris@chris-wilson.co.uk>
References: <20191105145305.14314-1-chris@chris-wilson.co.uk>
Message-ID: <157304143513.10062.164239369628489692@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 06 Nov 2019 13:57:15 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Early rejection of
 no-aperture map_ggtt
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMDUgMTY6NTM6MDUpCj4gSWYgdGhlIGRldmlj
ZSBkb2VzIG5vdCBoYXZlIGFuIGFwZXJ0dXJlIHRocm91Z2ggd2hpY2ggd2UgY2FuIGluZGlyZWN0
bHkKPiBhY2Nlc3MgYW5kIGRldGlsZSB0aGUgYnVmZmVycywgc2ltcGx5IHJlamVjdCB0aGUgaW9j
dGwuIExhdGVyIHdlIGNhbgo+IGV4dGVuZCB0aGUgaW9jdGwgdG8gc3VwcG9ydCBkaWZmZXJlbnQg
bW9kZXMsIGJ1dCBhcyBhbiBleHRlbnNpb24gdGhlCj4gdXNlciBtdXN0IG9wdCBpbiBhbmQgZXhw
bGljaXRseSBjb250cm9sIHRoZSBtbWFwIHR5cGUgKHZpego+IE1NQVBfT0ZGU0VUX0lPQ1RMKS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29t
Pgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdh
cmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
