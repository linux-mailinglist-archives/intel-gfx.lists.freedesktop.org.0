Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F8A39EF63
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FAD6E512;
	Tue,  8 Jun 2021 07:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5081F6E512;
 Tue,  8 Jun 2021 07:19:56 +0000 (UTC)
IronPort-SDR: NYcltWFQdqzu3TbjRJ3qoD4cBLUYIyq7GAiFHh4uKu0IjGTj4c+hJ+yimhNX0gj7z9fdgtb5UX
 iA8spa642BDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204811176"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204811176"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:19:55 -0700
IronPort-SDR: 0X7H/vXSq3sB6z2qreZDhbT5ZZMI9zjaV7SmLswJ7GQ77d6nokMmx0p90aQNKoAy2MnkaT0TZ7
 VhyIktufIVOw==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="551507473"
Received: from delmer-mobl.ger.corp.intel.com (HELO [10.249.254.231])
 ([10.249.254.231])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:19:54 -0700
Message-ID: <83e3d898a61791bd2110acfec75382638c24c9db.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 09:19:51 +0200
In-Reply-To: <20210607182210.99036-3-matthew.auld@intel.com>
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-3-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/ttm: add
 i915_sg_from_buddy_resource
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
V2UgbmVlZCB0byBiZSBhYmxlIHRvIGJ1aWxkIGFuIHNnIHRhYmxlIGZyb20gb3VyIGxpc3Qgb2Yg
YnVkZHkKPiBibG9ja3MsCj4gc28gdGhhdCB3ZSBjYW4gbGF0ZXIgcGx1ZyB0aGlzIGludG8gb3Vy
IHR0bSBiYWNrZW5kLCBhbmQgcmVwbGFjZSBvdXIKPiB1c2UKPiBvZiB0aGUgcmFuZ2UgbWFuYWdl
ci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KCk5vdCBzdXJlIHdoZXRoZXIgdGhpcyBpcyB0aGUgYmVzdCBwbGFjZSB0byBwdXQgdGhp
cyBvciBtb3ZlIGJvdGggdGhlCmRybV9tbSB2YXJpYW50IGFuZCB0aGlzIHRvIHRoZSBUVE0gcmVn
aW9uIGNvZGUsIGJ1dCBJIGd1ZXNzIGl0IGRvZXNuJ3QKcmVhbGx5IG1hdHRlci4KClJldmlld2Vk
LWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
