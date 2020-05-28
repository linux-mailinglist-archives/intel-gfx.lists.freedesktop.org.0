Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392331E59D3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 09:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595166E44E;
	Thu, 28 May 2020 07:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD1D6E4C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 07:45:22 +0000 (UTC)
IronPort-SDR: 2ibmnAvW4MvHJeDPlLbm5IEsX9gSbBC6hLvG/a+UkUz33lSqY2R2/W99YnLxsEK/ZNb/eRuALr
 0PDmaGUvGfIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:45:21 -0700
IronPort-SDR: 6OGabVBVRLxB1c6ozs1Idb7jUq9quUapbvzqaMSu2Nu8Am+FPv8uX0itrKV5XGg4lnjUD6bRx2
 ife4MZeiTaEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="267130547"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.120.162])
 ([10.215.120.162])
 by orsmga003.jf.intel.com with ESMTP; 28 May 2020 00:45:19 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
 <20200527110132.16679-3-ankit.k.nautiyal@intel.com>
 <87sgfl1n3g.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <92967199-8f18-92fc-01e7-597ca49821c7@intel.com>
Date: Thu, 28 May 2020 13:15:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <87sgfl1n3g.fsf@intel.com>
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
Cc: "Peres, Martin" <martin.peres@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

Thanks for the comments and suggestions. Please find my response inline.

On 5/27/2020 7:44 PM, Jani Nikula wrote:
> On Wed, 27 May 2020, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
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
>>
>> To make design simple, the HDCP version request can only be made via
>> debugfs, if there is no ongoing request for Content-Protection for
>> the connector. The tests are expected to make sure that HDCP is disabled
>> before making HDCP version request via the debugfs for the connector.
>> Otherwise, the write request to the debugfs will be failed.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_debugfs.c  | 98 +++++++++++++++++++
>>   1 file changed, 98 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 70525623bcdf..e65abca1a1fa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -2185,6 +2185,102 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>>        .write = i915_dsc_fec_support_write
>>   };
>>
>> +static int i915_hdcp_ver_request_show(struct seq_file *m, void *data)
>> +{
>> +
>> +     struct drm_connector *connector = m->private;
>> +     struct intel_connector *intel_connector = to_intel_connector(connector);
>> +     u64 hdcp_ver_flag;
> u64 seems a little excessive for something that needs 2 bits.
Agreed. Will change this in next version.
>> +
>> +     if (connector->status != connector_status_connected)
>> +             return -ENODEV;
>> +
>> +     /* HDCP is supported by connector */
>> +     if (!intel_connector->hdcp.shim)
>> +             return -EINVAL;
> Why do you need to check these? The version request is valid regardless
> of connection or hdcp, no?
Hmm, for connectors that are unconnected or do not support hdcp, the 
member `hdcp` will not have any useful value.
The `debugfs_ver_request` is initialized to dafault value only if 
hdcp.shim exists.
It might show perhaps incorrect flag.

>> +
>> +     hdcp_ver_flag = intel_connector->hdcp.debugfs_ver_request;
>> +     seq_printf(m, "HDCP_VER_FLAGS: %llu\n", hdcp_ver_flag);
>> +
>> +     seq_printf(m, "Requested Versions:\n");
>> +     if (hdcp_ver_flag & HDCP_VERSION_1_4)
>> +             seq_printf(m, "HDCP1.4\n");
>> +     if (hdcp_ver_flag & HDCP_VERSION_2_2)
>> +             seq_printf(m, "HDCP2.2\n");
> Why do you need to print duplicated information? One or the other, not
> both. Simplify, don't complicate.

Alright, I will just keep the print with HDCP_VER_FLAGS, that should be 
sufficient.

>> +
>> +     return 0;
>> +}
>> +
>> +static int i915_hdcp_ver_request_open(struct inode *inode,
>> +                                  struct file *file)
>> +{
>> +     return single_open(file, i915_hdcp_ver_request_show,
>> +                        inode->i_private);
>> +}
>> +
>> +static int intel_hdcp_debugfs_ver_set(struct intel_connector *connector, u64 val)
>> +{
>> +     struct intel_hdcp *hdcp = &connector->hdcp;
>> +
>> +     if (!hdcp->shim || val > HDCP_VERSION_MASK)
>> +             return -EINVAL;
>> +
>> +     if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
>> +             return -EINVAL;
> What does it matter if you can request the version independent of what's
> currently going on? I think it's just extra code that can go wrong here.
I was a little skeptical about the behavior if the authentication is 
getting retried, and in between
there is a change in the requested version. But again since this is a 
debug environment, the
test should be knowing what it is doing. I can do away with this code.

>> +
>> +     hdcp->debugfs_ver_request = val;
> Usually there's a blank line before the return.

Noted. Will take care in the next version.
>> +     return 0;
>> +}
> Perhaps even the helper is excessive here.

