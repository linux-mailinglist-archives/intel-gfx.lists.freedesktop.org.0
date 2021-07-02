Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155163B9D1A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 09:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D4F89F31;
	Fri,  2 Jul 2021 07:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67CE89F31
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 07:49:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="269819338"
X-IronPort-AV: E=Sophos;i="5.83,316,1616482800"; d="scan'208";a="269819338"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 00:49:16 -0700
X-IronPort-AV: E=Sophos;i="5.83,316,1616482800"; d="scan'208";a="482206978"
Received: from flast-mobl.ger.corp.intel.com (HELO localhost) ([10.252.43.116])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 00:49:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>
In-Reply-To: <20210701000114.smjdtszhfx24gkkj@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210630230624.25407-1-anusha.srivatsa@intel.com>
 <20210701000114.smjdtszhfx24gkkj@ldmartin-desk2>
Date: Fri, 02 Jul 2021 10:49:05 +0300
Message-ID: <87eechqhou.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use RUNTIME_INFO->stp for DMC
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Jun 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Typo: RUNTIME_INFO->stp
>
> On Wed, Jun 30, 2021 at 04:06:24PM -0700, Anusha Srivatsa wrote:
>>On the dmc side,we maintain a lookup table with different display
>>stepping-substepping combinations.
>>
>>Instead of adding new table for every new platform, lets ues
>>the stepping info from RUNTIME_INFO(dev_priv)->step
>>Adding the helper intel_get_display_step().
>>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 49 ++++++++++++++++++++++--
>> 1 file changed, 45 insertions(+), 4 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index f8789d4543bf..c7ff7ff3f412 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -266,14 +266,55 @@ static const struct stepping_info icl_stepping_info[] = {
>> };
>>
>> static const struct stepping_info no_stepping_info = { '*', '*' };
>>+struct stepping_info *display_step;
>>+
>>+static struct stepping_info *
>>+intel_get_display_stepping(struct intel_step_info step)
>>+{
>>+
>>+	switch (step.display_step) {
>>+	case STEP_A0:
>>+		display_step->stepping = 'A';
>>+		display_step->substepping = '0';
>>+		break;
>>+	case STEP_A2:
>>+		display_step->stepping = 'A';
>>+		display_step->substepping = '2';
>>+		break;
>>+	case STEP_B0:
>>+		display_step->stepping = 'B';
>>+		display_step->substepping = '0';
>>+		break;
>>+	case STEP_B1:
>>+		display_step->stepping = 'B';
>>+		display_step->substepping = '1';
>>+		break;
>>+	case STEP_C0:
>>+		display_step->stepping = 'C';
>>+		display_step->substepping = '0';
>>+		break;
>>+	case STEP_D0:
>>+		display_step->stepping = 'D';
>>+		display_step->substepping = '0';
>>+		break;
>>+	default:
>>+		display_step->stepping = '*';
>>+		display_step->substepping = '*';
>>+		break;
>>+	}
>
>
> "crazy" idea that would avoid this type of conversion:
> changing the step enum to be:
>
>
> #define make_step(letter, num) (int)(((letter) << 8 ) | (num))
>
> STEP_A0 = make_step('A', '0'),
> STEP_A1 = make_step('A', '1'),
>
> and adapt the rest of the code to play with u16 instead of u8, and
> handle the STEP_FUTURE/STEP_NONE/STEP_FOREVER.
> Maybe it is crazy, dunno.
>
> +Jani / +Jose. Thoughts?

Frankly, I think all of this should be incorporated to intel_step.[ch]
instead of having a semi-overlapping handling here. Just look at the
amount of duplication already.


BR,
Jani.

>
>
> For this version the next comment is probably more important.
>
>>+	return display_step;
>>+}
>>
>> static const struct stepping_info *
>> intel_get_stepping_info(struct drm_i915_private *dev_priv)
>> {
>> 	const struct stepping_info *si;
>>+	struct intel_step_info step = RUNTIME_INFO(dev_priv)->step;
>> 	unsigned int size;
>>
>>-	if (IS_ICELAKE(dev_priv)) {
>>+	if (DISPLAY_VER(dev_priv) >= 12) {
>>+		si = intel_get_display_stepping(step);
>>+	} else if (IS_ICELAKE(dev_priv)) {
>> 		size = ARRAY_SIZE(icl_stepping_info);
>> 		si = icl_stepping_info;
>
> can we move the other ones too? Just use display_step for all platforms.
> Notice that before the separation we will have display_step ==
> graphics_step, so it should just work.
>
>
> Lucas De Marchi
>
>> 	} else if (IS_SKYLAKE(dev_priv)) {
>>@@ -287,10 +328,10 @@ intel_get_stepping_info(struct drm_i915_private *dev_priv)
>> 		si = NULL;
>> 	}
>>
>>-	if (INTEL_REVID(dev_priv) < size)
>>-		return si + INTEL_REVID(dev_priv);
>>+	if (DISPLAY_VER(dev_priv) < 12)
>>+		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;
>>
>>-	return &no_stepping_info;
>>+	return si;
>> }
>>
>> static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
>>-- 
>>2.32.0
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
