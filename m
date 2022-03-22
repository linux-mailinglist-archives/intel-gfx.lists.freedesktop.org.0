Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 304E04E3660
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 03:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B39E10E4F9;
	Tue, 22 Mar 2022 02:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C7010E4F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 02:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647914508; x=1679450508;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gJ2eyLfAb7MgFSnvRS7aqHivvfLnrthu480oPsEqxds=;
 b=KsnpGxwOFug2JPHg5t45GxxAy+6S6lQSft5UesYhyt03YjgvE0QAWSvA
 PccmLWFfFGku+keWJSuzZK8My3+LIoudGgNNhIxZJL/SuMHqRNLQ6IHpX
 JN47+w35tfbUlwIa/bQlDV7I/daaniYOtmtcZbjJrYqQ9krmrEyyHsCeI
 RWnpHrBfu/Xtvm3zPv9ik1QXjeGIgh7Jmw6FU7d/puSPMypdMstUEezJv
 i8mxyYP3Nh0sbIGWNZRLrL588sx1+TgPI64+ze6jPzsq1UJcPwcCGjVm9
 PmXp8DWxYWIjlb3MEZndNqI5JmaIeXzJCkUqriutvnZIun6n3id2SGCCr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="256517650"
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; d="scan'208";a="256517650"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 19:01:45 -0700
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; d="scan'208";a="636863828"
Received: from eliasbro-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.30.246])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 19:01:44 -0700
Date: Mon, 21 Mar 2022 19:01:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH v3 1/1] i915/drm: Split out x86/arm64
 for run_as_guest
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
Cc: jani.nikula@intel.com, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>Wanted to ping this older thread to find out where we stand with this patch,
>Are we OK with the current state of these changes?
>
>With more recent information gathered from feedback on other patches, would
>we prefer changing this to a more arch-neutral control flow?
>
>e.g.
>#if IS_ENABLED(CONFIG_X86)
>...
>#else
>...
>#endif
>
>Would we also prefer this RFC series be merged or would it be preferred to
>create a new series instead?

for this specific function, that is used in only 2 places I think it's
ok to do:

	static inline bool run_as_guest(void)
	{
	#if IS_ENABLED(CONFIG_X86)
		return !hypervisor_is_type(X86_HYPER_NATIVE);
	#else	
		/* Not supported yet */
		return false;	
	#endif
	}

For PCH it doesn't really matter as we don't execute that function
for discrete. For intel_vtd_active() I figure anything other than
x86 would be fine with false here.

Jani, that this look good to you?

Lucas De Marchi

>
>Regards,
>Casey
>
>On 2/15/22 15:41, Casey Bowman wrote:
>>Splitting out run_as_guest into platform-specific functions
>>as arm64 does not support this functionality.
>>
>>Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_drv.h | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>index 1bca510a946d..fdec2b025540 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -1381,10 +1381,18 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
>>+#if IS_ENABLED(CONFIG_X86)
>>  static inline bool run_as_guest(void)
>>  {
>>  	return !hypervisor_is_type(X86_HYPER_NATIVE);
>>  }
>>+#elif IS_ENABLED(CONFIG_ARM64)
>>+static inline bool run_as_guest(void)
>>+{
>>+	/* Not supported for arm64, so we return false  */
>>+	return false;
>>+}
>>+#endif
>>  #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
>>  					      IS_ALDERLAKE_S(dev_priv))
>
