Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E099E43735C
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 09:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF886E8FB;
	Fri, 22 Oct 2021 07:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33BE6E8FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 07:55:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="290089225"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="290089225"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 00:55:49 -0700
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="495567673"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 00:55:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Mullati Siva <siva.mullati@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <20211021184519.3dzfkfkqxzm5me35@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211021183704.1171140-1-siva.mullati@intel.com>
 <20211021184519.3dzfkfkqxzm5me35@ldmartin-desk2>
Date: Fri, 22 Oct 2021 10:55:44 +0300
Message-ID: <87r1cdlchr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: abstraction for iosf to compile
 on all archs
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

On Thu, 21 Oct 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Oct 22, 2021 at 12:07:04AM +0530, Mullati Siva wrote:
>>From: "Mullati, Siva" <siva.mullati@intel.com>
>>
>>As Non-x86 architectures won't get compiled asm\iosf,
>>abstarcting them to make compile for all archs.
>
> I noticed a typo here, then thought we should expand a little bit. What
> about something like below?
>
> The asm/iosf_mbi.h header is x86-only. Let's make IOSF_MBI kconfig
> selection conditional to x86 and provide a header with stubs for other
> architectures. This helps getting i915 available for other
> architectures in future.
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> but it would be good to wait for an a-b/r-b from Jani as well.

Sorry, one more nitpick below, otherwise LGTM.

>
> thanks
> Lucas De Marchi
>
>>
>>Signed-off-by: Mullati, Siva <siva.mullati@intel.com>
>>---
>> drivers/gpu/drm/i915/Kconfig         |  2 +-
>> drivers/gpu/drm/i915/i915_iosf_mbi.h | 42 ++++++++++++++++++++++++++++
>> drivers/gpu/drm/i915/intel_uncore.c  |  2 +-
>> drivers/gpu/drm/i915/vlv_sideband.c  |  3 +-
>> 4 files changed, 45 insertions(+), 4 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/i915_iosf_mbi.h
>>
>>diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>>index bf041b26ffec..8bea99622dd5 100644
>>--- a/drivers/gpu/drm/i915/Kconfig
>>+++ b/drivers/gpu/drm/i915/Kconfig
>>@@ -21,7 +21,7 @@ config DRM_I915
>> 	select ACPI_VIDEO if ACPI
>> 	select ACPI_BUTTON if ACPI
>> 	select SYNC_FILE
>>-	select IOSF_MBI
>>+	select IOSF_MBI if X86
>> 	select CRC32
>> 	select SND_HDA_I915 if SND_HDA_CORE
>> 	select CEC_CORE if CEC_NOTIFIER
>>diff --git a/drivers/gpu/drm/i915/i915_iosf_mbi.h b/drivers/gpu/drm/i915/=
i915_iosf_mbi.h
>>new file mode 100644
>>index 000000000000..01eed11e4a94
>>--- /dev/null
>>+++ b/drivers/gpu/drm/i915/i915_iosf_mbi.h
>>@@ -0,0 +1,42 @@
>>+/* SPDX-License-Identifier: MIT */
>>+/*
>>+ * Copyright =C2=A9 2013-2021 Intel Corporation

It's all new, we can't claim it's 2013-.

BR,
Jani.

>>+ */
>>+
>>+#ifndef __I915_IOSF_MBI_H__
>>+#define __I915_IOSF_MBI_H__
>>+
>>+#if IS_ENABLED(CONFIG_IOSF_MBI)
>>+#include <asm/iosf_mbi.h>
>>+#else
>>+
>>+/* Stubs to compile for all non-x86 archs */
>>+#define MBI_PMIC_BUS_ACCESS_BEGIN       1
>>+#define MBI_PMIC_BUS_ACCESS_END         2
>>+
>>+struct notifier_block;
>>+
>>+static inline void iosf_mbi_punit_acquire(void) {}
>>+static inline void iosf_mbi_punit_release(void) {}
>>+static inline void iosf_mbi_assert_punit_acquired(void) {}
>>+
>>+static inline
>>+int iosf_mbi_register_pmic_bus_access_notifier(struct notifier_block *nb)
>>+{
>>+	return 0;
>>+}
>>+
>>+static inline int
>>+iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(struct notifier_bl=
ock *nb)
>>+{
>>+	return 0;
>>+}
>>+
>>+static inline
>>+int iosf_mbi_unregister_pmic_bus_access_notifier(struct notifier_block *=
nb)
>>+{
>>+	return 0;
>>+}
>>+#endif
>>+
>>+#endif /* __I915_IOSF_MBI_H__ */
>>diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/i=
ntel_uncore.c
>>index e072054adac5..722910d02b5f 100644
>>--- a/drivers/gpu/drm/i915/intel_uncore.c
>>+++ b/drivers/gpu/drm/i915/intel_uncore.c
>>@@ -22,11 +22,11 @@
>>  */
>>
>> #include <linux/pm_runtime.h>
>>-#include <asm/iosf_mbi.h>
>>
>> #include "gt/intel_lrc_reg.h" /* for shadow reg list */
>>
>> #include "i915_drv.h"
>>+#include "i915_iosf_mbi.h"
>> #include "i915_trace.h"
>> #include "i915_vgpu.h"
>> #include "intel_pm.h"
>>diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/v=
lv_sideband.c
>>index 35380738a951..ed2ac5752ac4 100644
>>--- a/drivers/gpu/drm/i915/vlv_sideband.c
>>+++ b/drivers/gpu/drm/i915/vlv_sideband.c
>>@@ -3,9 +3,8 @@
>>  * Copyright =C2=A9 2013-2021 Intel Corporation
>>  */
>>
>>-#include <asm/iosf_mbi.h>
>>-
>> #include "i915_drv.h"
>>+#include "i915_iosf_mbi.h"
>> #include "vlv_sideband.h"
>>
>> /*
>>--=20
>>2.33.0
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
