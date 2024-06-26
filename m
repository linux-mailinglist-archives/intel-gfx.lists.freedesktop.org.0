Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADBF918744
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 18:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658ED10E94C;
	Wed, 26 Jun 2024 16:24:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+ZHL8TQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C37910E94A;
 Wed, 26 Jun 2024 16:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719419073; x=1750955073;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=4QoP3JKLTXfyrDMfKK71Co+rnTVnmV95Zxezm4yQsok=;
 b=Q+ZHL8TQIz6uuI4S6/vNdzytubnI2fSF/UpSBczEVzlzeLrzGJRuO+E5
 PZDxkwpbwje1+hlz3hz85k0YYdqQW524Jxc+elNjAfzVQ3nZLJtDmq89v
 H1Za1JYu9qctYfPmzBb4KfoPq7+zg/6r1L2oymawJ3pDxfh0zjn+X1bgs
 2EYvE9+bf/A/AlO4bOKDsB3Cm56oislDKA6xv1OIl3x8c7S+IgOVN/nWc
 kNYKB5/5DbtkmijO0nb7AZ+tNkKJvHzrsnyaB9nddfAkIN4Aon0LFi3J7
 AHKWEHViwFeKnLwUGmbVbAlqnzGs2gLUqCKhCjcnHNT2qyTF9cl7PpPtO w==;
X-CSE-ConnectionGUID: QIPTVrSAQM6etbgVvWRzHA==
X-CSE-MsgGUID: px07Q9J1S7uDkOM/sALE1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="20386108"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="20386108"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 09:24:15 -0700
X-CSE-ConnectionGUID: edbV2HOQR2eA/i3dkwVOIg==
X-CSE-MsgGUID: NcZLJ/5yRae1gYjIcnFcMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="67274175"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 09:24:13 -0700
Date: Wed, 26 Jun 2024 19:24:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
Message-ID: <ZnxAuOVN+ioKxtIR@ideak-desk.fi.intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240625202652.315936-1-gustavo.sousa@intel.com>
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

On Tue, Jun 25, 2024 at 05:26:52PM -0300, Gustavo Sousa wrote:
> Starting with Xe_LPDP, support for Type-C connections is provided by
> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
> anymore. Those registers don't even exist in recent display IPs. As
> such, skip programming them.
> 
> Bspec: 65750, 65448
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

MTL still has a FIA mux and the DP-alt pin configuration is read out
from that, but programming DPMLE1 accordingly doesn't seem to be
required indeed (the register still exists but programming it doesn't
make a difference based on my test):

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 9887967b2ca5..6f2ee7dbc43b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u32 val;
>  
> +	if (DISPLAY_VER(i915) >= 14)
> +		return;
> +
>  	drm_WARN_ON(&i915->drm,
>  		    lane_reversal && tc->mode != TC_PORT_LEGACY);
>  
> -- 
> 2.45.2
> 
