Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA09760E77
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 11:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A51710E3C4;
	Tue, 25 Jul 2023 09:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F7910E3C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 09:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690276898; x=1721812898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=f4X1gS0cLZyh6pDOQ+A+71I2XlL7ApnGgiTikXgbqSs=;
 b=AroukkReA69rHhNVfyZks2FMdKxagxs69S9xM/B1jZHlcmyKTuAS9VsS
 Od8mPMIScvwO1V+4moqa1UQdAroZq7Zzyl7oboGg9AguxvnH9R11Au3IL
 nughPauq47oU+0maNyIwdLin5dZakdE8qnY+wbVFtmOdCOCmroivWd+wy
 PdcCd124Il2Qh0FlOyOxgVcq83LCSHvhkGFMJVYQW6Vl/wN8PP24pDBCp
 QBOgHcmyI6/dJTtI4n7dLO6SMCe5K30Vhh8UdRfvKc6WCAD1YuMzEEnqh
 /4oHPIWd1anbCMVG8yny5BgshCtC+4H7XVPCVabF6DsUNx1t85bhoUX3w g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="433916594"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="433916594"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 02:21:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="726039650"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="726039650"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 02:21:36 -0700
Date: Tue, 25 Jul 2023 11:21:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZL+UHpaX+7Gz2SO9@ashyti-mobl2.lan>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-12-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725001312.1907319-12-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915: Consolidate condition for
 Wa_22011802037
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

Hi Matt,

> +/*
> + * Wa_22011802037 requires that we (or the GuC) ensure that no command
> + * streamers are executing MI_FORCE_WAKE while an engine reset is initiated.
> + */
> +bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)

I've seen this format in a recent Jonathan's patch and I see it
becoming a pattern in the future. Should we already agree on the
naming? Would intel_needs_wa_22011802037() be sufficient? Or a
prefix as intel_wa_* for all the similar functions?

Andi

> +{
> +	if (GRAPHICS_VER(gt->i915) < 11)
> +		return false;
> +
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
> +		return true;
> +
> +	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> +		return false;
> +
> +	return true;
> +}
