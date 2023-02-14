Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7096961AE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AC310E871;
	Tue, 14 Feb 2023 11:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4B610E871
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676372535; x=1707908535;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=AgpVpQzRGVUzUVDbuwzNO8bdt9SfA72J6K1bWT6aBgo=;
 b=TaDtzcsoMjHfaMMRMQKWQnfD1j4BFY5Ij3QvS6jYD3v9vPbBW3uGB4ZF
 jKcch53hOv1/LPI+QQhhnZZG6fpQDoxTX/AxfBnyKzBPUnSV5LZ0SeHHX
 v4LXxPYo+GpI3lxin8lI/y2KobbQte4c58V4NuoSTVkj4a6Hi8vsP94tg
 hSkT6n2y5xrLm7GDAGZMimIRTS8Sv8J3D13B6eniOBK8f9NqgfoJC2wtB
 YNtzG7gbBeCr1MYDPA4bZHxWVSZGYL566n8cvYFiEnQZseuCAsD2OO5L2
 zeqE3CdHrcvBvWPUSSysYwo8NHzFiKTmjMesps5BaY6zSMfk0qgkvacx4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="328844279"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="328844279"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:01:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="793078011"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="793078011"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.215.195.133])
 ([10.215.195.133])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:01:50 -0800
Message-ID: <e80e4e9b-c597-fe7e-c546-1bba2ffa98a8@intel.com>
Date: Tue, 14 Feb 2023 16:31:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230207074416.3209722-8-suraj.kandpal@intel.com>
 <20230214105122.27201-1-swati2.sharma@intel.com> <87ttzosenm.fsf@intel.com>
Content-Language: en-US
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <87ttzosenm.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v10] drm/i915/dsc: Add debugfs entry to validate
 DSC output formats
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

Done. Thanks for the feedback. Next rev floated
https://patchwork.freedesktop.org/patch/522697/?series=113729&rev=3

