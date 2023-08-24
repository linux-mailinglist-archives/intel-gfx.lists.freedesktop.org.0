Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A12C07872C7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 16:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDAE110E570;
	Thu, 24 Aug 2023 14:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5C410E570
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 14:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692889038; x=1724425038;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Gcz1pfaep6MacGqPBb/yMilcJBnCZW+yu3zsE7odsrU=;
 b=m6LWSO4CxJpiyL/aL7lFRNSr6V/gPBWED565MCkhb5lBoZXL4Go0kegE
 XOPpt+6VqvQZ7ERPgEDM5HpYr7pDKY4TbWjuZmwd4lUhCdYGhnEXNYXHh
 GAV/qjm8+VGDsjpYSkmFt7B5emfh7ejyvv9ioz5X85Ct5lsUwFzZdE5KP
 0CBJeHQhzn7Yn/HjRHaxFeuUyJEs5IvFpSvOj72q77/xpeZKR+f3OQ+Vt
 luG6p2qkMQpzS7fsAK4M7+4gwp302svUyy/ONF3Xy7/Nalj9PZpWIz/mc
 JQsbPves/w9BZZ/s7YRkmQubrHvCt6RulQndi8/Tv/2JB7zebe2K4u83g g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="371865709"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="371865709"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 07:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="686911656"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="686911656"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.156])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2023 07:57:15 -0700
Date: Thu, 24 Aug 2023 16:57:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZOdvyEHfjKQ7WG4I@ashyti-mobl2.lan>
References: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
 <20230823185104.1994138-3-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230823185104.1994138-3-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Set copy engine
 arbitration for Wa_16018031267 / Wa_16018063123
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
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com,
 tomasz.mistat@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (engine->class == COPY_ENGINE_CLASS &&
> +	    NEEDS_FASTCOLOR_BLT_WABB(i915))

maybe we should have something like

	gt_needs_wa_XXX(struct intel_gt *gt)
	engine_needs_wa_XXX(struct intel_engine_ce *engine)

Just thinking aloud here, not relevant to this series.

Andi

> +		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
> +				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
> +				    XEHP_BLITTER_ROUND_ROBIN_MODE);
>  }
>  
>  static void
> -- 
> 2.25.1
