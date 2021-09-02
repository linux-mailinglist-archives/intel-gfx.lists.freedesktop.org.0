Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1AB3FECBE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 13:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA326E4CD;
	Thu,  2 Sep 2021 11:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062B96E4CD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 11:14:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="206294538"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="206294538"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:14:07 -0700
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="542598163"
Received: from jcalzada-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.47.103])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:14:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YS+m0TVfFXrBkcjy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1630327990.git.jani.nikula@intel.com>
 <097390f12da8de57c9d52ad675309d0422dec8fb.1630327990.git.jani.nikula@intel.com>
 <YS+m0TVfFXrBkcjy@intel.com>
Date: Thu, 02 Sep 2021 14:14:03 +0300
Message-ID: <87fsun9qmc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/debugfs: clean up LPSP capable
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

On Wed, 01 Sep 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Aug 30, 2021 at 03:53:41PM +0300, Jani Nikula wrote:
>> Clean up the LPSP capability printout. No functional changes.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the first two for starters.

BR,
Jani.


>
>> ---
>>  .../drm/i915/display/intel_display_debugfs.c  | 44 +++++++------------
>>  1 file changed, 17 insertions(+), 27 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index d2a14a9c6857..a6dcb95cfc1f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -2225,14 +2225,12 @@ static int i915_psr_status_show(struct seq_file *m, void *data)
>>  }
>>  DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
>>  
>> -#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
>> -				seq_puts(m, "LPSP: incapable\n"))
>> -
>>  static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>>  {
>>  	struct drm_connector *connector = m->private;
>>  	struct drm_i915_private *i915 = to_i915(connector->dev);
>>  	struct intel_encoder *encoder;
>> +	bool lpsp_capable = false;
>>  
>>  	encoder = intel_attached_encoder(to_intel_connector(connector));
>>  	if (!encoder)
>> @@ -2241,35 +2239,27 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>>  	if (connector->status != connector_status_connected)
>>  		return -ENODEV;
>>  
>> -	if (DISPLAY_VER(i915) >= 13) {
>> -		LPSP_CAPABLE(encoder->port <= PORT_B);
>> -		return 0;
>> -	}
>> -
>> -	switch (DISPLAY_VER(i915)) {
>> -	case 12:
>> +	if (DISPLAY_VER(i915) >= 13)
>> +		lpsp_capable = encoder->port <= PORT_B;
>> +	else if (DISPLAY_VER(i915) >= 12)
>>  		/*
>>  		 * Actually TGL can drive LPSP on port till DDI_C
>>  		 * but there is no physical connected DDI_C on TGL sku's,
>>  		 * even driver is not initilizing DDI_C port for gen12.
>>  		 */
>> -		LPSP_CAPABLE(encoder->port <= PORT_B);
>> -		break;
>> -	case 11:
>> -		LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>> -			     connector->connector_type == DRM_MODE_CONNECTOR_eDP);
>> -		break;
>> -	case 10:
>> -	case 9:
>> -		LPSP_CAPABLE(encoder->port == PORT_A &&
>> -			     (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>> -			     connector->connector_type == DRM_MODE_CONNECTOR_eDP  ||
>> -			     connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort));
>> -		break;
>> -	default:
>> -		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>> -			LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
>> -	}
>> +		lpsp_capable = encoder->port <= PORT_B;
>> +	else if (DISPLAY_VER(i915) == 11)
>> +		lpsp_capable = (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>> +				connector->connector_type == DRM_MODE_CONNECTOR_eDP);
>> +	else if (IS_DISPLAY_VER(i915, 9, 10))
>> +		lpsp_capable = (encoder->port == PORT_A &&
>> +				(connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>> +				 connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
>> +				 connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort));
>> +	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>> +		lpsp_capable = connector->connector_type == DRM_MODE_CONNECTOR_eDP;
>> +
>> +	seq_printf(m, "LPSP: %s\n", lpsp_capable ? "capable" : "incapable");
>>  
>>  	return 0;
>>  }
>> -- 
>> 2.20.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