On 14-Feb-23 4:21 PM, Jani Nikula wrote:
> On Tue, 14 Feb 2023, Swati Sharma <swati2.sharma@intel.com> wrote:
>> DSC_Output_Format_Sink_Support entry is added to i915_dsc_fec_support_show
>> to depict if sink supports DSC output formats (RGB/YCbCr420/YCbCr444).
>> Also, new debugfs entry is created to enforce output format. This is
>> required because of our driver policy. For ex. if a mode is supported
>> in both RGB and YCbCr420 output formats by the sink, our policy is to
>> try RGB first and fall back to YCbCr420, if mode cannot be shown
>> using RGB. So, to test other output formats like YCbCr420 or YCbCr444,
>> we need a debugfs entry (force_dsc_output_format) to force this
>> output format.
>>
>> v2: -Func name changed to intel_output_format_name() (Jani N)
>>      -Return forced o/p format from intel_dp_output_format() (Jani N)
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   .../drm/i915/display/intel_crtc_state_dump.c  |  6 +-
>>   .../drm/i915/display/intel_crtc_state_dump.h  |  2 +
>>   .../drm/i915/display/intel_display_debugfs.c  | 77 +++++++++++++++++++
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  4 +
>>   5 files changed, 87 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index 2422d6ef5777..2408ba88b0b6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -115,13 +115,13 @@ static void snprintf_output_types(char *buf, size_t len,
>>   	WARN_ON_ONCE(output_types != 0);
>>   }
>>   
>> -static const char * const output_format_str[] = {
>> +const char * const output_format_str[] = {
> 
> This still must remain static.
> 
>>   	[INTEL_OUTPUT_FORMAT_RGB] = "RGB",
>>   	[INTEL_OUTPUT_FORMAT_YCBCR420] = "YCBCR4:2:0",
>>   	[INTEL_OUTPUT_FORMAT_YCBCR444] = "YCBCR4:4:4",
>>   };
>>   
>> -static const char *output_formats(enum intel_output_format format)
>> +const char *intel_output_format_name(enum intel_output_format format)
>>   {
>>   	if (format >= ARRAY_SIZE(output_format_str))
>>   		return "invalid";
>> @@ -179,7 +179,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>>   		    "active: %s, output_types: %s (0x%x), output format: %s\n",
>>   		    str_yes_no(pipe_config->hw.active),
>>   		    buf, pipe_config->output_types,
>> -		    output_formats(pipe_config->output_format));
>> +		    intel_output_format_name(pipe_config->output_format));
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
>> index 9399c35b7e5e..780f3f1190d7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
>> @@ -8,9 +8,11 @@
>>   
>>   struct intel_crtc_state;
>>   struct intel_atomic_state;
>> +enum intel_output_format;
>>   
>>   void intel_crtc_state_dump(const struct intel_crtc_state *crtc_state,
>>   			   struct intel_atomic_state *state,
>>   			   const char *context);
>> +const char *intel_output_format_name(enum intel_output_format format);
>>   
>>   #endif /* __INTEL_CRTC_STATE_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 9e2fb8626c96..e4b04c690e4f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -12,6 +12,7 @@
>>   #include "i915_irq.h"
>>   #include "i915_reg.h"
>>   #include "intel_de.h"
>> +#include "intel_crtc_state_dump.h"
>>   #include "intel_display_debugfs.h"
>>   #include "intel_display_power.h"
>>   #include "intel_display_power_well.h"
>> @@ -1770,6 +1771,13 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>>   			   str_yes_no(crtc_state->dsc.compression_enable));
>>   		seq_printf(m, "DSC_Sink_Support: %s\n",
>>   			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
>> +		seq_printf(m, "DSC_Output_Format_Sink_Support: RGB: %s YCBCR420: %s YCBCR444: %s\n",
>> +			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
>> +								      DP_DSC_RGB)),
>> +			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
>> +								      DP_DSC_YCbCr420_Native)),
>> +			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
>> +								      DP_DSC_YCbCr444)));
>>   		seq_printf(m, "Force_DSC_Enable: %s\n",
>>   			   str_yes_no(intel_dp->force_dsc_en));
>>   		if (!intel_dp_is_edp(intel_dp))
>> @@ -1895,6 +1903,72 @@ static const struct file_operations i915_dsc_bpc_fops = {
>>   	.write = i915_dsc_bpc_write
>>   };
>>   
>> +static int i915_dsc_output_format_show(struct seq_file *m, void *data)
>> +{
>> +	struct drm_connector *connector = m->private;
>> +	struct drm_device *dev = connector->dev;
>> +	struct drm_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>> +	int ret;
>> +
>> +	if (!encoder)
>> +		return -ENODEV;
>> +
>> +	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
>> +	if (ret)
>> +		return ret;
>> +
>> +	crtc = connector->state->crtc;
>> +	if (connector->status != connector_status_connected || !crtc) {
>> +		ret = -ENODEV;
>> +		goto out;
>> +	}
>> +
>> +	crtc_state = to_intel_crtc_state(crtc->state);
>> +	seq_printf(m, "DSC_Output_Format: %s\n", intel_output_format_name(crtc_state->output_format));
>> +
>> +out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>> +
>> +	return ret;
>> +}
>> +
>> +static ssize_t i915_dsc_output_format_write(struct file *file,
>> +					    const char __user *ubuf,
>> +					    size_t len, loff_t *offp)
>> +{
>> +	struct drm_connector *connector =
>> +		((struct seq_file *)file->private_data)->private;
>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> +	int dsc_output_format = 0;
>> +	int ret;
>> +
>> +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_output_format);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	intel_dp->force_dsc_output_format = dsc_output_format;
>> +	*offp += len;
>> +
>> +	return len;
>> +}
>> +
>> +static int i915_dsc_output_format_open(struct inode *inode,
>> +				       struct file *file)
>> +{
>> +	return single_open(file, i915_dsc_output_format_show, inode->i_private);
>> +}
>> +
>> +static const struct file_operations i915_dsc_output_format_fops = {
>> +	.owner = THIS_MODULE,
>> +	.open = i915_dsc_output_format_open,
>> +	.read = seq_read,
>> +	.llseek = seq_lseek,
>> +	.release = single_release,
>> +	.write = i915_dsc_output_format_write
>> +};
>> +
>>   /*
>>    * Returns the Current CRTC's bpc.
>>    * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
>> @@ -1966,6 +2040,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
>>   
>>   		debugfs_create_file("i915_dsc_bpc", 0644, root,
>>   				    connector, &i915_dsc_bpc_fops);
>> +
>> +		debugfs_create_file("i915_dsc_output_format", 0644, root,
>> +				    connector, &i915_dsc_output_format_fops);
>>   	}
>>   
>>   	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 9ccae7a46020..9f7951b49c42 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1743,6 +1743,7 @@ struct intel_dp {
>>   
>>   	/* Display stream compression testing */
>>   	bool force_dsc_en;
>> +	int force_dsc_output_format;
>>   	int force_dsc_bpc;
>>   
>>   	bool hobl_failed;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4a5f7c476305..fccb69a58111 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -76,6 +76,7 @@
>>   #include "intel_tc.h"
>>   #include "intel_vdsc.h"
>>   #include "intel_vrr.h"
>> +#include "intel_crtc_state_dump.h"
>>   
>>   /* DP DSC throughput values used for slice count calculations KPixels/s */
>>   #define DP_DSC_PEAK_PIXEL_RATE			2720000
>> @@ -810,6 +811,9 @@ intel_dp_output_format(struct intel_connector *connector,
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   
>> +	if (intel_dp->force_dsc_output_format)
>> +		return intel_dp->force_dsc_output_format;
>> +
>>   	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
> 

-- 
~Swati Sharma
