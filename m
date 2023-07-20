Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE94975B174
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 16:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C1210E11B;
	Thu, 20 Jul 2023 14:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0CB810E140;
 Thu, 20 Jul 2023 14:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689864305; x=1721400305;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hwj0jhrpn4klfGKgURR6uYABhzZIboUztoGIE27jbPE=;
 b=b7YuoNbkIXAxNcIAKhXhIYb0hsYslifcnogfPQMyft2WxKnZBEElFppF
 fR4M2WrLT66wrh+5r+P6Xbe2mGmHAvioSrQ07AjybQycKSqNrDAZ3ka+z
 uk83i9BXfW2236uEADCOHujUNvm+moWzWHVqcWFy3WIb6XEMrduYG45HB
 2G4REFZ5e1w2cZNwExodytiATqIk+Z+XpR+XhzZ0/RhG6Xuac8zlFLMMy
 PwVcE6QSJ7Qmg3ZyQDLow8bFDFF/6oZzLEfC0pgJH2kard8dRXe8v8YQQ
 37D3A5Z3euCniHkKgcls5yMvUDBh+YKOPFpYrOshEc37rboU39pC148I4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="346348469"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="346348469"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 07:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="724410825"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="724410825"
Received: from sdene1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.32.238])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 07:44:41 -0700
Date: Thu, 20 Jul 2023 16:44:39 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZLlIVyzuYNvIZTBo@ashyti-mobl2.lan>
References: <20230719110729.618733-1-andi.shyti@linux.intel.com>
 <20230719110729.618733-7-andi.shyti@linux.intel.com>
 <2d2841c6-af08-ac8d-2c90-e4282c6def99@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d2841c6-af08-ac8d-2c90-e4282c6def99@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 6/9] drm/i915/gt: Ensure memory quiesced
 before invalidation for all engines
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

>     +       if (aux_inv) {
>     +               u32 bit_group_0 = 0;
>     +               u32 bit_group_1 = 0;
>     +
>     +               cmd += 4;
>     +
>     +               bit_group_0 |= PIPE_CONTROL0_HDC_PIPELINE_FLUSH;
>     +
>     +               switch (rq->engine->class) {
>     +               case VIDEO_DECODE_CLASS:
>     +                       bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
>     +                       bit_group_1 |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
>     +                       bit_group_1 |= PIPE_CONTROL_DC_FLUSH_ENABLE;
>     +                       bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
>     +                       bit_group_1 |= PIPE_CONTROL_CS_STALL;
>     +
>     +                       intel_emit_pipe_control_cs(rq, bit_group_0, bit_group_1,
>     +                                                  LRC_PPHWSP_SCRATCH_ADDR);
> 
> 
> I think pipe control is only for compute and render engines.
> 
>     +
>     +                       break;
>     +
>     +               case VIDEO_ENHANCEMENT_CLASS:
>     +               case COMPUTE_CLASS:
> 
> Don't think gen12_emit_flush_xcs() will get called for compute engine.
> 
> intel_guc_submission_setup() --> rcs_submission_override() replaces
> gen12_emit_flush_xcs() with gen12_emit_flush_rcs()
> 
> for compute and render.

yes, I made some confusion here... this part is bogus... will try
to clean things up and try again.

Andi
