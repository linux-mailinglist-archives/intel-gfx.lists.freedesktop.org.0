Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512B330D725
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 11:14:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4EC6E188;
	Wed,  3 Feb 2021 10:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB976E188
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 10:14:11 +0000 (UTC)
IronPort-SDR: bkTkklbhXm+XOCrZGD141sTyMnD4VRlWj5FjKDjVToo1QDJ+RLrIPk2+1eyWW+q6nSVMYlUhfp
 PxY45tOd69YQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="242529595"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="242529595"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 02:14:10 -0800
IronPort-SDR: 04IIkg+D5CE92EfzzfLIM/Jt/rzqRiXBhH27UjD/HCcNIay032WBglAJvRNnf8puIBflUJEE9a
 MTqfznQ4CAyg==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="414095047"
Received: from mashke2x-mobl1.ger.corp.intel.com ([10.214.223.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 02:14:08 -0800
Message-ID: <6e8fd8ee65224c043f8eafc17a0b50d95b136d8f.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Wed, 03 Feb 2021 11:14:05 +0100
In-Reply-To: <20210202154318.19246-2-chris@chris-wilson.co.uk>
References: <20210202154318.19246-1-chris@chris-wilson.co.uk>
 <20210202154318.19246-2-chris@chris-wilson.co.uk>
User-Agent: Evolution 3.38.2 (3.38.2-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Lift marking a lock as used
 to utils
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

Ck9uIFR1ZSwgMjAyMS0wMi0wMiBhdCAxNTo0MyArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+
IEFmdGVyIGNhbGxpbmcgbG9ja19zZXRfc3ViY2xhc3MoKSB0aGUgbG9jayBfbXVzdF8gYmUgdXNl
ZCwgb3IgZWxzZQo+IGxvY2tkZXAncyBpbnRlcm5hbCBucl91c2VkX2xvY2tzIGJlY29tZXMgdW5i
YWxhbmNlZC4gRXh0cmFjdCB0aGUKPiBsaXR0bGUKPiB1dGlsaXR5IGZ1bmN0aW9uIHRvIGk5MTVf
dXRpbHMuYwo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
