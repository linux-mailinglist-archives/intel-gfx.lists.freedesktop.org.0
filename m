Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 145475969E8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 09:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F1F10E17F;
	Wed, 17 Aug 2022 07:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 452A410EB84
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 07:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660719606; x=1692255606;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MpJP4dAQJ0bvklfCCiGmVZerbMsVGFdq1aeYVawn3kk=;
 b=QTl1Lb9IjWXpr6X20ltzZTN9JgzNiGToumkcbKibBNhse9/Z+04LwtDd
 qA5MJSM8oPu5YICO1t6j79yq5GeRTPT9597Sw7Znw/1MZgcRP/tNfUcPE
 uiGS7rZSoxMFYm+ZvBGG5cxFD0TEWULN2k/57fIAXY3l/7t+9PWedGcIr
 OjKMapB7J0q4/JTIfKx6Q0AEHLRfb0vhaqyUYlOxdc2sONfgfO9LRik3J
 5Rb9lDnjGMLrmNLaMZIRUWDbIAMVVnjlfopBVcKVn19oNH1gKCht8MhE9
 9Yo3RxVO6qeR85GTuCFnGVJ5aMiE32S03FV+M6NW1ZJNbjKcECjqrqPHj Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="279384360"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="279384360"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:00:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667478313"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:00:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220817043221.p3awhzpxjtwnfmxw@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <c6e7bdc0a0d86a99f19d07beed273707793c3739.1660230121.git.jani.nikula@intel.com>
 <20220817043221.p3awhzpxjtwnfmxw@ldmartin-desk2.lan>
Date: Wed, 17 Aug 2022 10:00:01 +0300
Message-ID: <87y1vnpd72.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 24/39] drm/i915: move mipi_mmio_base to
 display.dsi
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Aug 11, 2022 at 06:07:35PM +0300, Jani Nikula wrote:
>>Move display related members under drm_i915_private display sub-struct.
>>
>>Prefer adding anonymous sub-structs even for single members that aren't
>>our own structs.
>>
>>Abstract mmio base member access in register definitions in a macro.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> .../gpu/drm/i915/display/intel_display_core.h |   5 +
>> drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
>> drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 +++++++++---------
>> drivers/gpu/drm/i915/i915_drv.h               |   3 -
>> 4 files changed, 102 insertions(+), 98 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>index 533c2e3a6685..db1ba379797e 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>@@ -251,6 +251,11 @@ struct intel_display {
>> 		unsigned int max_cdclk_freq;
>> 	} cdclk;
>>
>>+	struct {
>>+		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
>
> this is already outdated, so maybe remove the platforms from the
> comment?

What did I miss? It's only used for vlv_dsi, not icl_dsi which is the
newer thing.

>
>
>>+		u32 mmio_base;
>>+	} dsi;
>>+
>> 	struct {
>> 		/* list of fbdev register on this device */
>> 		struct intel_fbdev *fbdev;
>>diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>index b9b1fed99874..9651a1f00587 100644
>>--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>@@ -1872,9 +1872,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>> 		return;
>>
>> 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>>-		dev_priv->mipi_mmio_base = BXT_MIPI_BASE;
>>+		dev_priv->display.dsi.mmio_base = BXT_MIPI_BASE;
>> 	else
>>-		dev_priv->mipi_mmio_base = VLV_MIPI_BASE;
>>+		dev_priv->display.dsi.mmio_base = VLV_MIPI_BASE;
>>
>> 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
>> 	if (!intel_dsi)
>>diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>>index 356e51515346..e065b8f2ee08 100644
>>--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>>+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>>@@ -11,6 +11,8 @@
>> #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
>> #define BXT_MIPI_BASE			0x60000
>>
>>+#define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
>>+
>> #define _MIPI_PORT(port, a, c)	(((port) == PORT_A) ? a : c)	/* ports A and C only */
>> #define _MMIO_MIPI(port, a, c)	_MMIO(_MIPI_PORT(port, a, c))
>>
>>@@ -96,8 +98,8 @@
>>
>> /* MIPI DSI Controller and D-PHY registers */
>>
>>-#define _MIPIA_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb000)
>>-#define _MIPIC_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb800)
>>+#define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>
> ugh, and I thought we wouldn't have so many implicit params anymore.
> Mind adding a "TODO: remove implicit dev_priv parameter" ?

It's been on my private todo list like 10 years. :(

BR,
Jani.


>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>
> Lucas De Marchi

-- 
Jani Nikula, Intel Open Source Graphics Center
