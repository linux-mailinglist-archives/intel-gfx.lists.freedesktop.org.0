Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CBD9C1928
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 10:33:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4F110E94E;
	Fri,  8 Nov 2024 09:33:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cfb5vrMR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0392B10E94E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 09:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731058398; x=1762594398;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=goVsPt1ctJAboadCL3lA9BSuPhxUFZJds2k9Cn2z7uQ=;
 b=Cfb5vrMR1NexWGy58GH3bY4ojRpXDA+YS+bbp7Qyf+Fntd/9Ij/7+0PO
 nNmfV6V0B5D78dqU2kwMu9UCQI3uZY9F1gMjwFI7u/MB0vI2XmEUCV5qh
 g199YNxDLSWTCZAX/oso/j59kKncr20c6L9DUY3R7fCmG34lWciwL8AJC
 qjIhcrWeQjT4zGZnkuVrch5fQ+De6UT8gU/b92+ECRSP6sxRFlZxumd6A
 IVkkvbUUPZuuN+UTfTLCNpaWkqRNuqzw0vsFaFdv6uOSe48NdmCQZCuCS
 4v1cs8bW3Bvo9SvIagRJ5iZxBq70rkim/YXh4nwOPt3HeMbmkurNgj82P w==;
X-CSE-ConnectionGUID: hehlHzBSRzqt78RWgsy3pQ==
X-CSE-MsgGUID: uNAmYbR4R5WoChh1ajZH+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18561997"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="18561997"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 01:32:43 -0800
X-CSE-ConnectionGUID: 8oQizvguT9WP67dzuwwp/w==
X-CSE-MsgGUID: Ylvjh1pxTFKUlsQ/H4WvYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="89427579"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 01:32:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Garg, Nemesa" <nemesa.garg@intel.com>, "Kulkarni@freedesktop.org"
 <Kulkarni@freedesktop.org>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add WA_14018221282
In-Reply-To: <CY5PR11MB6344E6FFAF5D2A2085CCFEC7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241108080109.3049672-1-nemesa.garg@intel.com>
 <CY5PR11MB6344E6FFAF5D2A2085CCFEC7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
Date: Fri, 08 Nov 2024 11:32:37 +0200
Message-ID: <878qtuf4ui.fsf@intel.com>
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

On Fri, 08 Nov 2024, "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Nemesa Garg
>> Sent: 08 November 2024 13:31
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kulkarni@freedesktop.org;
>> Kulkarni, Vandita <vandita.kulkarni@intel.com>
>> Subject: [PATCH] drm/i915/display: Add WA_14018221282
>> 
>> It was observed that the first write to DKL DP Mode register was not taking
>> effect, hence rewrite this register.
>> 
>> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>> Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 769bd1f26db2..16a1d18f3aa1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2104,6 +2104,16 @@ void
>> intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>>  	encoder->disable_clock(encoder);
>>  }
>> 
>> +static void
>> +tgl_wa_14018221282(struct drm_i915_private *dev_priv, enum tc_port
>> tc_port,
>
> 1. I recommend, Need to think on naming here, as doesn't clarify on anything.

Yes please everyone stop with the madness of naming functions
bla_bla_wa_124235432().

BR,
Jani.


> 2. Also adding on thought to have pre-check of return if values are already updated.
>
>> +		   u32 ln0, u32 ln1)
>> +{
>> +	if (ln0 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
>> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0),
>> ln0);
>> +	if (ln1 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
>> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1),
>> ln1); }
>> +
>>  static void
>>  icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>>  		       const struct intel_crtc_state *crtc_state) @@ -2185,6
>> +2195,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>>  	if (DISPLAY_VER(dev_priv) >= 12) {
>>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0),
>> ln0);
>>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1),
>> ln1);
>> +		 /* WA_14018221282 */
>> +		if (DISPLAY_VER(dev_priv) == 12)
>> +			tgl_wa_14018221282(dev_priv, tc_port, ln0, ln1);
>
> Always use the display local var when possible. DISPLAY_VER(display)
>
>> +
>>  	} else {
>>  		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
>>  		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel
