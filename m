Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8D839EF9D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40D3A6EAD9;
	Tue,  8 Jun 2021 07:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C196EAD5;
 Tue,  8 Jun 2021 07:34:10 +0000 (UTC)
IronPort-SDR: 1Zx8i+gIdI1SXpRhGR7JJI0HeOCvqnuTErut13tKfVQsywLO+TmkGUwmEkpl1OZPYvl+49QeYP
 Qds5Hgz76R7w==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="290419633"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="290419633"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:34:09 -0700
IronPort-SDR: OpfMSLGOC7YQZ5t73h/jw8uailJeftPv4TLgKf9BkY4zpaTt+5/jMv+7DJMGtAE+e8a8wTlok5
 8NW8ot4yePAg==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="634985455"
Received: from delmer-mobl.ger.corp.intel.com (HELO [10.249.254.231])
 ([10.249.254.231])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:34:08 -0700
Message-ID: <c35d9094ea1baf3d6993944451850658f550fce2.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 09:34:05 +0200
In-Reply-To: <20210607182210.99036-6-matthew.auld@intel.com>
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-6-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/ttm: switch over to
 ttm_buddy_man
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTA2LTA3IGF0IDE5OjIyICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
TW92ZSBiYWNrIHRvIHRoZSBidWRkeSBhbGxvY2F0b3IgZm9yIG1hbmFnaW5nIGRldmljZSBsb2Nh
bCBtZW1vcnksCj4gYW5kCj4gcmVzdG9yZSB0aGUgbG9zdCBtb2NrIHNlbGZ0ZXN0cy4gS2VlcCBh
cm91bmQgdGhlIHJhbmdlIG1hbmFnZXIKPiByZWxhdGVkCj4gYml0cywgc2luY2Ugd2UgbGlrZWx5
IG5lZWQgdGhpcyBmb3IgbWFuYWdpbmcgc3RvbGVuIGF0IHNvbWUgcG9pbnQuCj4gRm9yCj4gc3Rv
bGVuIHdlIGFsc28gZG9uJ3QgbmVlZCB0byByZXNlcnZlIGFueXRoaW5nIHNvIG5vIG5lZWQgdG8g
c3VwcG9ydCBhCj4gZ2VuZXJpYyByZXNlcnZlIGludGVyZmFjZS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KCmxndG0uClJldmlld2Vk
LWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
