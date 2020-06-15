Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 334FA1F9477
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 12:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC0989DFE;
	Mon, 15 Jun 2020 10:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C16689D73
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 10:18:29 +0000 (UTC)
IronPort-SDR: VKMz5rbPiU8ohgucEzkbO6+fPB1ov06TubIbrBhr/INHVHMyABUYSmmMt5kjMB+SWNfz/hftmM
 lKppjqa/3EAg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 03:18:28 -0700
IronPort-SDR: OcHatYtNF18mgzX6rwPmIPT1+Bg18PBTaPYN1wpDyDZh5Ck741HGWzXXO/jlGPWwUo/t391c3X
 26iDc+8FmmRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,514,1583222400"; d="scan'208";a="475981789"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.213.83.65])
 ([10.213.83.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2020 03:18:26 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>
References: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
 <20200608100103.19472-3-ankit.k.nautiyal@intel.com>
 <20200615044542.GD14085@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <88727f19-0c36-39cd-8422-22aca5ad3cff@intel.com>
Date: Mon, 15 Jun 2020 15:48:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20200615044542.GD14085@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Add a new debugfs to
 request HDCP version
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 martin.peres@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

Thanks for the review comments and suggestions.

Please find my response inline:

On 6/15/2020 10:15 AM, Anshuman Gupta wrote:
> On 2020-06-08 at 15:31:03 +0530, Ankit Nautiyal wrote:
>> As per the current HDCP design, the driver selects the highest
>> version of HDCP that can be used to satisfy the content-protection
>> requirements of the user. Due to this, the content-protection
>> tests cannot test a lower version of HDCP, if the platform and the
>> display panel, both support higher HDCP version.
>>
>> To provide some support for testing and debugging, a per-connector
>> debugfs is required to set the HDCP version via debugfs that the
>> kernel can consider, while enabling HDCP.
>>
>> This patch adds a new debugfs entry for each connector that supports
>> HDCP. For enforcing a particular HDCP version for a connector, the user
>> can write into the debugfs for that connector.
> IMHO this doesn't feel like a debugfs per connector, even if it is a
> global singleton resource for all connectors, i don't see any problem in
> that, may be a global debugfs would make sense here ?
The current solution was inline with the comments in the IGT patch, 
where the approach for a connector level debugfs was discussed by the 
community members.
But I agree we don't necessarily require per connector debugfs for our 
use-case here.
We can use a global resource for storing the request for HDCP version 
and use it if it is set, while enabling HDCP.
Perhaps will store it in dev_priv, instead of connector->hdcp.

I will try that out and send next version.

>> v2: As suggested by Jani Nikula:
>> -used kstrtouint_from_user() to directly read as uint from user buffer.
>> -used 32 bit flag instead of 64 bit for hdcp_ver flag.
>> -removed unnecessary prints and fixed other minor formatting issues.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_debugfs.c  | 68 +++++++++++++++++++
>>   1 file changed, 68 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 70525623bcdf..c01653d412e7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -2185,6 +2185,72 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>>   	.write = i915_dsc_fec_support_write
>>   };
>>   
>> +static int i915_hdcp_ver_request_show(struct seq_file *m, void *data)
>> +{
>> +	struct drm_connector *connector = m->private;
>> +	struct intel_connector *intel_connector = to_intel_connector(connector);
>> +	u32 hdcp_ver_flag;
>> +
>> +	if (connector->status != connector_status_connected)
>> +		return -ENODEV;
>> +
>> +	/* HDCP is supported by connector */
>> +	if (!intel_connector->hdcp.shim)
>> +		return -EINVAL;
>> +
>> +	hdcp_ver_flag = intel_connector->hdcp.debugfs_ver_request;
>> +	seq_printf(m, "HDCP_VER_FLAGS: %u\n", hdcp_ver_flag);
>> +
>> +	return 0;
>> +}
>> +
>> +static int i915_hdcp_ver_request_open(struct inode *inode,
>> +				      struct file *file)
>> +{
>> +	return single_open(file, i915_hdcp_ver_request_show,
>> +			   inode->i_private);
>> +}
>> +
>> +static ssize_t i915_hdcp_ver_request_write(struct file *file,
>> +					   const char __user *ubuf,
>> +					   size_t len, loff_t *offp)
>> +{
>> +	unsigned int hdcp_ver = 0;
>> +	int ret;
>> +	struct drm_connector *connector =
>> +		((struct seq_file *)file->private_data)->private;
>> +	struct intel_connector *intel_connector = to_intel_connector(connector);
>> +	struct intel_hdcp *hdcp = &intel_connector->hdcp;
>> +
>> +	if (!hdcp->shim)
>> +		return -EINVAL;
>> +
>> +	if (len == 0)
>> +		return 0;
>> +
>> +	ret = kstrtouint_from_user(ubuf, len, 0, &hdcp_ver);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	if (hdcp_ver > HDCP_VERSION_MASK)
>> +		return -EINVAL;
>> +
>> +	hdcp->debugfs_ver_request = hdcp_ver;
> A lockless assignment, this would probably not scale.
> Could u please add some comment here for current IGT need this is ok,
> but for any concurrent usgaes proper locking is required.
> Thanks,
> Anshuman

Agreed. I will add this as a note in comments in next version.

Thanks & Regards,
Ankit
>> +
>> +	*offp += len;
>> +
>> +	return len;
>> +}
>> +
>> +static const struct file_operations i915_hdcp_ver_request_fops = {
>> +	.owner = THIS_MODULE,
>> +	.open = i915_hdcp_ver_request_open,
>> +	.read = seq_read,
>> +	.llseek = seq_lseek,
>> +	.release = single_release,
>> +	.write = i915_hdcp_ver_request_write
>> +};
>> +
>>   /**
>>    * intel_connector_debugfs_add - add i915 specific connector debugfs files
>>    * @connector: pointer to a registered drm_connector
>> @@ -2215,6 +2281,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>>   	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
>>   		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
>>   				    connector, &i915_hdcp_sink_capability_fops);
>> +		debugfs_create_file("i915_hdcp_version_request", 0444, root,
>> +				    connector, &i915_hdcp_ver_request_fops);
>>   	}
>>   
>>   	if (INTEL_GEN(dev_priv) >= 10 &&
>> -- 
>> 2.17.1
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
