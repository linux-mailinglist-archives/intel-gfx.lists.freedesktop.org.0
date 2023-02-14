Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EB669629F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E98F10E17D;
	Tue, 14 Feb 2023 11:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC9D10E17D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676375063; x=1707911063;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=GU9vEys0cSt/5tALhcHCWWQDIAhBhSxdo+3QrCqQp9I=;
 b=iLuRbYBu9AvjMuK6kHp9PhVzRyQeLv7GNdYDRbBNoI4suUmos/whce+h
 spdzbgGDZCDMepmEljwFbDb3ti60uUN1TEi8GFNkuwHhwGHT8CW+uWGXv
 Q97PwhytbLpSrngRl1Bl61WowwpZzNKjc/xWDbVMG+XJ2+ShtUoZ9iyfb
 VEThGeSdWaBSNsaIxZ7BYsmS5f4LLxBlVYrAFVB6Y7tHAj0tTqAOz5Ma6
 Yt+DIYr7Lg16mCf7Y9IZj40JUzwb5Xc3IgUZ1Dopw2DM0efsLBgoH6ED5
 Dz0HLtJ35bMapTnVex9d3At3+ccFoLCqYnoPTcNAv+V1xIqsgmlswlFNU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393544410"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="393544410"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:44:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="646733370"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="646733370"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:44:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230207160311.930772-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207160311.930772-1-vinod.govindapillai@intel.com>
 <20230207160311.930772-3-vinod.govindapillai@intel.com>
Date: Tue, 14 Feb 2023 13:44:19 +0200
Message-ID: <87o7pwsc8c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/display: debugfs entry to
 control ignore long hpd flag
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

On Tue, 07 Feb 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Knob to control ignoring the long hpds. Set this to true will
> start ignoring the long HPDs generated by the displays. Useful
> for use cases like CI systems where we dont expect to disconnect
> the panels.
>
> v2: Address patch styling comments (Jani Nikula)
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 25 ++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index f0a2aa648bb8..41372a10288c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -939,6 +939,29 @@ static const struct file_operations i915_hpd_short_storm_ctl_fops = {
>  	.write = i915_hpd_short_storm_ctl_write,
>  };
>  
> +static int i915_ignore_long_hpd_set(void *data, u64 val)
> +{
> +	struct drm_i915_private *i915 = data;
> +
> +	drm_dbg_kms(&i915->drm, "Ignoring long HPDs: %s\n", str_yes_no(val));
> +
> +	i915->display.hotplug.ignore_long_hpd = val;
> +
> +	return 0;
> +}
> +
> +static int i915_ignore_long_hpd_get(void *data, u64 *val)
> +{
> +	struct drm_i915_private *i915 = data;
> +
> +	*val = i915->display.hotplug.ignore_long_hpd;
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(i915_ignore_long_hpd_fops, i915_ignore_long_hpd_get,
> +			i915_ignore_long_hpd_set, "%llu\n");
> +
>  void intel_hpd_debugfs_register(struct drm_i915_private *i915)
>  {
>  	struct drm_minor *minor = i915->drm.primary;
> @@ -947,4 +970,6 @@ void intel_hpd_debugfs_register(struct drm_i915_private *i915)
>  			    i915, &i915_hpd_storm_ctl_fops);
>  	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
>  			    i915, &i915_hpd_short_storm_ctl_fops);
> +	debugfs_create_file("i915_ignore_long_hpd", 0644, minor->debugfs_root,
> +			    i915, &i915_ignore_long_hpd_fops);

See debugfs_create_bool(). This whole patch becomes so simple that
should be part of the previous patch, really.

>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
