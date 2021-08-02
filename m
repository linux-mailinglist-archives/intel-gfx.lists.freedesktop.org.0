Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894613DD3B2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 12:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2A06E4E3;
	Mon,  2 Aug 2021 10:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB586E4E3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 10:30:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10063"; a="277196981"
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="277196981"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 03:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="418638558"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 02 Aug 2021 03:30:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B1CFC5C3F7C; Mon,  2 Aug 2021 13:29:08 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210730222201.GY1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210728233411.2365788-1-matthew.d.roper@intel.com>
 <20210729010555.GI1556418@mdroper-desk1.amr.corp.intel.com>
 <20210730222201.GY1556418@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 02 Aug 2021 13:29:08 +0300
Message-ID: <87sfzs2l8r.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct SFC_DONE register offset
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

Matt Roper <matthew.d.roper@intel.com> writes:

> On Wed, Jul 28, 2021 at 06:05:57PM -0700, Matt Roper wrote:
>> On Wed, Jul 28, 2021 at 04:34:11PM -0700, Matt Roper wrote:
>> > The register offset for SFC_DONE was missing a '0' at the end, causing
>> > us to read from a non-existent register address.  We only use this
>> > register in error state dumps so the mistake hasn't caused any real
>> > problems, but fixing it will hopefully make the error state dumps a bit
>> > more useful for debugging.
>> > 
>> > Fixes: e50dbdbfd9fb ("drm/i915/tgl: Add SFC instdone to error state")
>> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> 
>> Hmm, actually on a closer look it appears this register may have been
>> removed completely from media version 12.  It will return in media
>> version 13 at this offset, but for now I guess we should just drop it
>> completely.
>
> Nevermind; this register is still there on media version 12 (bspec
> 48109).  The current register offset in the code is incorrect, so this
> patch is indeed valid.

Yes it is. Thanks,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
>
> Matt
>
>> 
>> 
>> Matt
>> 
>> > ---
>> >  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> > index 70eed4fe3fe3..49dd5e75429e 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -430,7 +430,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>> >  #define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
>> >  #define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
>> >  
>> > -#define GEN12_SFC_DONE(n)		_MMIO(0x1cc00 + (n) * 0x100)
>> > +#define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
>> >  #define GEN12_SFC_DONE_MAX		4
>> >  
>> >  #define RING_PP_DIR_BASE(base)		_MMIO((base) + 0x228)
>> > -- 
>> > 2.25.4
>> > 
>> 
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> VTT-OSGC Platform Enablement
>> Intel Corporation
>> (916) 356-2795
>
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
