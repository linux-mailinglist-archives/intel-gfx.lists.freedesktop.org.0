Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309D996D957
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 14:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D215F10E899;
	Thu,  5 Sep 2024 12:50:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ByUenT1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72F310E899
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 12:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725540651; x=1757076651;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=egH9SVV+Z8C7PjlXJjeYSP0etzl/h+8UxvcYUcN+2vw=;
 b=ByUenT1LNzlvl0CgCH+Y+KVOuQ0pLv56hHfAjxzadW5deNPSCWi5j5Fn
 pMsnHTdiO5BezDJFFPg0ufB2mV2QFMvnVvvpfsUz1cEtk14uGtD8yIBZT
 FbbmDSyEoMaJ6RsruSkFQF4ZZYJz1YqOxRCNhrK8Lsbi5BZs3fA1AX70S
 qy3jf2KTF4B2eQBGR7GuSlPuIPKdJh5Lx0coVAUsAOGnZzkzrn8L/Nh/Z
 HKja0eG1er7tiXfRIc+x6alCx+m/S5HnHpxb4nv3hwyszlYAQ1MLrIH9W
 D1gj+jdg89N+sdNQjIurpEIPvZ5QJzmpKFCmb+dYpOaIpCf0vIixrNlVg A==;
X-CSE-ConnectionGUID: J/N/STXMQViGzqVT8asgtQ==
X-CSE-MsgGUID: YlcgOPICQ2KpGKU/rsTisw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24445927"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24445927"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 05:50:51 -0700
X-CSE-ConnectionGUID: lHdgrmfeTYSYpGFFa/jVxQ==
X-CSE-MsgGUID: mu3IoWqkToCd+E/XTdfZdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="69752454"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 05:50:49 -0700
Date: Thu, 5 Sep 2024 15:51:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, animesh.manna@intel.com
Subject: Re: [PATCH 2/3] drm/i915/psr: Add connector debugfs files for MST
 connector as well
Message-ID: <ZtmpQD2mGN5BOIFY@ideak-desk.fi.intel.com>
References: <20240904101834.2415385-1-jouni.hogander@intel.com>
 <20240904101834.2415385-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240904101834.2415385-3-jouni.hogander@intel.com>
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

On Wed, Sep 04, 2024 at 01:18:33PM +0300, Jouni Högander wrote:
> Connector debugfs files are currently not add for MST connector. We
> can now add them as we have taken into account possibility to have
> NULL in connector->encoder in intel_attached_dp.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 257526362b39a..26af8bea05d32 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -3799,9 +3799,8 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
>  	struct dentry *root = connector->base.debugfs_entry;
>  
>  	/* TODO: Add support for MST connectors as well. */
> -	if ((connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
> -	     connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort) ||
> -	    connector->mst_port)
> +	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
> +	    connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)

Looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

The TODO: comment above could be also removed.

>  		return;
>  
>  	debugfs_create_file("i915_psr_sink_status", 0444, root,
> -- 
> 2.34.1
> 
