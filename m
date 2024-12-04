Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4ED9E3818
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D3810ECCE;
	Wed,  4 Dec 2024 10:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n3DEkMTF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF6B10ECC9;
 Wed,  4 Dec 2024 10:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733309949; x=1764845949;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7NKhisL6TQUVbO2jmb12FAH6FJo7Nkk26CUkUmkBrI0=;
 b=n3DEkMTFzdT0UXwFEnW5d5em08arRBRI3PRc8+PWSvtZs4w9+Nf80NOc
 2yXa9pHJmnS8IkJBCyQmH99wL9/HrNTJpPsZWdac+87Qzee4H7AgaCrx2
 2vvC2R1qMNdcfCFTcL5OThBM5cg1LZNEvRh5mPUO0G+R8hMiiRLBKm759
 Gat7vtZRASuwmmQmFv90DIrcg99ZAwNNjZhK3XEfErxa+pJU5MFuLzJbC
 gHkv2KNIc5fbGrKNZt8wt5ABS5TeF8GNd9Ut379DFkyAYCIcdjECpkIMg
 u0E++MjvKGjQhydwetrUmkMDbL3zoJum5iPx6OkHrFJql1pUoF+YMSnBw w==;
X-CSE-ConnectionGUID: ju4Tyfi6T5e8UC9gVlsYXQ==
X-CSE-MsgGUID: ObJ1C9WDTxm5p2EHbluMmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33700939"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33700939"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:59:09 -0800
X-CSE-ConnectionGUID: w7xr5xM8R4aJgyn/pqmcag==
X-CSE-MsgGUID: 3AedRhQqSpuFfAxf2gJytQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94185502"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:59:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v6 0/2] drm/i915/display: Power request
 asserting/deasserting
In-Reply-To: <20241127073200.124907-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241127073200.124907-1-mika.kahola@intel.com>
Date: Wed, 04 Dec 2024 12:59:04 +0200
Message-ID: <87cyi73e9z.fsf@intel.com>
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

On Wed, 27 Nov 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> There is a HW issue that arises when there are race conditions
> between TCSS entering/exiting TC7 or TC10 states while the
> driver is asserting/deasserting TCSS power request. As a
> workaround, Display driver will implement a mailbox sequence
> to ensure that the TCSS is in TC0 when TCSS power request is
> asserted/deasserted.
>
> The sequence is the following
>
> 1. Read mailbox command status and wait until run/busy bit is
>    clear
> 2. Write mailbox data value '1' for power request asserting
>    and '0' for power request deasserting
> 3. Write mailbox command run/busy bit and command value with 0x1
> 4. Read mailbox command and wait until run/busy bit is clear
>    before continuing power request.
>
> while at it, let's start using struct intel_display instead of
> struct drm_i915_private as well.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> Mika Kahola (2):
>   drm/i915/xe3lpd: Power request asserting/deasserting
>   drm/i915/display: Use struct intel_display instead of struct
>     drm_i915_private
>
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 ++++
>  drivers/gpu/drm/i915/display/intel_tc.c       | 39 +++++++++++++++++--
>  2 files changed, 42 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel
