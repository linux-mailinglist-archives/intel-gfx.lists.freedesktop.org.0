Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4495B6E3D4
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 12:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEE76E7F5;
	Fri, 19 Jul 2019 10:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725D76E7F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 10:03:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 03:03:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; d="scan'208";a="170100598"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.3.98])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jul 2019 03:03:23 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190718145407.21352-4-chris@chris-wilson.co.uk>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-4-chris@chris-wilson.co.uk>
Message-ID: <156353060239.486.9888222648443839351@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 19 Jul 2019 13:03:22 +0300
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Flush stale cachelines on
 set-cache-level
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTggMTc6NTQ6MDcpCj4gRW5zdXJlIHRoYXQg
d2UgZmx1c2ggYW55IGNhY2hlIGRpcnQgb3V0IHRvIG1haW4gbWVtb3J5IGJlZm9yZSB0aGUgdXNl
cgo+IGNoYW5nZXMgdGhlIGNhY2hlLWxldmVsIGFzIHRoZXkgbWF5IGVsZWN0IHRvIGJ5cGFzcyB0
aGUgY2FjaGUgKGV2ZW4gYWZ0ZXIKPiBkZWNsYXJpbmcgdGhlaXIgYWNjZXNzIGNhY2hlLWNvaGVy
ZW50KSB2aWEgdXNlIG9mIHVucHJpdmlsZWdlZCBNT0NTLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcKClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
