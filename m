Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2007A9476
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 14:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7314A10E5E9;
	Thu, 21 Sep 2023 12:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2578F10E0C3;
 Thu, 21 Sep 2023 12:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695301184; x=1726837184;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=C0cMiLCxhuyyFnBlhqvbB0+DumxSriijnnQi2lMIRLw=;
 b=g7P4fEDxKhdaf8myuoJaiqdj9gP+GL3jqIeAyGUKu+bzTDNQdyqhqE4W
 0DoioWwuCNK12HctpF8PnERtlXifNEclodhY0CexybvCnt8uNTefJu+hY
 wYL5eyvXixuz1eb6iWjXbzZPbQs8n6FAZAVLBIHsxcnmHSlqkZJNC3rHy
 t95gn8OndAyWkmAvH+/MdyQ1Z2oQp8ttNziN57B9oV1F7JkvpGH/7RaxH
 2fqE5UNDCEkLUsNCQFOOjsAiWBAi4yHP5VYLBTz786QHHD2S1AZubsZXy
 RHmAlvxxvq6il2QX29h817B3sf6jwRyLoeZYAJsfvwtqo8yhHZHtk89q4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379395928"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="379395928"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="782146886"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="782146886"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.77.101])
 ([10.213.77.101])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:59:40 -0700
Message-ID: <81bd6bdf-6a83-5365-b360-3d2574b8fea1@intel.com>
Date: Thu, 21 Sep 2023 18:29:36 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20230913060606.1105349-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230913060606.1105349-8-mitulkumar.ajitkumar.golani@intel.com>
 <8734z8q7lf.fsf@intel.com> <00f0441f-98e5-6d09-8f33-9c69e764b153@intel.com>
 <87il83pvta.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <87il83pvta.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/dsc: Add debugfs entry to
 validate DSC fractional bpp
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

On 21-Sep-23 5:44 PM, Jani Nikula wrote:
> On Thu, 21 Sep 2023, "Sharma, Swati2" <swati2.sharma@intel.com> wrote:
>> On 21-Sep-23 1:30 PM, Jani Nikula wrote:
>>> On Wed, 13 Sep 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
>>>> From: Swati Sharma <swati2.sharma@intel.com>
>>>>
>>>> DSC_Sink_BPP_Precision entry is added to i915_dsc_fec_support_show
>>>> to depict sink's precision.
>>>> Also, new debugfs entry is created to enforce fractional bpp.
>>>> If Force_DSC_Fractional_BPP_en is set then while iterating over
>>>> output bpp with fractional step size we will continue if output_bpp is
>>>> computed as integer. With this approach, we will be able to validate
>>>> DSC with fractional bpp.
>>>>
>>>> v2:
>>>> Add drm_modeset_unlock to new line(Suraj)
>>>>
>>>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>>> ---
>>>>    .../drm/i915/display/intel_display_debugfs.c  | 83 +++++++++++++++++++
>>>>    .../drm/i915/display/intel_display_types.h    |  1 +
>>>>    2 files changed, 84 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> index f05b52381a83..776ab96def1f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> @@ -1244,6 +1244,8 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>>>>    								      DP_DSC_YCbCr420_Native)),
>>>>    			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
>>>>    								      DP_DSC_YCbCr444)));
>>>> +		seq_printf(m, "DSC_Sink_BPP_Precision: %d\n",
>>>> +			   drm_dp_dsc_sink_bpp_incr(intel_dp->dsc_dpcd));
>>>>    		seq_printf(m, "Force_DSC_Enable: %s\n",
>>>>    			   str_yes_no(intel_dp->force_dsc_en));
>>>>    		if (!intel_dp_is_edp(intel_dp))
>>>> @@ -1436,6 +1438,84 @@ static const struct file_operations i915_dsc_output_format_fops = {
>>>>    	.write = i915_dsc_output_format_write
>>>>    };
>>>>    
>>>> +static int i915_dsc_fractional_bpp_show(struct seq_file *m, void *data)
>>>> +{
>>>> +	struct drm_connector *connector = m->private;
>>>> +	struct drm_device *dev = connector->dev;
>>>> +	struct drm_crtc *crtc;
>>>> +	struct intel_dp *intel_dp;
>>>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>>>> +	int ret;
>>>> +
>>>> +	if (!encoder)
>>>> +		return -ENODEV;
>>>> +
>>>> +	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	crtc = connector->state->crtc;
>>>> +	if (connector->status != connector_status_connected || !crtc) {
>>>> +		ret = -ENODEV;
>>>> +		goto out;
>>>> +	}
>>>> +
>>>> +	intel_dp = intel_attached_dp(to_intel_connector(connector));
>>>> +	seq_printf(m, "Force_DSC_Fractional_BPP_Enable: %s\n",
>>>> +		   str_yes_no(intel_dp->force_dsc_fractional_bpp_en));
>>>
>>> Why "Force_DSC_Fractional_BPP_Enable" in the output?
>>>
>>> Usually debugfs files, like sysfs files, for stuff like this should be
>>> attributes, one thing per file. Why print a long name for it, if the
>>> name of the debugfs file is the name of the attribute?
>>>
>>> And even if you print it for humans, why the underscores?
>>
>> Hi Jani,
>> Followed same strategy as we are doing for other dsc scenarios like
>> force_dsc.
>> Even naming convention followed same as other dsc stuff like
>> Force_DSC_Enable, etc.
>> All DSC related enteries have underscores in its naming convention.
> 
> There's value in that, though maybe my comment highlights I'm not fond
> of the existing stuff. ;)

