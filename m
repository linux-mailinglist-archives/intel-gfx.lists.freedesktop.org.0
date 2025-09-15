Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAE0B57DF0
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58CB810E106;
	Mon, 15 Sep 2025 13:52:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pf5Veocv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE7D10E106
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 13:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757944321; x=1789480321;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2zjlvF4MOKAYq8CFLdwz2B7clr8sQstE6Mek/AVi4To=;
 b=Pf5Veocvb1byXcd6IuxQmyGNfmDPmzH54PX7J5Hz18+i9iUofp8hFJpP
 8FVAPgNCEyLAppsD5OsEg+tS3vTKHu9nExV88c5xNFlYE+3/Wzbuj22kF
 zolEYarLw38SODioDyyMz++FDhAP78BbVdNWm6Rxnp6Q8RKvfO6Cggc9x
 OwfnBTl7BNx8pIUPRPZP+daK3K0ej4+PIn3mohh4Y6A3Kupkv4qs5Y1/k
 C0X2OQqcs2eB0ef4KEzyovvTJ8glG/IDv1ZHRILI9FawD8kzQuFTKmQm+
 riMJPHqlsmWpmk7p7L3K0y9Qh40aOrbj9pj27E3+cDSN0OrY2rVjSm3PW Q==;
X-CSE-ConnectionGUID: l0wI9aucR3ql7MNJSJQ2OQ==
X-CSE-MsgGUID: F+TmO6roTmyJyhc74bxWDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="60341579"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="60341579"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:52:00 -0700
X-CSE-ConnectionGUID: 1gQbtr8qQx2E7BvXcwOSsg==
X-CSE-MsgGUID: nJPW95rRT3uVx8ti21x/2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174706433"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:51:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, ankit.k.nautiyal@intel.com,
 intel-gfx@lists.freedesktop.org
Cc: matthew.s.atwood@intel.com, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
In-Reply-To: <175794320783.1613.3172112236499856318@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <20250911205543.388402-2-dnyaneshwar.bhadane@intel.com>
 <175794320783.1613.3172112236499856318@intel.com>
Date: Mon, 15 Sep 2025 16:51:55 +0300
Message-ID: <f292d091e4be602b3a43ff974ac9c588cd6e8611@intel.com>
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

On Mon, 15 Sep 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Dnyaneshwar Bhadane (2025-09-11 17:55:40-03:00)
>>To form the WCL platform as a subplatform of PTL in definition,
>>WCL pci ids are splited into saparate group from PTL.
>>So update the pciidlist struct to cover all the pci ids.
>>
>>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>---
>> drivers/gpu/drm/xe/xe_pci.c | 1 +
>> include/drm/intel/pciids.h  | 4 +++-
>> 2 files changed, 4 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>>index 701ba9baa9d7..fc2ea9132804 100644
>>--- a/drivers/gpu/drm/xe/xe_pci.c
>>+++ b/drivers/gpu/drm/xe/xe_pci.c
>>@@ -375,6 +375,7 @@ static const struct pci_device_id pciidlist[] = {
>>         INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
>>         INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>>         INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>+        INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>         { }
>> };
>> MODULE_DEVICE_TABLE(pci, pciidlist);
>>diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
>>index da6301a6fcea..9d378c65be4b 100644
>>--- a/include/drm/intel/pciids.h
>>+++ b/include/drm/intel/pciids.h
>>@@ -877,7 +877,9 @@
>>         MACRO__(0xB08F, ## __VA_ARGS__), \
>>         MACRO__(0xB090, ## __VA_ARGS__), \
>>         MACRO__(0xB0A0, ## __VA_ARGS__), \
>>-        MACRO__(0xB0B0, ## __VA_ARGS__), \
>>+        MACRO__(0xB0B0, ## __VA_ARGS__)
>>+
>>+#define INTEL_WCL_IDS(MACRO__, ...) \
>>         MACRO__(0xFD80, ## __VA_ARGS__), \
>>         MACRO__(0xFD81, ## __VA_ARGS__)
>
> This patch, at its current state, will break the display part, because
> WCL will not be detected until the next patch. We should either:
>
>  - bring the line "INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc)" from
>    path #2 into this one.

This. I've already replied to a newer version of this series to this
effect [1][2].

[1] https://lore.kernel.org/r/70fc412b47d9972ad2d1b6eca13bbdd9da992552@intel.com
[2] https://lore.kernel.org/r/84fc10ec3b82b3436b521811589067ad0850eacd@intel.com

>  - squash this and patch #2 together.

IMO cleaner with separate patches.

> That said, since we are defining WCL as a subplatform, I think we
> probably should make INTEL_WCL_IDS() be called from INTEL_PTL_IDS().

No. Please don't do that.

There are various consumers for the PCI ID macros, and they should be
kept independent. It's easier to deal with the platform/subplatform
relationships at the consumer side, instead of forcing it in the PCI ID
macros.

Just consider having to promote WCL to an independent platform later. It
would mean shuffling the macros again.

> Either that or make both separate platforms from the display point of
> view.
>
> Also, I'm not sure how having a prelimiary patch affects backporting
> fixes. So, I'm wondering if we should tag this patch somehow or if
> something else should be made here to make the backporting easier.

It's easy enough to ask for deps to be backported.

BR,
Jani.


-- 
Jani Nikula, Intel
