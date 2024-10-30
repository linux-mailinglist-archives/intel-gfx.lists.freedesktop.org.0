Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B10C9B5FF4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 11:21:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F5910E0DB;
	Wed, 30 Oct 2024 10:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5eErbKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28E110E0DB;
 Wed, 30 Oct 2024 10:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730283712; x=1761819712;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=goeqCvrDWKW2/M6f9JChedXolvVKgw9N+mZZwLMnIOI=;
 b=l5eErbKD0wpEQZpJmKcrm7kQmMqQvlZHX4x/59EE2lf/h0fxQ9Uc1eux
 oZxX36+dz2Ukg59VuGL9yIRbLFsZVU3yG/cnOgTUrK5z2lQEqqjc29Ccn
 U/18QP9QCFA3IUcusctyWwhRUblpHpfrno3PVWdsXHLWtsqelPo1oVUPf
 NezZ1scqdWa64Xf3ZljW7w3HDLDLKet5Y7yWd1g/xbesUVvOiBk7TTEYZ
 /kWfQGxk8neBrah/ir/SDuIEiWO0ctlIXylCez3TH8AAzoXG75gb2iaQp
 Zb0O+ipQBMbX6uL6q4UYxb3dZwunnjh6AhN1hFHMdTn27hnbTtpC3lAzD g==;
X-CSE-ConnectionGUID: M8idp/NvQPyQmEL6CYhBBw==
X-CSE-MsgGUID: QYnygs1YSzWy3w6sAmTlHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33668977"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33668977"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:21:52 -0700
X-CSE-ConnectionGUID: d3DZpi8fS4CNAwIbMKtqoA==
X-CSE-MsgGUID: P1qp92ugTg+z2IOjNJwRbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="86872614"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:21:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
In-Reply-To: <SJ1PR11MB61299120730252D07F24B054B9542@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241030025304.317977-1-suraj.kandpal@intel.com>
 <SJ1PR11MB61299120730252D07F24B054B9542@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Wed, 30 Oct 2024 12:21:46 +0200
Message-ID: <87zfmlnb5x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 30 Oct 2024, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Sent: Wednesday, October 30, 2024 8:23 AM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
>> <chaitanya.kumar.borah@intel.com>
>> Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
>> 
>> Add the loop on the first read/write we do to give docks and dp encoders
>> some extra time to get their HDCP DPCD registers ready only for DP/DPMST
>> encoders as this issue is only observed here no need to burden other
>> encoders with extra retries as this causes the HDMI connector to have some
>> other timing issue and fails HDCP authentication.
>> 
>> --v2
>> -Add intent of patch [Chaitanya]
>> -Add reasoning for loop [Jani]
>> -Make sure we forfiet the 50ms wait for non DP/DPMST encoders.
>> 
>> Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to
>> downstream")
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 36 +++++++++++++++--------
>>  1 file changed, 23 insertions(+), 13 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index ed6aa87403e2..c8ba69c51cce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct
>> intel_connector *connector)  static int
>> hdcp2_authentication_key_exchange(struct intel_connector *connector)  {
>>  	struct intel_display *display = to_intel_display(connector);
>> +	struct intel_digital_port *dig_port =
>> +		intel_attached_dig_port(connector);
>>  	struct intel_hdcp *hdcp = &connector->hdcp;
>>  	union {
>>  		struct hdcp2_ake_init ake_init;
>> @@ -1513,31 +1515,39 @@ static int
>> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>>  	} msgs;
>>  	const struct intel_hdcp_shim *shim = hdcp->shim;
>>  	size_t size;
>> -	int ret, i;
>> +	bool is_dp_encoder;
>> +	int ret, i, max_retries;
>> 
>>  	/* Init for seq_num */
>>  	hdcp->seq_num_v = 0;
>>  	hdcp->seq_num_m = 0;
>> 
>> +	is_dp_encoder =	intel_encoder_is_dp(&dig_port->base) ||
>> +		intel_encoder_is_mst(&dig_port->base);
>> +	if (is_dp_encoder)
>> +		max_retries = 10;
>> +	else
>> +		max_retries = 1;
>> +
>>  	ret = hdcp2_prepare_ake_init(connector, &msgs.ake_init);
>>  	if (ret < 0)
>>  		return ret;
>> 
>>  	/*
>>  	 * Retry the first read and write to downstream at least 10 times
>> -	 * with a 50ms delay if not hdcp2 capable(dock decides to stop
>> advertising
>> -	 * hdcp2 capability for some reason). The reason being that
>> -	 * during suspend resume dock usually keeps the HDCP2 registers
>> inaccesible
>> -	 * causing AUX error. This wouldn't be a big problem if the userspace
>> -	 * just kept retrying with some delay while it continues to play low
>> -	 * value content but most userpace applications end up throwing an
>> error
>> -	 * when it receives one from KMD. This makes sure we give the dock
>> -	 * and the sink devices to complete its power cycle and then try HDCP
>> -	 * authentication. The values of 10 and delay of 50ms was decided
>> based
>> -	 * on multiple trial and errors.
>> +	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
>> +	 * (dock decides to stop advertising hdcp2 capability for some
>> reason).
>> +	 * The reason being that during suspend resume dock usually keeps
>> the
>> +	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
>> +	 * big problem if the userspace just kept retrying with some delay
>> while
>> +	 * it continues to play low value content but most userpace
>> applications
>> +	 * end up throwing an error when it receives one from KMD. This
>> makes
>> +	 * sure we give the dock and the sink devices to complete its power
>> cycle
>> +	 * and then try HDCP authentication. The values of 10 and delay of
>> 50ms
>> +	 * was decided based on multiple trial and errors.
>>  	 */
>> -	for (i = 0; i < 10; i++) {
>> -		if (!intel_hdcp2_get_capability(connector)) {
>> +	for (i = 0; i < max_retries; i++) {
>> +		if (!intel_hdcp2_get_capability(connector) &&
>> is_dp_encoder) {
>
> Now I am a bit confused, if you are using this Boolean here. Do you
> still need different values for max_retries?

Even more confusing, if you get false for hdcp2 cap with HDMI, you'll
continue with this stuff anyway?! What's the point in that?

BR,
Jani.

>
> Regards
>
> Chaitanya
>
>>  			msleep(50);
>>  			continue;
>>  		}
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel
