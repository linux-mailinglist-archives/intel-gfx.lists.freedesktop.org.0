Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 396A11E4579
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 16:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 314BA6E0CC;
	Wed, 27 May 2020 14:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9DE6E0CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 14:14:51 +0000 (UTC)
IronPort-SDR: wCjVoHU7sCrv1Zfs06syDvgSnQQj/5NIM9aATqWohkpFf9gKzHAac/wDJZXO1fJNjnvhZQiD22
 FW7A508aVITg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 07:14:50 -0700
IronPort-SDR: tnrUJCE9M8hv9YRJEAtzB6G0e0Dh6d+VbRoCY5scsiEJwjUem56ChMUH3y/JNMwIifh7sXnyC3
 gIj9aheRzD9w==
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="414217665"
Received: from rweigelx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.42.205])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 07:14:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200527110132.16679-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
 <20200527110132.16679-3-ankit.k.nautiyal@intel.com>
Date: Wed, 27 May 2020 17:14:43 +0300
Message-ID: <87sgfl1n3g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: Add a new debugfs to request
 HDCP version
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 27 May 2020, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> As per the current HDCP design, the driver selects the highest
> version of HDCP that can be used to satisfy the content-protection
> requirements of the user. Due to this, the content-protection
> tests cannot test a lower version of HDCP, if the platform and the
> display panel, both support higher HDCP version.
>
> To provide some support for testing and debugging, a per-connector
> debugfs is required to set the HDCP version via debugfs that the
> kernel can consider, while enabling HDCP.
>
> This patch adds a new debugfs entry for each connector that supports
> HDCP. For enforcing a particular HDCP version for a connector, the user
> can write into the debugfs for that connector.
>
> To make design simple, the HDCP version request can only be made via
> debugfs, if there is no ongoing request for Content-Protection for
> the connector. The tests are expected to make sure that HDCP is disabled
> before making HDCP version request via the debugfs for the connector.
> Otherwise, the write request to the debugfs will be failed.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 70525623bcdf..e65abca1a1fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2185,6 +2185,102 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>  	.write = i915_dsc_fec_support_write
>  };
>  
> +static int i915_hdcp_ver_request_show(struct seq_file *m, void *data)
> +{
> +
> +	struct drm_connector *connector = m->private;
> +	struct intel_connector *intel_connector = to_intel_connector(connector);
> +	u64 hdcp_ver_flag;

u64 seems a little excessive for something that needs 2 bits.

> +
> +	if (connector->status != connector_status_connected)
> +		return -ENODEV;
> +
> +	/* HDCP is supported by connector */
> +	if (!intel_connector->hdcp.shim)
> +		return -EINVAL;

Why do you need to check these? The version request is valid regardless
of connection or hdcp, no?

> +
> +	hdcp_ver_flag = intel_connector->hdcp.debugfs_ver_request;
> +	seq_printf(m, "HDCP_VER_FLAGS: %llu\n", hdcp_ver_flag);
> +
> +	seq_printf(m, "Requested Versions:\n");
> +	if (hdcp_ver_flag & HDCP_VERSION_1_4)
> +		seq_printf(m, "HDCP1.4\n");
> +	if (hdcp_ver_flag & HDCP_VERSION_2_2)
> +		seq_printf(m, "HDCP2.2\n");

Why do you need to print duplicated information? One or the other, not
both. Simplify, don't complicate.

> +
> +	return 0;
> +}
> +
> +static int i915_hdcp_ver_request_open(struct inode *inode,
> +				     struct file *file)
> +{
> +	return single_open(file, i915_hdcp_ver_request_show,
> +			   inode->i_private);
> +}
> +
> +static int intel_hdcp_debugfs_ver_set(struct intel_connector *connector, u64 val)
> +{
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
> +	if (!hdcp->shim || val > HDCP_VERSION_MASK)
> +		return -EINVAL;
> +
> +	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
> +		return -EINVAL;

What does it matter if you can request the version independent of what's
currently going on? I think it's just extra code that can go wrong here.

> +
> +	hdcp->debugfs_ver_request = val;

Usually there's a blank line before the return.

> +	return 0;
> +}

Perhaps even the helper is excessive here.

> +
> +static ssize_t i915_hdcp_ver_request_write(struct file *file,
> +					  const char __user *ubuf,
> +					  size_t len, loff_t *offp)
> +{
> +	unsigned int hdcp_ver = 0;
> +	int ret;
> +	struct drm_connector *connector =
> +		((struct seq_file *)file->private_data)->private;
> +	struct intel_connector *intel_con = to_intel_connector(connector);

It's *never* intel_con. It's either intel_connector or just connector.

> +	struct drm_i915_private *i915 = to_i915(connector->dev);
> +	char tmp[16];
> +
> +	if (len == 0)
> +		return 0;
> +
> +	if (len >= sizeof(tmp))
> +		return -EINVAL;
> +
> +	if (copy_from_user(tmp, ubuf, len))
> +		return -EFAULT;
> +
> +	tmp[len] = '\0';
> +
> +
> +	drm_dbg(&i915->drm,
> +		"Copied %zu bytes from user to request hdcp ver\n", len);
> +
> +	ret = kstrtouint(tmp, 10, &hdcp_ver);
> +	if (ret < 0)
> +		return ret;

Replace most of the above with val = kstrtouint_from_user(...).

> +
> +	drm_dbg(&i915->drm, "Got %u for HDCP version\n", hdcp_ver);

Useless.

> +	ret = intel_hdcp_debugfs_ver_set(intel_con, hdcp_ver);
> +	if (ret < 0)
> +		return ret;
> +
> +	*offp += len;

Usually there's a blank line before return.

> +	return len;
> +}
> +
> +static const struct file_operations i915_hdcp_ver_request_fops = {
> +	.owner = THIS_MODULE,
> +	.open = i915_hdcp_ver_request_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = i915_hdcp_ver_request_write
> +};
> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
>   * @connector: pointer to a registered drm_connector
> @@ -2215,6 +2311,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>  	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
>  		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
>  				    connector, &i915_hdcp_sink_capability_fops);
> +		debugfs_create_file("i915_hdcp_version_request", S_IRUGO, root,
> +				    connector, &i915_hdcp_ver_request_fops);
>  	}
>  
>  	if (INTEL_GEN(dev_priv) >= 10 &&

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
