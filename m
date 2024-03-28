Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F53890729
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 18:28:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B8210E4C4;
	Thu, 28 Mar 2024 17:28:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZfTl7fkn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F6C510E4C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 17:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711646907; x=1743182907;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/udpTSBicQj7e/090N5hNpQAf5HOoSXi+JWZthdGbzA=;
 b=ZfTl7fknPvwA6PLGBD4JV8tt5gE2VwOsIrZsl5hz7UfaBw56NUo0Vmj9
 0AOFwApQ715CTHJHxkTEtKwvL7FrrNI8mYAjMgYGDqeV3p+YktxjC/ku+
 8mECMJo95mJGOvN2XvWicXLizHO3wn47oWOzGBBTQP6Ir4AIi/wiCIU6+
 HZRXLbPu1Np8q97P56633H+99OYx7GGEkpMft7nGnd9//pj9+cWbOV7i1
 zVsB6seN7sAx+s5ZPg8gEKaLdkNpgUY+0MHSDK61XpCVN9JB4CUKC90oo
 KgFHggiuwpQKvrXbQeNSvTQd0gDW14P4MwCViDU/zkx9uTmq3W9+owrED A==;
X-CSE-ConnectionGUID: T3pEaxa5S7OwoCtuJJo95g==
X-CSE-MsgGUID: LKEYXWAnREWvenW/QIT9Hg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="17370644"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="17370644"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 10:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786424"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786424"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 10:28:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Mar 2024 19:28:22 +0200
Date: Thu, 28 Mar 2024 19:28:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, kunal1.joshi@intel.com
Subject: Re: [PATCH] drm/i915/display_debugfs: Remove check for crtc in force
 bigjoiner
Message-ID: <ZgWotuBs3a4EG8R9@intel.com>
References: <20240328141421.609982-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240328141421.609982-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Mar 28, 2024 at 07:44:21PM +0530, Ankit Nautiyal wrote:
> At the moment, we allow force joiner debugs to work only for connector
> with status connected and a crtc attached to it.
> This creates a problem when we force bigjoiner and then pipe gets reset
> before the force bigjoiner is disabled.
> Relax the condition to check for crtc while exposing the debugfs.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index b99c024b0934..94bc9e0d30fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1405,10 +1405,8 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>  static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_crtc *crtc;
>  
> -	crtc = connector->base.state->crtc;
> -	if (connector->base.status != connector_status_connected || !crtc)
> +	if (connector->base.status != connector_status_connected)

Just remove all of it. It serves no purpose.

>  		return -ENODEV;
>  
>  	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enable);
> @@ -1443,12 +1441,10 @@ static ssize_t i915_bigjoiner_enable_write(struct file *file,
>  {
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
> -	struct drm_crtc *crtc;
>  	bool bigjoiner_en = 0;
>  	int ret;
>  
> -	crtc = connector->base.state->crtc;
> -	if (connector->base.status != connector_status_connected || !crtc)
> +	if (connector->base.status != connector_status_connected)
>  		return -ENODEV;
>  
>  	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
