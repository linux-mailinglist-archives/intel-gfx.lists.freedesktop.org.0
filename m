Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5430910547
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 15:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E002910E9BF;
	Thu, 20 Jun 2024 13:06:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLJATCs4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D027810E9BF;
 Thu, 20 Jun 2024 13:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718888768; x=1750424768;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=blcdu6LUUax5ZPHL9Bk8yfAUyB+4FTYFdB7ZNKtGWDc=;
 b=jLJATCs4i3DyKOLsJyS8dS92Ae2FwHXsLq/E5etobV7Mqich5I9Sqovj
 XuycrcBFC1DRJ4SDWmvU4eCMTfCiMfKpjNDsMLXxzB+WpNFjv+CGaaD1G
 AVF0b8Uh9A+A/BOuCxfrq6WOkz/BZHp9lneW5/RDaRMwy4VfbBg+V2Ij2
 2IU2iPZUL24EeN20Gbn5Z38vayVqOuD3Uptklt6wnBRuL7c6qZ/aoDJVG
 u3boPNMWXm9D4VW630TXhK1RMN8kiFWL73fYiMDIva4ZvETY8u9NOI9jF
 auZIOYrIjMf+RmiJNoFEStp+r7y+blrjkXcaRT/nU45E2hLRnVQQRogVm w==;
X-CSE-ConnectionGUID: 1u9RokuPTHC9JApBIrogQw==
X-CSE-MsgGUID: kH+Q7i/AR+W3MV8v8QUpMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="16002755"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="16002755"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:05:55 -0700
X-CSE-ConnectionGUID: MODbD/2sSXaaguox65r+jQ==
X-CSE-MsgGUID: V4iclbrFQwOQ2LARdgg1Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="47177421"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:05:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
In-Reply-To: <ZnMlKgX7Fd4Edtnf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
 <ZnMlKgX7Fd4Edtnf@intel.com>
Date: Thu, 20 Jun 2024 16:05:46 +0300
Message-ID: <87o77vepcl.fsf@intel.com>
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

On Wed, 19 Jun 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Jun 18, 2024 at 05:22:55PM +0300, Jani Nikula wrote:
>> Facilitate using display->is.HASWELL etc. for identifying platforms and
>> subplatforms. Merge platform and subplatform members together.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>>  .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
>>  2 files changed, 22 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 7715fc329057..35bea92893af 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -286,6 +286,9 @@ struct intel_display {
>>  	/* drm device backpointer */
>>  	struct drm_device *drm;
>>  
>> +	/* Platform identification */
>> +	struct intel_display_is is;
>> +
>>  	/* Display functions */
>>  	struct {
>>  		/* Top level crtc-ish functions */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 0c275d85bd30..954caea38005 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>>  	return NULL;
>>  }
>>  
>> +static void mem_or(void *_dst, const void *_src, size_t size)
>> +{
>> +	const u8 *src = _src;
>> +	u8 *dst = _dst;
>> +	size_t i;
>> +
>> +	for (i = 0; i < size; i++)
>> +		dst[i] |= src[i];
>
> I confess that here I got a bit lost. But I believe it is just a matter of
> adding a few comments in the code or perhaps adjusting function names...
>
> If my coffee is working well still, what we are doing here is ensuring that:
>
> is.HASWELL returns true regardless the subplatform this is coming from...
> like is.HASWELL_ULT or is.HASWELL_ULX.
>
> But since you are only doing dst |= src and not doing src |= dst and also
> not calling this function for different subplatforms, then individually
> is.HASWELL_ULT is false for ULX platform and vice-versa.

The subplatform stuff here only ever applies to one subplatform, not
multiple. The "ULX is also ULT" is not handled yet, and maybe I'd like
to handle that in some special way, because I like the simplicity of
only having one subplatform in effect at a time.

>
> Perhaps the name 'merge' is not a good one?
>
>> +}
>> +
>> +static void merge_display_is(struct intel_display_is *dst,
>> +			     const struct intel_display_is *src)
>> +{
>> +	mem_or(dst, src, sizeof(*dst));
>
> and/or perhaps we don't need this extra indirection here?

I added the extra indirection only because "mem_or" is something that
could exist as a generic thing. "just do bitwise OR from src to dst".

BR,
Jani.

>
>> +}
>> +
>>  void intel_display_device_probe(struct drm_i915_private *i915)
>>  {
>> +	struct intel_display *display = &i915->display;
>>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>  	const struct intel_display_device_info *info;
>>  	struct intel_display_ip_ver ip_ver = {};
>> @@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>>  
>>  	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
>>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>> +	display->is = desc->is;
>>  
>>  	subdesc = find_subplatform_desc(pdev, desc);
>>  	if (subdesc) {
>>  		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
>>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>> +		merge_display_is(&display->is, &subdesc->is);
>>  	}
>>  
>>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
