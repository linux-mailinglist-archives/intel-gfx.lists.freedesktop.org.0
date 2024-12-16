Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C48C9F3042
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 13:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299A110E5E3;
	Mon, 16 Dec 2024 12:14:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZjPrOS/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F5810E5D8;
 Mon, 16 Dec 2024 12:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734351245; x=1765887245;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1CsyQhSPbOwwvSD2PGu8+wQE68V8uzbJKTYidbrx8dc=;
 b=aZjPrOS/FTDj5ar2mUz/lne3smk9TvvvnU0LwToBpIsUjaCBt9hx4pu2
 9ak0amHecbLjIU97jxH+sZKqOMcx+XA6YkFmbEFwovZJF9qwfgCguFvZp
 jVQXug2PM9WLcCDe6wdtX9vy9k/JSLB8uNqYFDH6JhgRFIDBI2nA5kzVX
 sTQweKLbauAAbyI47enIxPi7xOM8wtYuB4c0Un0H6JaPr+EC75veZUk1M
 9fFORA9bG5kaG6bwhmsKOimGQS4ZC/IdffvKdY4zmQyLmjLJbM6y2yLQ5
 zVSn2o160aA+gX9xudd5HR3cJlJvNexBh0nwbyfyMgcsMPS0w+aD9Bicd g==;
X-CSE-ConnectionGUID: n1GdwaL8TwKNZqWJrAml7w==
X-CSE-MsgGUID: sn+LU5VCSp+aQbDuH+GVJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="45340515"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="45340515"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 04:14:04 -0800
X-CSE-ConnectionGUID: 6K9Zy0e8T6+2B7qSheJmtw==
X-CSE-MsgGUID: DlmAuiLBRza8oR8NnDMtuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134515151"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 04:14:00 -0800
Date: Mon, 16 Dec 2024 14:14:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Lyude Paul <lyude@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Wayne Lin <wayne.lin@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Karol Herbst <kherbst@redhat.com>, Danilo Krummrich <dakr@kernel.org>
Subject: Re: [PATCH v3 04/11] drm/dp_mst: Register connectors via
 drm_connector_dynamic_register()
Message-ID: <Z2AZrwFnj2KArHPS@ideak-desk.fi.intel.com>
References: <20241211230328.4012496-1-imre.deak@intel.com>
 <20241211230328.4012496-5-imre.deak@intel.com>
 <87bjxhxla8.fsf@intel.com>
 <Z1wjLr4EuJoeSCtD@ideak-desk.fi.intel.com>
 <875xnjubxt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875xnjubxt.fsf@intel.com>
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

On Mon, Dec 16, 2024 at 01:03:42PM +0200, Jani Nikula wrote:
> On Fri, 13 Dec 2024, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Dec 12, 2024 at 12:12:15PM +0200, Jani Nikula wrote:
> >> On Thu, 12 Dec 2024, Imre Deak <imre.deak@intel.com> wrote:
> >> > MST connectors should be initialized/registered by calling
> >> > drm_connector_dynamic_init()/drm_connector_dynamic_register(). The
> >> > previous patch adding these functions explains the issue with the
> >> 
> >> References to "previous patch" become meaningless after this has been
> >> committed.
> >
> > Ok, will change it to: "The patch adding these functions ...".
> 
> In 99% cases having the word "patch" in a commit message is just
> wrong...

Ok, will use "commit", unless you suggest another way.

> 
> BR,
> Jani.
> 
> >
> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >> 
> >> > current drm_connector_init*()/drm_connector_register() interface for
> >> > MST connectors.
> >> >
> >> > Based on the above adjust here the registration part and change the
> >> > initialization part in follow-up patches for each driver.
> >> >
> >> > For now, drivers are allowed to keep using the drm_connector_init*()
> >> > functions, by drm_connector_dynamic_register() checking for this (see
> >> > drm_connector_add()). A patch later will change this to WARN in such
> >> > cases.
> >> >
> >> > Cc: Lyude Paul <lyude@redhat.com>
> >> > Cc: Harry Wentland <harry.wentland@amd.com>
> >> > Cc: Leo Li <sunpeng.li@amd.com>
> >> > Cc: Wayne Lin <wayne.lin@amd.com>
> >> > Cc: Alex Deucher <alexander.deucher@amd.com>
> >> > Cc: Karol Herbst <kherbst@redhat.com>
> >> > Cc: Danilo Krummrich <dakr@kernel.org>
> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/display/drm_dp_mst_topology.c | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> >> > index 687c70308d82b..f8cd094efa3c0 100644
> >> > --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> >> > +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> >> > @@ -2281,7 +2281,7 @@ drm_dp_mst_port_add_connector(struct drm_dp_mst_branch *mstb,
> >> >  		port->cached_edid = drm_edid_read_ddc(port->connector,
> >> >  						      &port->aux.ddc);
> >> >  
> >> > -	drm_connector_register(port->connector);
> >> > +	drm_connector_dynamic_register(port->connector);
> >> >  	return;
> >> >  
> >> >  error:
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