Sure, I can work on cleanup part later.

> 
>> May be i can consolidate other dsc debugfs enteries into
>> one as a cleanup task later. But it will impact IGT aswell. And i'm not
>> sure if we can break compatibility but since IGT (intel as only vendor)
>> is the only consumer, may be we change at both places and clean it up.
> 
> We can do what we want with debugfs, as long as we change both the
> driver and igt.

Sure, will make corresponding changes in both IGT and KMD.

> 
>>
>>>
>>>> +
>>>> +out:
>>>> +	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>>>> +
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static ssize_t i915_dsc_fractional_bpp_write(struct file *file,
>>>> +					     const char __user *ubuf,
>>>> +					     size_t len, loff_t *offp)
>>>> +{
>>>> +	struct drm_connector *connector =
>>>> +		((struct seq_file *)file->private_data)->private;
>>>
>>> I know this is copy-pasted from elsewhere, but really it's nicer to
>>> avoid the cast, and copy-paste from the places that get this right:
>>>
>>> 	struct seq_file *m = file->private_data;
>>>           struct drm_connector *connector = m->private;
>>
>> Done.
>>
>>>
>>>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>>>> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>>> +	bool dsc_fractional_bpp_enable = false;
>>>> +	int ret;
>>>> +
>>>> +	if (len == 0)
>>>> +		return 0;
>>>
>>> kstrtobool_from_user() has this covered.
>>
>> Done.
>>
>>>
>>>> +
>>>> +	drm_dbg(&i915->drm,
>>>> +		"Copied %zu bytes from user to force fractional bpp for DSC\n", len);
>>>
>>> That's useless.
>>
>> Done.
>>
>>>
>>>> +
>>>> +	ret = kstrtobool_from_user(ubuf, len, &dsc_fractional_bpp_enable);
>>>> +	if (ret < 0)
>>>> +		return ret;
>>>> +
>>>> +	drm_dbg(&i915->drm, "Got %s for DSC Fractional BPP Enable\n",
>>>> +		(dsc_fractional_bpp_enable) ? "true" : "false");
>>>
>>> Is this useful?
>>
>> Yes, to know when fractional bpp is enabled.
> 
> I think it would be more useful to debug log this at the use site, not
> when you're setting the debugfs knob.

We already have those in IGT. Like said, to maintain consitency with 
other dsc func() like fec_support_write(), this debug print is added 
here. I can drop and will drop from fec_support_write() too during cleanup.

> 
> BR,
> Jani.
> 
> 
> 
> 
>>
>>>
>>>> +	intel_dp->force_dsc_fractional_bpp_en = dsc_fractional_bpp_enable;
>>>> +
>>>> +	*offp += len;
>>>> +
>>>> +	return len;
>>>> +}
>>>> +
>>>> +static int i915_dsc_fractional_bpp_open(struct inode *inode,
>>>> +					struct file *file)
>>>> +{
>>>> +	return single_open(file, i915_dsc_fractional_bpp_show, inode->i_private);
>>>> +}
>>>> +
>>>> +static const struct file_operations i915_dsc_fractional_bpp_fops = {
>>>> +	.owner = THIS_MODULE,
>>>> +	.open = i915_dsc_fractional_bpp_open,
>>>> +	.read = seq_read,
>>>> +	.llseek = seq_lseek,
>>>> +	.release = single_release,
>>>> +	.write = i915_dsc_fractional_bpp_write
>>>> +};
>>>> +
>>>>    /*
>>>>     * Returns the Current CRTC's bpc.
>>>>     * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
>>>> @@ -1513,6 +1593,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
>>>>    
>>>>    		debugfs_create_file("i915_dsc_output_format", 0644, root,
>>>>    				    connector, &i915_dsc_output_format_fops);
>>>> +
>>>> +		debugfs_create_file("i915_dsc_fractional_bpp", 0644, root,
>>>> +				    connector, &i915_dsc_fractional_bpp_fops);
>>>>    	}
>>>>    
>>>>    	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index 69bcabec4a29..27b31cb4c7b4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1797,6 +1797,7 @@ struct intel_dp {
>>>>    	/* Display stream compression testing */
>>>>    	bool force_dsc_en;
>>>>    	int force_dsc_output_format;
>>>> +	bool force_dsc_fractional_bpp_en;
>>>>    	int force_dsc_bpc;
>>>>    
>>>>    	bool hobl_failed;
>>>
> 

With above KMD changes IGT is already rb'ed and validated
https://patchwork.freedesktop.org/series/117493/#rev12
I request if we can get ack on this. As cleanup task,
will make changes as requested.
