Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B37501D38
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A277010E247;
	Thu, 14 Apr 2022 21:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72AAE10E247
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970888; x=1681506888;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lYt/aHXJx9dHHtsWfuw0gwbwGNwYAHZ3es4IjhOKNLQ=;
 b=NUSXc0/+TuYbsgY6Nh3GmQbGGwjrfcY+KaJM4IZGnc5JJWAf4x8ZzB7o
 t4V1aU9vkIiF1Xbph1fzDcl+G6rHrn3fHh5hlvESmQ4qXCOzAuOPo9qt6
 oCxG9JR6nGluGEkGRW0R1HZJRV44d3hg0JMRpnVwDn8i//XJHVcOktV8x
 rAsR8pxDYIxzXXOrG++Uy7zDuTJDvqiP1Yu9P04h98z172uvHc/abft79
 lLzveqBRNDVNQnVh/zRVsb1Xd+exx/E3cHOEh6y/7Wb+5kVAtzKBcEzic
 /zmjIO0Y+CsTOm1VPEPv0HQpSd47TPdeEmTm2gErkNKgvP+7Zp04Zxkb2 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263208806"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263208806"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:14:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="552862497"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:14:47 -0700
Date: Thu, 14 Apr 2022 14:14:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YliOxoxkldSujrQ5@mdroper-desk1.amr.corp.intel.com>
References: <20220413213927.40927-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220413213927.40927-1-rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reserving some Multi-thread
 forcewake bits.
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 05:39:27PM -0400, Rodrigo Vivi wrote:
> Bit 0: Currently bit used by i915. Ideally only i915 touches it
>        in a Linux stack.
> 
> Bits 1 and 2: A while ago we were using Bit 1 for i915 and bit 2
>        	      for the user space, until commit 7130630323c5 ("drm/i915:
> 	      Use fallback forcewake if primary ack missing") changed it
> 	      to bit 1.

That commit didn't change the bits, just the notation used to describe
them.  0x1 == BIT(0) and 0x2 == BIT(1) so no functional change.

In general userspace shouldn't ever be using forcewake and the very few
exceptions to that rule aren't using the definitions in our kernel
register header anyway so I don't see much value in trying to reserve
bits in our kernel header.  I believe the only userspace users of
forcewake are/were:

 * The old Intel-specific DDX driver (which has now been replaced by the
   vendor-agnostic xf86-video-modesetting) used to grab forcewake via
   the command streamer while waiting for scanline on hsw-gen9

        b[3] = MI_LOAD_REGISTER_IMM | 1;
        b[4] = 0xa188; /* FORCEWAKE_MT */
        b[5] = 2 << 16 | 2;

   So the usage of bit 1 (i.e., 0x2) is hardcoded into the DDX; you'd
   need to update the DDX itself if you're worried about clashes with
   pcode on those old platforms.

   Honestly I don't know if the above register update even lands...at
   least for modern platforms bspec page 45546 doesn't list 0xa188 as a
   register that userspace has permission to update via the command
   streamer (it would probably be a security concern if it was!), so
   this old DDX strategy of using an LRI instruction to update the
   register shouldn't be something we even need to consider going
   forward.

 * debug tools like intel_reg that run as root can manipulate registers
   directly, including the forcewake register.  But the bits that get
   used are up to whoever is running the tool; the definitions in i915
   code don't matter.

 * There's an "i915_forcewake_user" debugfs entry that holds forcewake
   while userspace holds an open file descriptor on it.  But usage of
   that debugfs still utilizes the FORCEWAKE_KERNEL bit rather than the
   "userspace" bit.

Since FORCEWAKE_USER is completely unused by i915, I'd suggest just
dropping the definition so that people don't even get the bad idea that
manipulating forcewake from userspace is okay.  Just leave
FORCEWAKE_KERNEL and FORCEWAKE_KERNEL_FALLBACK as the only ones defined
since from our point of view those are the only ones that matter.


Matt

> 	      Now we have a situation where PCODE is also using this bit-1
> 	      in one case, while it should actually be using the Bit-3.
> 	      So, let's redirect users back to bit-2 and mark this 1 as
> 	      reserved.
> 
> Bit 3: Let's reserve for PCODE.
> 
> Bit 4: Let's reserve for PSMI.
> 
> Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0a5c2648aaf0..15ceaaace4d9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1399,8 +1399,11 @@
>  #define FORCEWAKE_MT_ACK			_MMIO(0x130040)
>  #define FORCEWAKE_ACK_HSW			_MMIO(0x130044)
>  #define FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
> -#define   FORCEWAKE_KERNEL			BIT(0)
> -#define   FORCEWAKE_USER			BIT(1)
> +#define   FORCEWAKE_KERNEL			BIT(0) /* For i915 use only */
> +#define   FORCEWAKE_RSVD			BIT(1)
> +#define   FORCEWAKE_USER			BIT(2)
> +#define   FORCEWAKE_PCODE			BIT(3)
> +#define   FORCEWAKE_PSMI			BIT(4)
>  #define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
>  #define FORCEWAKE_ACK				_MMIO(0x130090)
>  #define VLV_GTLC_WAKE_CTRL			_MMIO(0x130090)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
