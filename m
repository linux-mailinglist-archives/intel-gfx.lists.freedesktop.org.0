Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEA577EB1E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 22:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD48E10E3BF;
	Wed, 16 Aug 2023 20:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B2610E3C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 20:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692219422; x=1723755422;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xz56/eEATkq9EXySVcs+1vsbFXdeZwHpe3uRj+QaMD4=;
 b=aYiBd9Y9IXv3suwUjN7jR6mNrgn83Yv96ARZhXfz6MBvPt3jNe6gWiJx
 Y421DcqdN0ZHDoofgg69SsRnQTwUC0ifycd40GhbrHO3WWt4bhXZvn+3d
 PLRfgF521GDeYZp9aTkboP/RYpBXQJFWxP2Vs7z35LMHywzGT5+jaMuGR
 B5ncDTvcE2cgijYlL5wZh/nX/xpXXvboJlLcahgTD4z4CZqshaqROqTEc
 H5r+5VozvrmBL9I9AbKiXWHSVTCypXvmXbQmQhe7RS7R6h8Q9ts4oPgiI
 /4t1gAgbGYz9vQ7MGSFuV7EoFCAOYAj4aiLYzV+t00lcaejG9AKqrajuX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357605890"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="357605890"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 13:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848626647"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="848626647"
Received: from kohnenth-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.39.251])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 13:56:15 -0700
Date: Wed, 16 Aug 2023 22:56:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZN037CXaHe+tQil+@ashyti-mobl2.lan>
References: <20230815165345.964068-1-jonathan.cavitt@intel.com>
 <20230815165345.964068-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230815165345.964068-2-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: michal.winiarski@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Tue, Aug 15, 2023 at 09:53:44AM -0700, Jonathan Cavitt wrote:
> Align igt_spinner_create_request with the hang_create_request
> implementation in selftest_hangcheck.c.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Acked-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> ---
>  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 0f064930ef11..8c3e1f20e5a1 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  
>  	*batch++ = arbitration_command;
>  
> +	memset32(batch, MI_NOOP, 128);
> +	batch += 128;
> +
>  	if (GRAPHICS_VER(rq->i915) >= 8)
>  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
>  	else if (IS_HASWELL(rq->i915))
> -- 
> 2.25.1
