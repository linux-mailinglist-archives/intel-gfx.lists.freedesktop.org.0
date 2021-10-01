Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8DE41EF53
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 16:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36CD6ECF4;
	Fri,  1 Oct 2021 14:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2941B6ECF4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 14:20:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="222246968"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="222246968"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 07:20:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="521083536"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2021 07:20:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 17:20:17 +0300
Date: Fri, 1 Oct 2021 17:20:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: imre.deak@intel.com, intel-gfx@lists.freedesktop.org
Message-ID: <YVcZIYZLZaPhXvm6@intel.com>
References: <20211001132535.GA7930@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211001132535.GA7930@kili>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [bug report] drm/i915/tc: Fix TypeC PHY
 connect/disconnect logic on ADL-P
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

On Fri, Oct 01, 2021 at 04:25:35PM +0300, Dan Carpenter wrote:
> Hello Imre Deak,
> 
> This is a semi-automatic email about new static checker warnings.
> 
> The patch 3e0abc7661c8: "drm/i915/tc: Fix TypeC PHY 
> connect/disconnect logic on ADL-P" from Sep 29, 2021, leads to the 
> following Smatch complaint:
> 
>     drivers/gpu/drm/i915/display/intel_ddi.c:4028 intel_ddi_encoder_destroy()
>     warn: variable dereferenced before check 'dig_port' (see line 4020)
> 
> drivers/gpu/drm/i915/display/intel_ddi.c
>   4019		struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
>   4020		enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>                                                        ^^^^^^^^^^^^^^^^^^^
> The patch adds a new unchecked dereference.
> 
>   4021	
>   4022		intel_dp_encoder_flush_work(encoder);
>   4023		if (intel_phy_is_tc(i915, phy))
>   4024			intel_tc_port_flush_work(dig_port);
>   4025		intel_display_power_flush_work(i915);
>   4026	
>   4027		drm_encoder_cleanup(encoder);
>   4028		if (dig_port)
>                     ^^^^^^^^
> But the existing code checked for NULL.

That check is nonsense. Feel free to nuke it.

> 
>   4029			kfree(dig_port->hdcp_port_data.streams);
>   4030		kfree(dig_port);
> 
> regards,
> dan carpenter

-- 
Ville Syrjälä
Intel
