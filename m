Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9515F3A3126
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 18:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1380D6EDA9;
	Thu, 10 Jun 2021 16:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEBB6EDA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 16:43:17 +0000 (UTC)
IronPort-SDR: Lo+Zd7ow95NKZyL5CTMVO8WpMXOFl7WYf4ZdMMrgJm4qaBVQo4Urnq4kFYAEYf6QOUBQ6t/gIw
 7OjGBLkzN1tw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="266493686"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="266493686"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 09:43:16 -0700
IronPort-SDR: Q6CT9B0OM67p06+n4kcYoQ/GCJ16HtiDNOnG8ubw7VLq8Ln4xroKi6T13MQ6IbpR64kjekdp1B
 1cGzwcraIHyQ==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="448786141"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 09:43:16 -0700
Date: Thu, 10 Jun 2021 09:43:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20210610164314.GN6936@mdroper-desk1.amr.corp.intel.com>
References: <20210610094658.480636-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610094658.480636-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Apply Wa_1406680159:icl,
 ehl as an engine workaround"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 03:16:58PM +0530, Tejas Upadhyay wrote:
> This reverts commit fb899dd8ea9c4ac5928b86946e6536790981adae.
> 
> w/a on mentioned platforms not working as expected and causing
> more harm on the RC6 flow.
> 
> Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an engine workaround")
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

NAK.  This patch does not do what it claims (it deletes the workaround
completely rather than reverting the original patch) and also doesn't
address the real issue here.

As we've discussed before, this workaround is working properly.  We've
already confirmed that the register write does go through, the bit is
set in hardware, and the relevant clock gating is disabled at the
hardware level.  The *only* thing that isn't working is the readback
verification of the register bit, and this is a multicast steering issue
rather than anything to do with this specific workaround (due to "luck"
this just happens to be the only documented workaround that updates a
register in the affected multicast region on this platform, but you'd
see the same type of warnings if other workarounds in the future start
touching the same general multicast region).

When we write to a multicast register like this, all instances of the
register that live behind the same MMIO address get updated.  But when
we read back those multicast registers, the value we get back always
comes from one specific instance.  For workarounds, all of the instances
will have the same value, so it doesn't matter which instance we read
back, as long as we don't read back from an instance that is fused off
(if we do, we'll read back a 0).  During driver init, we pick a register
steering configuration that will make sure reads of multicase registers
hit a non-fused-off instance and return a proper value.

However on some platforms (including EHL/JSL), there's one more thing to
consider.  On these platforms, Render Power Gating (RPG) will modify the
behavior when the hardware exits RC6 --- instead of all registers being
powered back up and accessible when forcewake is grabbed, only a single
slice/subslice will be powered up initially if there's no workload to be
run (the hardware architects refer to this as the "minconfig").  This
means that when reading from multicast registers while RPG is enabled,
we need to not only steer toward a slice/subslice that isn't fused off,
but we also need to steer toward the specific slice/subslice that is
used as the minconfig (which I believe is always the lowest numbered
one).

At the point we apply and verify workarounds, RPG is not supposed to be
active (i.e., we're not at the point of GT setup where we (re)enable it
yet).  However there seems to be some hardware misbehavior where in
certain circumstances a previous write to the A210 control register to
disable Render Power Gating did not take effect --- the A210 register
value indicates that RPG should be off, but the hardware continues to
operate as if it is on, and only minconfig instances of MCR registers
get powered up to return valid values.  We encounter this problem during
certain reset or suspend/resume operations, and that's what causes the
workaround warning message here.  We're steering our read to a valid
(non-fused-off) instance of the multicast register, but since it isn't
the specific minconfig slice/subslice we still fail to read back the
proper value.

If we just want to fix the workaround warning message here, it should be
a simple matter of making sure our default steering always targets the
minconfig slice/subslice.  I believe switching wa_init_mcr() from using
fls() to ffs() would be sufficient --- we'd always pick the lowest
possible slice/subslice in that case (i.e., the minconfig) instead of
the highest.

The real question to be answered is why the hardware continues to behave
as if RPG is on, even after its been disabled via the POWERGATE_ENABLE
register.  This may be a hardware bug, or (more likely), there's some
step that wasn't properly documented in the bspec so our driver isn't
following it (the GT power management documentation in the bspec
definitely isn't as clear and complete as we'd like it to be).


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b62d1e31a645..fea7fde30d4a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1774,11 +1774,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>  			    PSDUNIT_CLKGATE_DIS);
>  
> -		/* Wa_1406680159:icl,ehl */
> -		wa_write_or(wal,
> -			    SUBSLICE_UNIT_LEVEL_CLKGATE,
> -			    GWUNIT_CLKGATE_DIS);
> -
>  		/*
>  		 * Wa_1408767742:icl[a2..forever],ehl[all]
>  		 * Wa_1605460711:icl[a0..c0]
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
