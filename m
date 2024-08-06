Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B89948E9C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 14:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0C410E341;
	Tue,  6 Aug 2024 12:11:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MC4j4eSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5E210E33E;
 Tue,  6 Aug 2024 12:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722946269; x=1754482269;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=pmSCZC5r0g4KvRmXY24BY9nHK9R0E9mSSLRofabUWTQ=;
 b=MC4j4eSUkKHZfp2m71O+ZZYoZP7P+WwvndMNa+Mtw96yWvXmbIb7LmTo
 p4TA42pfHE738IQGcrSvwl9RIspYQ/G8XGmDl+ts8RDtya9fBdlBNUpAm
 dM/qnJXRi/Y8YOQvE+A1egxzVciid9tRCZr+AckMEiP1DAZega3WFPsGv
 SMIkX+7lTSoot4cNDG04HsOMvyfHljBoVj/kdMvz3Z1oQzJ5FHMeQRZb5
 l5DXJ3tP6X23n4+CzZLXZYJwzmtZaAQ528rkxZw9tH9JiJWCWsTL7qgsn
 GdhKrMcAuzFZkE68WDwW4BVKN5vKsIKcQPvAe4z+KlYAU4OGg50Da0krA Q==;
X-CSE-ConnectionGUID: 2dlxl4nOTMiVPFNgoYpG7Q==
X-CSE-MsgGUID: 0cfRVacgQlerEw4W6T9KwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="38462385"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="38462385"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:11:08 -0700
X-CSE-ConnectionGUID: n6yZA6U/RcSKiyaeKFcmbQ==
X-CSE-MsgGUID: 1wi0fgk5TgWStyuGLGmZdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56379719"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:11:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/10] drm/xe: add kdev_to_xe_device() helper and use it
In-Reply-To: <172253051169.5121.1482254642233377824@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722263308.git.jani.nikula@intel.com>
 <55d57008c0f9bcfc089cf8b940e531c770f43454.1722263308.git.jani.nikula@intel.com>
 <172253051169.5121.1482254642233377824@gjsousa-mobl2>
Date: Tue, 06 Aug 2024 15:10:51 +0300
Message-ID: <87jzgt6ed0.fsf@intel.com>
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

On Thu, 01 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-07-29 11:30:03-03:00)
>>There are enough users for kernel device to xe device conversion, add a
>>helper for it.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/xe/xe_device.h    | 5 +++++
>> drivers/gpu/drm/xe/xe_gsc_proxy.c | 9 ++-------
>> 2 files changed, 7 insertions(+), 7 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
>>index db6cc8d0d6b8..2c96f1b2aafd 100644
>>--- a/drivers/gpu/drm/xe/xe_device.h
>>+++ b/drivers/gpu/drm/xe/xe_device.h
>>@@ -15,6 +15,11 @@ static inline struct xe_device *to_xe_device(const struct drm_device *dev)
>>         return container_of(dev, struct xe_device, drm);
>> }
>> 
>>+static inline struct xe_device *kdev_to_xe_device(struct device *kdev)
>
> Nitpick: Although there are some places that do it differently, it seems
> it is very common to use "dev" to refer to the generic struct device, so
> I would s/kdev/dev/ here.

I think kdev is often used to distinguish from struct drm_device *dev.

> In any case:
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks,
Jani.

>
>>+{
>>+        return dev_get_drvdata(kdev);
>>+}
>>+
>> static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
>> {
>>         return pci_get_drvdata(pdev);
>>diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
>>index aa812a2bc3ed..28e6a7a1d282 100644
>>--- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
>>+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
>>@@ -62,11 +62,6 @@ gsc_to_gt(struct xe_gsc *gsc)
>>         return container_of(gsc, struct xe_gt, uc.gsc);
>> }
>> 
>>-static inline struct xe_device *kdev_to_xe(struct device *kdev)
>>-{
>>-        return dev_get_drvdata(kdev);
>>-}
>>-
>> bool xe_gsc_proxy_init_done(struct xe_gsc *gsc)
>> {
>>         struct xe_gt *gt = gsc_to_gt(gsc);
>>@@ -345,7 +340,7 @@ void xe_gsc_proxy_irq_handler(struct xe_gsc *gsc, u32 iir)
>> static int xe_gsc_proxy_component_bind(struct device *xe_kdev,
>>                                        struct device *mei_kdev, void *data)
>> {
>>-        struct xe_device *xe = kdev_to_xe(xe_kdev);
>>+        struct xe_device *xe = kdev_to_xe_device(xe_kdev);
>>         struct xe_gt *gt = xe->tiles[0].media_gt;
>>         struct xe_gsc *gsc = &gt->uc.gsc;
>> 
>>@@ -360,7 +355,7 @@ static int xe_gsc_proxy_component_bind(struct device *xe_kdev,
>> static void xe_gsc_proxy_component_unbind(struct device *xe_kdev,
>>                                           struct device *mei_kdev, void *data)
>> {
>>-        struct xe_device *xe = kdev_to_xe(xe_kdev);
>>+        struct xe_device *xe = kdev_to_xe_device(xe_kdev);
>>         struct xe_gt *gt = xe->tiles[0].media_gt;
>>         struct xe_gsc *gsc = &gt->uc.gsc;
>> 
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
