Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A179EAF54
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 12:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EAF10E177;
	Tue, 10 Dec 2024 11:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CshTVH4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE1810E177
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733829119; x=1765365119;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DKfNTp6lKr+URBZIVsd29b2AMasPneKeftpHTpMBuJo=;
 b=CshTVH4fjKRJUU6TE7Kr3wSbYTYkCa0kJjUjhzfAcRlbZHlCmyt8VVfL
 r9GYpmUn6HUCu2dKWCW6gfRgXhECzO4WpxfQta/2djd/sRjdQRRp9/UBF
 NXMaFdnBlqmfNQOFhT2UpQoEKXShyWdKclEycTjQJgRUSSvPl5nvSsqua
 TSaMJ2KE16N9HTYWanYpBaD7qKxe0gJflHSXQCL9Y4/SnL2G9kc5UzgKH
 j08fajiGA5zanZ4TJANsbv/umr7xCVquAe31E8zDsNRq7JMNiHPs75q0+
 HCTVP6tiTueqxl1upHlng+x9UxjbPEx+MA/anZ8aUHOxjeK2pAUwTJIGg Q==;
X-CSE-ConnectionGUID: T38AO6XhTTu3RjlBDPJ5Mg==
X-CSE-MsgGUID: HULc7CUBRUCUHtGP0e4uhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="59558806"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="59558806"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:11:51 -0800
X-CSE-ConnectionGUID: 5HXuH9CZRr2JgzcGtl/oOQ==
X-CSE-MsgGUID: EmncjVetQZOxdcg1ZkcfMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="99864738"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:11:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/mst: add beginnings of DP MST documentation
In-Reply-To: <Z1B32KMnVuBUvwma@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241125151933.2382910-1-jani.nikula@intel.com>
 <Z1B32KMnVuBUvwma@ideak-desk.fi.intel.com>
Date: Tue, 10 Dec 2024 13:11:47 +0200
Message-ID: <87ed2fztak.fsf@intel.com>
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

On Wed, 04 Dec 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 25, 2024 at 05:19:33PM +0200, Jani Nikula wrote:
>> Add a little bit of documentation around DP MST. This is nowhere near
>> complete nor does it have enough detail. But it's better than nothing,
>> and hopefully gives people a basic grasp of what's going on.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to drm-intel-next. This being a pure comment change, I
exceptionally chose to ignore the CI results.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 +++++++++++++++++++++
>>  1 file changed, 32 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index c59c2c14679c..a9ce8b3a7ff5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -53,6 +53,38 @@
>>  #include "intel_vdsc.h"
>>  #include "skl_scaler.h"
>>  
>> +/*
>> + * DP MST (DisplayPort Multi-Stream Transport)
>> + *
>> + * MST support on the source depends on the platform and port. DP initialization
>> + * sets up MST for each MST capable encoder. This will become the primary
>> + * encoder for the port.
>> + *
>> + * MST initialization of each primary encoder creates MST stream encoders, one
>> + * per pipe, and initializes the MST topology manager. The MST stream encoders
>> + * are sometimes called "fake encoders", because they're virtual, not
>> + * physical. Thus there are (number of MST capable ports) x (number of pipes)
>> + * MST stream encoders in total.
>> + *
>> + * Decision to use MST for a sink happens at detect on the connector attached to
>> + * the primary encoder, and this will not change while the sink is connected. We
>> + * always use MST when possible, including for SST sinks with sideband messaging
>> + * support.
>> + *
>> + * The connectors for the MST streams are added and removed dynamically by the
>> + * topology manager. Their connection status is also determined by the topology
>> + * manager.
>> + *
>> + * On hardware, each transcoder may be associated with a single DDI
>> + * port. Multiple transcoders may be associated with the same DDI port only if
>> + * the port is in MST mode.
>> + *
>> + * On TGL+, all the transcoders streaming on the same DDI port will indicate a
>> + * primary transcoder; the TGL_DP_TP_CTL and TGL_DP_TP_STATUS registers are
>> + * relevant only on the primary transcoder. Prior to that, they are port
>> + * registers.
>> + */
>> +
>>  /* From fake MST stream encoder to primary encoder */
>>  static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
>>  {
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
