Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8609459C2
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 10:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7331A10E1B3;
	Fri,  2 Aug 2024 08:19:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNM0Yy04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262ED10E1B3;
 Fri,  2 Aug 2024 08:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722586740; x=1754122740;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=iss1TAxYmSeY+j7ox0/KOlD9btGXnk267Lv/vxWUBJg=;
 b=MNM0Yy04eWZZ5mnJ1UIjpi6cfuv7jlz3TV4OM17+uQLIchd8KH/gfcsN
 kYB0RVCWJ82g1hiZq/gXpWvf75dXk2ToVYMPyG+Ta3R5bqr3RWW1FgIcT
 52Jt5wBtCwTS/UHT/BiS9y6EETvPalIqxc50604jUz7XxmUd1cGXvLrY8
 pPn3adyrFa0SNEidYYjsmIWOiOCcw5868kUw2/1eAv597PFtWCF+/OsW8
 vdfg/ewdAhjj626ZOJJmItJMY8KRjgCocmi3D+/k98W2siJ1uaHb8iAQ0
 5yhloRK/TCbFSOLQxZ8cn7brDBJIKXqiykydAKusv00X9f7uPeHUfUdUz A==;
X-CSE-ConnectionGUID: +6bJ/Lu+RzWjn+NRvxZxJA==
X-CSE-MsgGUID: GNxsfApMR7SATbgVTymLsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20431668"
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="20431668"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 01:18:47 -0700
X-CSE-ConnectionGUID: 1f5SbOcFQceTaxOEVFfGgw==
X-CSE-MsgGUID: gs3OrNsFSSWAKXuwQRkYYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="55927331"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.66])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 01:18:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/10] drm/i915 & drm/xe: save struct drm_device to drvdata
In-Reply-To: <172253392110.5121.3280125155104128634@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722263308.git.jani.nikula@intel.com>
 <c479244bb25e915c6467f76e48a3260455454dd9.1722263308.git.jani.nikula@intel.com>
 <172253392110.5121.3280125155104128634@gjsousa-mobl2>
Date: Fri, 02 Aug 2024 11:18:39 +0300
Message-ID: <8734nn72xs.fsf@intel.com>
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
> Quoting Jani Nikula (2024-07-29 11:30:06-03:00)
>>In the future, the display code shall not have any idea about struct
>>xe_device or struct drm_i915_private, but will need to get at the struct
>>drm_device via drvdata. Store the struct drm_device pointer to drvdata
>>instead of the driver specific pointer.
>>
>>Even though struct drm_device is embedded in both struct xe_device and
>>struct drm_i915_private at offset 0, take care to check for NULL before
>>using container_of() to allow for other offsets.
>
> I think the second half of this paragraph could be rephrased. One might
> think that the text is suggesting that checking for NULL has something
> to do with allowing other offsets.
>
> I would jump directly to mention using container_of() and would assume
> that it is implied that NULL check is necessary before using it. :-)

But I *am* suggesting the NULL check before container_of() has
everything to do with allowing other offsets!

container_of() will return a NULL pointer for a NULL pointer when the
offset is 0, but will return a negative garbage pointer otherwise.

BR,
Jani.


>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/i915_driver.c                | 2 +-
>> drivers/gpu/drm/i915/i915_drv.h                   | 8 ++++++--
>> drivers/gpu/drm/i915/selftests/mock_gem_device.c  | 2 +-
>> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 4 +++-
>> drivers/gpu/drm/xe/xe_device.h                    | 8 ++++++--
>> drivers/gpu/drm/xe/xe_pci.c                       | 2 +-
>> 6 files changed, 18 insertions(+), 8 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>index fb8e9c2fcea5..176c13c2e191 100644
>>--- a/drivers/gpu/drm/i915/i915_driver.c
>>+++ b/drivers/gpu/drm/i915/i915_driver.c
>>@@ -723,7 +723,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>>         if (IS_ERR(i915))
>>                 return i915;
>> 
>>-        pci_set_drvdata(pdev, i915);
>>+        pci_set_drvdata(pdev, &i915->drm);
>> 
>>         /* Device parameters start as a copy of module parameters. */
>>         i915_params_copy(&i915->params, &i915_modparams);
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>index d7723dd11c80..f6edaef73db5 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -365,12 +365,16 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>> 
>> static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>> {
>>-        return dev_get_drvdata(kdev);
>>+        struct drm_device *drm = dev_get_drvdata(kdev);
>>+
>>+        return drm ? to_i915(drm) : NULL;
>> }
>> 
>> static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>> {
>>-        return pci_get_drvdata(pdev);
>>+        struct drm_device *drm = pci_get_drvdata(pdev);
>>+
>>+        return drm ? to_i915(drm) : NULL;
>> }
>> 
>> static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>>diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>index 0bd29846873b..91794ca17a58 100644
>>--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>@@ -172,7 +172,7 @@ struct drm_i915_private *mock_gem_device(void)
>>                 return NULL;
>>         }
>> 
>>-        pci_set_drvdata(pdev, i915);
>>+        pci_set_drvdata(pdev, &i915->drm);
>> 
>>         /* Device parameters start as a copy of module parameters. */
>>         i915_params_copy(&i915->params, &i915_modparams);
>>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>index 2feedddf1e40..766fba88a3c8 100644
>>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>@@ -23,7 +23,9 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>> 
>> static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>> {
>>-        return dev_get_drvdata(kdev);
>>+        struct drm_device *drm = dev_get_drvdata(kdev);
>>+
>>+        return drm ? to_i915(drm) : NULL;
>> }
>> 
>> #define IS_PLATFORM(xe, x) ((xe)->info.platform == x)
>>diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
>>index 2c96f1b2aafd..022876eebfd5 100644
>>--- a/drivers/gpu/drm/xe/xe_device.h
>>+++ b/drivers/gpu/drm/xe/xe_device.h
>>@@ -17,12 +17,16 @@ static inline struct xe_device *to_xe_device(const struct drm_device *dev)
>> 
>> static inline struct xe_device *kdev_to_xe_device(struct device *kdev)
>> {
>>-        return dev_get_drvdata(kdev);
>>+        struct drm_device *drm = dev_get_drvdata(kdev);
>>+
>>+        return drm ? to_xe_device(drm) : NULL;
>> }
>> 
>> static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
>> {
>>-        return pci_get_drvdata(pdev);
>>+        struct drm_device *drm = pci_get_drvdata(pdev);
>>+
>>+        return drm ? to_xe_device(drm) : NULL;
>> }
>> 
>> static inline struct xe_device *xe_device_const_cast(const struct xe_device *xe)
>>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>>index 7bb811b4a057..f861b8cf931a 100644
>>--- a/drivers/gpu/drm/xe/xe_pci.c
>>+++ b/drivers/gpu/drm/xe/xe_pci.c
>>@@ -800,7 +800,7 @@ static int xe_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>         if (IS_ERR(xe))
>>                 return PTR_ERR(xe);
>> 
>>-        pci_set_drvdata(pdev, xe);
>>+        pci_set_drvdata(pdev, &xe->drm);
>> 
>>         xe_pm_assert_unbounded_bridge(xe);
>>         subplatform_desc = find_subplatform(xe, desc);
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
