Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8817291AF4D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 20:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6760A10E30A;
	Thu, 27 Jun 2024 18:49:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BkvjzDOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4161D10E30A;
 Thu, 27 Jun 2024 18:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719514143; x=1751050143;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A/u6kGTqUXbcSPL7D8UZAx8Yo20ehmQwJ/XxfgOHZ7A=;
 b=BkvjzDOKm5I7IgNy/FESWD6LxbGRgLlM3wJ+qn+pRTOItMZU4A1FsPLJ
 BS8AVYl1ysiY/FzWEVjgHFkk7Xx26Lkr1qdptft7tgIUpjM46YPbNC/og
 Bvw54WHsCioGVxgnueocqNb7K0b6gfO1zanB5cjSnWxCOwLCAoy70hU4W
 Nl1OTy/edHu1qstDaucOtQvpY+CuKij35uODiiqnYRnEoOAQ+oep2h2zc
 VNFrFs5nPVAtG4EL054bnf287LRwxknqkg5TldNoCjaPGCXmyEP0thOyb
 UNGChgRX0L+WcgNkZZVdcuiRaz65gUuTn+nXEE0Nl52GhruwfiK/JVCa0 Q==;
X-CSE-ConnectionGUID: GE5pHu7WTi67b5lplDTUdg==
X-CSE-MsgGUID: O01UmLXKQoO05D9qbnss+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27256328"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="27256328"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 11:48:51 -0700
X-CSE-ConnectionGUID: 1+agTrW8Q/KT/eVxFv80lw==
X-CSE-MsgGUID: FeODwVfXRROciTAFD/bYlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="44599471"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.189])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 11:48:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 4/6] drm/i915/display: add "display is" structure with
 platform members
In-Reply-To: <dkbhgldqn3maarg2j6sg3kvylrgh6vqtwzs3v2r6shmbga2vra@vybhd6y44xbb>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718719962.git.jani.nikula@intel.com>
 <80e564e550bc0972c9e0199f1a361a99545ab81b.1718719962.git.jani.nikula@intel.com>
 <dkbhgldqn3maarg2j6sg3kvylrgh6vqtwzs3v2r6shmbga2vra@vybhd6y44xbb>
Date: Thu, 27 Jun 2024 21:48:44 +0300
Message-ID: <87ttheb4s3.fsf@intel.com>
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

On Thu, 27 Jun 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Jun 18, 2024 at 05:22:54PM GMT, Jani Nikula wrote:
>>Add a structure with a bitfield member for each platform and
>>subplatform, and initialize them in platform and subplatform descs.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++--
>> drivers/gpu/drm/i915/display/intel_display_device.h | 8 ++++++++
>> 2 files changed, 14 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>index 80563af7ac71..0c275d85bd30 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>@@ -21,6 +21,7 @@ __diag_push();
>> __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>>
>> struct subplatform_desc {
>>+	struct intel_display_is is;
>> 	enum intel_display_platform subplatform;
>> 	const char *name;
>> 	const u16 *pciidlist;
>>@@ -28,9 +29,11 @@ struct subplatform_desc {
>>
>> #define SUBPLATFORM(_platform, _subplatform)				\
>> 	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>>-	.name = #_subplatform
>>+	.name = #_subplatform,						\
>>+	.is._platform##_##_subplatform = 1
>>
>> struct platform_desc {
>>+	struct intel_display_is is;
>> 	enum intel_display_platform platform;
>> 	const char *name;
>> 	const struct subplatform_desc *subplatforms;
>>@@ -39,7 +42,8 @@ struct platform_desc {
>>
>> #define PLATFORM(_platform)			 \
>> 	.platform = (INTEL_DISPLAY_##_platform), \
>>-	.name = #_platform
>>+	.name = #_platform,			 \
>>+	.is._platform = 1
>>
>> #define ID(id) (id)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>index 50485235ef09..73070c8487ff 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>@@ -101,6 +101,14 @@ enum intel_display_platform {
>>
>> #undef ENUM
>>
>>+#define MEMBER(name) u32 name:1;
>>+
>>+struct intel_display_is {
>
> intel_display_is??? very odd to name something like this as a verb and
> that has no indication in the name what actually is about. Why is this
> not "_platform"?

Yeah, naming is hard.

I suppose I could rename it after the last patch which removes enum
intel_display_platform.

BR,
Jani.

>
> Lucas De Marchi
>
>>+	INTEL_DISPLAY_PLATFORMS(MEMBER);
>>+};
>>+
>>+#undef MEMBER
>>+
>> #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>> 	/* Keep in alphabetical order */ \
>> 	func(cursor_needs_physical); \
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
