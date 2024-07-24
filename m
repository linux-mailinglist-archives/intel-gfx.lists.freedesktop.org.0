Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9179F93B6ED
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 20:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35F610E75E;
	Wed, 24 Jul 2024 18:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MC7JfVci";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6B010E793
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 18:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721846437; x=1753382437;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Z9EjPpkqU79Y41X2oIp4XdURZhToeEXyAa/zXqOUpwo=;
 b=MC7JfVcicYQjO2l9mU99flqK7j6d/xOfcDZPCDi/D5Mz6HZCOxiJdFL2
 JGHxlZT3kczQLVJMlMGdlmH4RMSUnOIiFOlFPp3j07XMa+05IqLC/6zOd
 +ZbIdVM8+RyFveLUw4LBkpiZm0Sz1f8tKb+0/fNsKvqruk9qSmUeh+NQ4
 A++4WQtu0HML5wKdZ0mOey9Dxz5NnxbhOlJcIFSMCSvBCpDAZGoatxP+S
 bR3Cs3MzMNvjLxgM+PQgyb3hqF3yDEyk1uankTzDf6icn4B5qyer39Iib
 dxKkJ/enx/8jNkKH9KU7t9MPvNLYigcKDTH2iYHHaXDiDhS/R1s43lL8V A==;
X-CSE-ConnectionGUID: J729ARkMSCKo6BBFWkbd7Q==
X-CSE-MsgGUID: zkQneuSuQe2N4BE2LL8ltA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="12694344"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="12694344"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:40:36 -0700
X-CSE-ConnectionGUID: stPvlM1uQAqqe19MKXHX2g==
X-CSE-MsgGUID: qc9h6l4nSAyK++3jdtzGAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="53275953"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:40:34 -0700
Date: Wed, 24 Jul 2024 21:40:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Francesco Poli <invernomuto@paranoici.org>,
 Intel GFX list <intel-gfx@lists.freedesktop.org>
Subject: Re: [bug report] adlp_tc_phy_connect [i915] floods logs with
 drm_WARN_ON(tc->mode == TC_PORT_LEGACY) call traces
Message-ID: <ZqFKsUtHncE6-6GK@ideak-desk.fi.intel.com>
References: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
 <871q3ikc9k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871q3ikc9k.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 24, 2024 at 07:03:51PM +0300, Jani Nikula wrote:
> [...]
> Imre, I'm looking at the warnings in intel_tc.c in general, and
> adlp_tc_phy_connect() in particular, and I think this is too hard to
> parse:
> 
> 	if (!adlp_tc_phy_take_ownership(tc, true) &&
> 	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
> 		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership\n",
> 			    tc->port_name);
> 		goto out_put_port_power;
> 	}
> 
> 	if (!tc_phy_is_ready(tc) &&
> 	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
> 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
> 			    tc->port_name);
> 		goto out_release_phy;
> 	}
> 
> There are warnings in the logs, but they are for tc->mode ==
> TC_PORT_LEGACY. Why is that warning duplicated in both if conditions,
> and negated?! 

The WARNs' conditions are unexpected on legacy ports, but the connect
sequence should not be aborted on those (as there is nothing else that
could use the port/PHY in that case). The debug message could be
printed for legacy ports as well..

> Too hard for my poor brain to follow. Don't know which one
> happened, don't know what's going on.

It's the second 'PHY not ready' check based on the WARN's line number /
kernel version.

> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
