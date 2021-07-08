Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C913C1406
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 15:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656166E8C6;
	Thu,  8 Jul 2021 13:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7AF89F27
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 13:14:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="231259623"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="231259623"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:14:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487599005"
Received: from victorge-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:13:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87pmvt54tz.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
 <20210708102549.27821-3-vandita.kulkarni@intel.com>
 <87pmvt54tz.fsf@intel.com>
Date: Thu, 08 Jul 2021 16:13:56 +0300
Message-ID: <87k0m154ob.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 2/3] drm/i915/display/dsc: Add Per connector
 debugfs node for DSC BPP enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jul 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 08 Jul 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
>> From: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
>>
>> [What]:
>> This patch creates a per connector debugfs node to expose
>> the Input and Compressed BPP.
>>
>> The same node can be used from userspace to force
>> DSC to a certain BPP(all accepted values).
>>
>> [Why]:
>> Useful to verify all supported/requested compression bpp's
>> through IGT
>>
>> v2: Remove unnecessary logic (Jani)
>> v3: Drop pipe bpp in debugfs node (Vandita)
>> v4: Minor cleanups (Vandita)
>> v5: Fix NULL pointer dereference
>> v6: Fix dim tool checkpatch errors
>>     Release the lock before return (Vandita)
>> v7: Rename to file to dsc_bpp, remove unwanted
>>     dsc bpp range check from v6, permissions (Jani)
>>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Navare Manasi D <manasi.d.navare@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
>> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>
> If this works, I think it's good enough for now. I think there's more
> overall cleanup to be done in the file, but should not block this one.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> BR,
> Jani.
>
>
>> ---
>>  .../drm/i915/display/intel_display_debugfs.c  | 76 ++++++++++++++++++-
>>  .../drm/i915/display/intel_display_types.h    |  1 +
>>  2 files changed, 76 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 942c4419e0cb..351ada944b1e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -2389,6 +2389,73 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>>  	.write = i915_dsc_fec_support_write
>>  };
>>  
>> +static int i915_dsc_bpp_show(struct seq_file *m, void *data)
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
>> +	seq_printf(m, "Compressed_BPP: %d\n", crtc_state->dsc.compressed_bpp);
>> +
>> +out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>> +
>> +	return ret;
>> +}
>> +
>> +static ssize_t i915_dsc_bpp_write(struct file *file,
>> +				  const char __user *ubuf,
>> +				  size_t len, loff_t *offp)
>> +{
>> +	struct drm_connector *connector =
>> +		((struct seq_file *)file->private_data)->private;
>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> +	int dsc_bpp = 0;
>> +	int ret;
>> +
>> +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	intel_dp->force_dsc_bpp = dsc_bpp;
>> +	*offp += len;
>> +
>> +	return len;
>> +}
>> +
>> +static int i915_dsc_bpp_open(struct inode *inode,
>> +			     struct file *file)
>> +{
>> +	return single_open(file, i915_dsc_bpp_show,
>> +			   inode->i_private);
>> +}
>> +
>> +static const struct file_operations i915_dsc_bpp_fops = {
>> +	.owner = THIS_MODULE,
>> +	.open = i915_dsc_bpp_open,
>> +	.read = seq_read,
>> +	.llseek = seq_lseek,
>> +	.release = single_release,
>> +	.write = i915_dsc_bpp_write
>> +};
>> +
>>  /**
>>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
>>   * @connector: pointer to a registered drm_connector
>> @@ -2427,10 +2494,17 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>>  				    connector, &i915_hdcp_sink_capability_fops);
>>  	}
>>  
>> -	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) && ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort && !to_intel_connector(connector)->mst_port) || connector->connector_type == DRM_MODE_CONNECTOR_eDP))
>> +	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
>> +	    ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
>> +	    !to_intel_connector(connector)->mst_port) ||
>> +	    connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
>>  		debugfs_create_file("i915_dsc_fec_support", 0644, root,
>>  				    connector, &i915_dsc_fec_support_fops);
>>  
>> +		debugfs_create_file("i915_dsc_bpp", 0644, root,
>> +				    connector, &i915_dsc_bpp_fops);
>> +	}
>> +
>>  	/* Legacy panels doesn't lpsp on any platform */
>>  	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
>>  	     IS_BROADWELL(dev_priv)) &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index d94f361b548b..19d8d3eefbc2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1612,6 +1612,7 @@ struct intel_dp {
>>  
>>  	/* Display stream compression testing */
>>  	bool force_dsc_en;
>> +	int force_dsc_bpp;
>>  
>>  	bool hobl_failed;
>>  	bool hobl_active;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
