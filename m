Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB49B4774
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 11:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD4210E636;
	Tue, 29 Oct 2024 10:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFw2xCfZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30BFA10E62A;
 Tue, 29 Oct 2024 10:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730199248; x=1761735248;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=G1TFIOsaMcnlmKI4hRyTlyP5IIirBh6IlNsl/mTKVDQ=;
 b=JFw2xCfZ9u6Yios3nqbGXYAtycbhhkBAxK2xFTEQZ8spaYp2oq+pjI/A
 NzlV9GeDUODlEEK17IDQTKtPJXFoXLd3ETjd5Ng2nWte5BI33ZDkpVcg2
 h9Bb/uqVXJ0/XFDXu3WvWb3GqitINRdSPnUD4peDrEgxk3k+20Utgl/lg
 MUf6pCI1s7bFzawElASgEqVJO4U8hyhJxT1jv6JoRWCJT/C0mbg3Pcse5
 jnjoVRvxeXTzbvmcf87gtQwm5J0tht23j80cbAhc2202e2jHkcDQx6uPO
 zUTiP6SGftIfSabKug1RgQMkqmhatdZe4mki52k1jqE4e5iyx6BNrznzs g==;
X-CSE-ConnectionGUID: k1E8RRLGSa6DXevA41ca5A==
X-CSE-MsgGUID: rCjx2Z0TQRuFUFjvBXrN6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="30041632"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="30041632"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:54:07 -0700
X-CSE-ConnectionGUID: nQztQP12Q4iZERUdFwoX+w==
X-CSE-MsgGUID: r7TEebOPRYWKAjbvl4P9qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="112728618"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:54:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
In-Reply-To: <SJ1PR11MB6129CCEF0FD3585991A07693B94B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029085304.219168-1-suraj.kandpal@intel.com>
 <SJ1PR11MB6129CCEF0FD3585991A07693B94B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 29 Oct 2024 12:54:02 +0200
Message-ID: <87h68vnprp.fsf@intel.com>
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

On Tue, 29 Oct 2024, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Sent: Tuesday, October 29, 2024 2:23 PM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
>> Suraj <suraj.kandpal@intel.com>
>> Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
>> 
>> Add the loop on the first read and write only for DP/DPMST encoders as this
>> issue is only observed here no need to burden other encoders with extra
>> retries.
>
> It would make the motivation of the patch clearer if we describe "this issue" here.

Ditto for "the loop".

>
>> 
>> Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to
>> downstream")
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 12 ++++++++++--
>>  1 file changed, 10 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index ed6aa87403e2..fcfb5a9f303a 100644
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
>> @@ -1513,12 +1515,18 @@ static int
>> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>>  	} msgs;
>>  	const struct intel_hdcp_shim *shim = hdcp->shim;
>>  	size_t size;
>> -	int ret, i;
>> +	int ret, i, max_retries;
>> 
>>  	/* Init for seq_num */
>>  	hdcp->seq_num_v = 0;
>>  	hdcp->seq_num_m = 0;
>> 
>> +	if (intel_encoder_is_dp(&dig_port->base) ||
>> +	    intel_encoder_is_mst(&dig_port->base))
>> +		max_retries = 10;
>> +	else
>> +		max_retries = 1;
>> +
>>  	ret = hdcp2_prepare_ake_init(connector, &msgs.ake_init);
>>  	if (ret < 0)
>>  		return ret;
>> @@ -1536,7 +1544,7 @@ static int
>> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>>  	 * authentication. The values of 10 and delay of 50ms was decided
>> based
>>  	 * on multiple trial and errors.
>>  	 */
>
> Perhaps this comment can use an update too.
>
> Functionally LGTM.
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>
>> -	for (i = 0; i < 10; i++) {
>> +	for (i = 0; i < max_retries; i++) {
>>  		if (!intel_hdcp2_get_capability(connector)) {
>>  			msleep(50);
>>  			continue;
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel
