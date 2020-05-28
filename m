Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 385781E59D1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 09:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3336E420;
	Thu, 28 May 2020 07:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF086E420
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 07:45:52 +0000 (UTC)
IronPort-SDR: wqemhWQjIDG5vm2BGYgs+D4IeawLffL4aPCY1f/Jqh2lSTTIAZjFwXa6gRH05+i6Ea9pJhmfkS
 SroNR9V1zkHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:45:52 -0700
IronPort-SDR: L170kQRxaIgCKU4OAcdBU4NErKTIS82pvs7XceR5C49RKCRECeeuj71Hroqp5wjIIgXHnLDlSN
 mqZ1l5PidU+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="267130667"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.120.162])
 ([10.215.120.162])
 by orsmga003.jf.intel.com with ESMTP; 28 May 2020 00:45:45 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
 <20200527110132.16679-2-ankit.k.nautiyal@intel.com>
 <87pnap1mxl.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <6def8626-d780-9da9-d3ce-7e30ff2ebb55@intel.com>
Date: Thu, 28 May 2020 13:15:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <87pnap1mxl.fsf@intel.com>
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add support for considering
 HDCP ver requested via debugfs
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



On 5/27/2020 7:48 PM, Jani Nikula wrote:
> On Wed, 27 May 2020, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> For testing and debugging each HDCP version separately, a debugfs
>> entry for requesting a specific version is required. The vesion
>> requested via debugfs needs to be stored in hdcp structure. This can
>> then be considered while enabling HDCP, provided the platform and the
>> display supports the requested version.
>>
>> This patch adds the support for storing the version requested as a 32bit
>> flag. The default value is set to signify that any of the HDCP version
>> can be used.
>>
>> If a specific HDCP version is requested through the debugfs, the driver
>> chooses that version, instead of policy of choosing the highest HDCP
>> version supported.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
>>   drivers/gpu/drm/i915/display/intel_hdcp.c          |  8 ++++++--
>>   2 files changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 9488449e4b94..cfa641c70717 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -408,6 +408,16 @@ struct intel_hdcp {
>>         * Hence caching the transcoder here.
>>         */
>>        enum transcoder cpu_transcoder;
>> +
>> +     /*
>> +      * HDCP version requested from debugfs i915_hdcp_ver_request.
>> +      * Kernel will read these bits and entertain the request, as per
>> +      * the HDCP capability of the panel and platform.
>> +      */
>> +#define HDCP_VERSION_1_4     0x01
>> +#define HDCP_VERSION_2_2     0x02
>> +#define HDCP_VERSION_MASK    0x03
>> +     u32 debugfs_ver_request;
>>   };
>>
>>   struct intel_connector {
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index 2cbc4619b4ce..951401046804 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -1977,6 +1977,8 @@ int intel_hdcp_init(struct intel_connector *connector,
>>        if (!shim)
>>                return -EINVAL;
>>
>> +     hdcp->debugfs_ver_request = HDCP_VERSION_MASK;
> It's almost always better to keep 0 as the default or initial value. If
> the member is non-zero, you do as requested.

I was thinking if we can have a request for "neither of the versions" to 
be represented as 0.
But that seems to be silly now, without any actual use case, when I look 
closely.

I will have this set to 0 by default and only use the member if non-zero.

Thanks,
Ankit

>
>> +
>>        if (is_hdcp2_supported(dev_priv))
>>                intel_hdcp2_init(connector, shim);
>>
>> @@ -2023,7 +2025,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>>         * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>>         * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>>         */
>> -     if (intel_hdcp2_capable(connector)) {
>> +     if ((hdcp->debugfs_ver_request & HDCP_VERSION_2_2) &&
>> +         intel_hdcp2_capable(connector)) {
>>                ret = _intel_hdcp2_enable(connector);
>>                if (!ret)
>>                        check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
>> @@ -2033,7 +2036,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>>         * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
>>         * be attempted.
>>         */
>> -     if (ret && intel_hdcp_capable(connector) &&
>> +     if (ret && (hdcp->debugfs_ver_request & HDCP_VERSION_1_4) &&
>> +         intel_hdcp_capable(connector) &&
>>            hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
>>                ret = _intel_hdcp_enable(connector);
>>        }
> --
> Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
