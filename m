Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B44538B2D8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 17:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816906F48F;
	Thu, 20 May 2021 15:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF8D6F48F;
 Thu, 20 May 2021 15:17:37 +0000 (UTC)
IronPort-SDR: c2tdDgYhZhgUzWhowrUxzkOxQx+g+9hoyD2PXXwkIs8TebsT9ulEFYdG5skKBn1v6o6ntO4tyS
 Ww8dLwSzGQqw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="265163854"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="265163854"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:17:28 -0700
IronPort-SDR: qS7YMtn48Zip1dWbO6P3vfQxOIdRn4nvvxkkXIMZQPWXts28mT/7u1WGebaO8Pt6ntrozOROrM
 G5IkM8sBbuRg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="395730544"
Received: from cbjoerns-mobl1.ger.corp.intel.com ([10.249.254.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:17:26 -0700
Message-ID: <78607f9194da1d28e6838b723f4cca68d5bf9f75.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Thu, 20 May 2021 17:17:23 +0200
In-Reply-To: <20210520150947.803891-6-thomas.hellstrom@linux.intel.com>
References: <20210520150947.803891-1-thomas.hellstrom@linux.intel.com>
 <20210520150947.803891-6-thomas.hellstrom@linux.intel.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 5/5] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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
Cc: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTA1LTIwIGF0IDE3OjA5ICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90
ZToKPiAKPiArRVhQT1JUX1NZTUJPTCh0dG1fdHRfdW5wb3B1bGF0ZSk7CgpPaCwgdGhpcyBvbmUg
d2FzIGEgbGVmdG92ZXIuIEl0J3Mgbm90IG1lYW50IHRvIGJlIGluY2x1ZGVkIGFueW1vcmUuCgov
VGhvbWFzCgoKPiDCoAo+IMKgI2lmZGVmIENPTkZJR19ERUJVR19GUwo+IMKgCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