Alright, will get rid of this in next version.

>> +
>> +static ssize_t i915_hdcp_ver_request_write(struct file *file,
>> +                                       const char __user *ubuf,
>> +                                       size_t len, loff_t *offp)
>> +{
>> +     unsigned int hdcp_ver = 0;
>> +     int ret;
>> +     struct drm_connector *connector =
>> +             ((struct seq_file *)file->private_data)->private;
>> +     struct intel_connector *intel_con = to_intel_connector(connector);
> It's *never* intel_con. It's either intel_connector or just connector.
Noted. I think I was trying to squeeze into 80 chars.
I will conform to the existing norms for better readability.

>> +     struct drm_i915_private *i915 = to_i915(connector->dev);
>> +     char tmp[16];
>> +
>> +     if (len == 0)
>> +             return 0;
>> +
>> +     if (len >= sizeof(tmp))
>> +             return -EINVAL;
>> +
>> +     if (copy_from_user(tmp, ubuf, len))
>> +             return -EFAULT;
>> +
>> +     tmp[len] = '\0';
>> +
>> +
>> +     drm_dbg(&i915->drm,
>> +             "Copied %zu bytes from user to request hdcp ver\n", len);
>> +
>> +     ret = kstrtouint(tmp, 10, &hdcp_ver);
>> +     if (ret < 0)
>> +             return ret;
> Replace most of the above with val = kstrtouint_from_user(...).
Will use kstrtouint_from_user(...) to avoid copying and read directly 
from user buffer instead.

>> +
>> +     drm_dbg(&i915->drm, "Got %u for HDCP version\n", hdcp_ver);
> Useless.

I thought it was good to have a debug print.
But the same can be seen by reading the debugfs, so we can do away with it.

>> +     ret = intel_hdcp_debugfs_ver_set(intel_con, hdcp_ver);
>> +     if (ret < 0)
>> +             return ret;
>> +
>> +     *offp += len;
> Usually there's a blank line before return.

Will add the blank line here.

Thanks,
Ankit

>> +     return len;
>> +}
>> +
>> +static const struct file_operations i915_hdcp_ver_request_fops = {
>> +     .owner = THIS_MODULE,
>> +     .open = i915_hdcp_ver_request_open,
>> +     .read = seq_read,
>> +     .llseek = seq_lseek,
>> +     .release = single_release,
>> +     .write = i915_hdcp_ver_request_write
>> +};
>> +
>>   /**
>>    * intel_connector_debugfs_add - add i915 specific connector debugfs files
>>    * @connector: pointer to a registered drm_connector
>> @@ -2215,6 +2311,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>>            connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
>>                debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
>>                                    connector, &i915_hdcp_sink_capability_fops);
>> +             debugfs_create_file("i915_hdcp_version_request", S_IRUGO, root,
>> +                                 connector, &i915_hdcp_ver_request_fops);
>>        }
>>
>>        if (INTEL_GEN(dev_priv) >= 10 &&
> --
> Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
