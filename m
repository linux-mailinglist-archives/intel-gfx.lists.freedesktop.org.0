Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370C6B48C2B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D40D10E200;
	Mon,  8 Sep 2025 11:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XjcTh7bG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64FBD10E143;
 Mon,  8 Sep 2025 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757330983; x=1788866983;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a8pYxua3nYc+3Eh29P7jhY72gOYl2FS7PQom9lZgl94=;
 b=XjcTh7bGJrLST2SaGkuCZ1co6FsN6nEk829BYoTa25lu8aJjR+hVIouV
 UEuHB755Y0t5kfd+9T+cu0mGxIKzsrSsQ0Y/N0Dy3RWvpyx2cOCMSCv32
 1zjrCvCL0E46KUk7VPHXw4SNP1pUtienoclhz8CMBPwHSHJWfPH8zTdKI
 f4hh2PZ3j4UDmpA6wKLP3ILHSXIZUnZGBwWNhbPEEozJi+7zXUIYZIGeO
 w0PFwBdFllWZ4YC2kiU5AS/OaGMA4zElpva3ICo+6dS0xDzOqolIdcHzP
 3Ho3wLNPn1snDzqSgZI+oXstFf5t6Sy4DPmu6EkmpPDnuTMM0E2ycl7U+ w==;
X-CSE-ConnectionGUID: LZTF6WY3Qta2+d60ci7hEA==
X-CSE-MsgGUID: Bv+QrIjUQ+iJkCHowQf+JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="70682586"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="70682586"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:29:43 -0700
X-CSE-ConnectionGUID: ddN365X0RPael3EZFWwcZQ==
X-CSE-MsgGUID: IOFUUXVlT9mxH+5Qh1z1/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="172644435"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:29:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jocelyn Falempe <jfalempe@redhat.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [PATCH 0/8] drm/{i915,xe}/panic: refactor framebuffer
 allocation etc.
In-Reply-To: <d34b0f39-2cea-4153-b019-163520f4e486@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756835342.git.jani.nikula@intel.com>
 <d34b0f39-2cea-4153-b019-163520f4e486@redhat.com>
Date: Mon, 08 Sep 2025 14:29:37 +0300
Message-ID: <9663f4922edbf964abf49c6790444616917d52f3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 Sep 2025, Jocelyn Falempe <jfalempe@redhat.com> wrote:
> On 02/09/2025 19:51, Jani Nikula wrote:
>> Split out intel_panic functionality separate from intel_bo abstraction,
>> and lift the framebuffer allocation back to where it belongs in
>> intel_fb.c.
>> 
>> There's more that should be improved, ideally making struct
>> intel_framebuffer opaque towards i915 and xe, but this already goes
>> along way in adjusting where the abstractions should happen.
>
> Thanks for this series, this makes sense, and moving the panic part to 
> intel_panic.c is a good idea.
>
> I think this may conflict with 
> https://patchwork.freedesktop.org/series/150887/ but that should be 
> trivial to resolve.

Thanks for the review. It seems to me that's much easier to rebase than
this series, and moves further away from the goals here, so I've opted
to push this one.

BR,
Jani.

> For the whole series:
> Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>
>
> Best regards,

-- 
Jani Nikula, Intel
