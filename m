Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D59005192EB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 02:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9887110EE14;
	Wed,  4 May 2022 00:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D036610EE14
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 00:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651624905; x=1683160905;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3Mn4bdCrcewhgrHGKjiQZEh2Kdj+15OzbaQbUi55MLA=;
 b=Y2NPk/sOWwnCpT41gRTX92+j8dzvd1xFVK0nO1DW5WahGY1LoIWUxXVb
 xrdmnRfAnjohuPEMjSnN+wE1Kb5eho7Hh0srTyrJFUA88w2XveMOTXZ28
 NdxBNQFck8QoslczJd67zGIkHw1PMaUFs3hgB7Vg2dyPt37BHbZdh/8xo
 SSK4BycwAdqGkoPxSvCqiiZGVt4itoduBlb24WO01VI/yRg7QR5fuUgPh
 oHP0wS/L8wIRB517PCAE23bMB45QWISfkq9aLRZ/jIwqMLEiPSkNl6LLd
 gRrjM8NSB12k3o9y/8cqJ5++v68qhwb1Ir4yBtiFJGnGPkDhDiAq3T6UJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="330616290"
X-IronPort-AV: E=Sophos;i="5.91,196,1647327600"; d="scan'208";a="330616290"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 17:41:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,196,1647327600"; d="scan'208";a="584459806"
Received: from injoroge-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 17:41:44 -0700
Date: Tue, 3 May 2022 20:41:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YnHLx3099hsXbMjg@intel.com>
References: <20220503235729.617954-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220503235729.617954-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/1] DG2 DMC Support
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

On Tue, May 03, 2022 at 04:57:28PM -0700, Anusha Srivatsa wrote:
> While DG2 supports DC5 and DC9, some of the tests in
> fast-feedback blew up DG2 when the tests forced transition
> from dc5->dc9 on suspend and dc9->dc5 on resume. Some local
> experiments performed with Rodrigo on a RIL system  showed promising
> results when dc5 was completely diabled and i915 took only dc9 paths.
> 
> Sending this so we can check the CI results to confirm the
> findings from local testing which will hopefully help narrow
> down the root cause of MMIO BAR lost issue
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

thanks for sending this.
We definitely need this for now while we work to understand the dc5.

> 
> Anusha Srivatsa (1):
>   drm/i915/dmc: Load DMC on DG2
> 
>  drivers/gpu/drm/i915/display/intel_display_power.c |  4 +++-
>  drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> -- 
> 2.25.1
> 
