Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9760682ECC8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 11:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9BD10E464;
	Tue, 16 Jan 2024 10:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8F610E464
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 10:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705401091; x=1736937091;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=wcaj/NCSTxXxMhZnnQo/J7fmvfQKiugpAWbVqIgmjso=;
 b=Qs3pUnKWXSgdGd0Ue2+c0AiGHzKbrItlwArrf8+X99+9cNgKw+qWHOYD
 5RU4JkTZ9BZHyHl2sGRUDcVOlepYIrhnQg4vixJXmQForcsdQufY1+M4U
 rdOjJgE3+T2gCKCZknNcUShjZQPBIKLsuU0lCvncyw/jBW4fD8Qp204mP
 rYG2adJ4RVjkJR6oLvSefVezbdS4pbwRuAamj0nAY9VCMFr03Xw7NQYJd
 OHoyblAI6gbQONK6vXfceBU3D1aCRFOxxk7iBLwCMXRPA7HRJtxjUvtLe
 B7nhkYbmrMrLp7TtdTiK4PvaRhUNcF60F/w357yLIhCBVB4+6Sn6Ed+fB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="7190308"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208,217";a="7190308"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="903076359"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; 
 d="scan'208,217";a="903076359"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:31:29 -0800
Content-Type: multipart/alternative;
 boundary="------------TZQgmiO0wTDGo5H5HlPkUj5s"
Message-ID: <25e949c2-fb98-4ea7-8827-5d486fe7c502@linux.intel.com>
Date: Tue, 16 Jan 2024 11:31:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/16] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-5-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240116075636.6121-5-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------TZQgmiO0wTDGo5H5HlPkUj5s
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>
> On MTL accessing stolen memory via the BARs is somehow borked,
> and it can hang the machine. As a workaround let's bypass the
> BARs and just go straight to DSMBASE/GSMBASE instead.
>
> Note that on every other platform this itself would hang the
> machine, but on MTL the system firmware is expected to relax
> the access permission guarding stolen memory to enable this
> workaround, and thus direct CPU accesses should be fine.
>
> The raw stolen memory areas won't be passed to VMs so we'll
> need to risk using the BAR there for the initial setup. Once
> command submission is up we should switch to MI_UPDATE_GTT
> which at least shouldn't hang the whole machine.
>
> v2: Don't use direct GSM/DSM access on guests
>      Add w/a number
>
> Cc: Paz Zcharya<pazz@chromium.org>
> Cc: Nirmoy Das<nirmoy.das@intel.com>
> Cc: Joonas Lahtinen<joonas.lahtinen@linux.intel.com>
> Reviewed-by: Andrzej Hajda<andrzej.hajda@intel.com>
> Reviewed-by: Radhakrishna Sripada<radhakrishna.sripada@intel.com>
> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>

I think i915_run_as_guest() should work.

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 14 +++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_ggtt.c       | 16 +++++++++++++++-
>   2 files changed, 28 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index ee237043c302..0b429f1ecd99 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -941,7 +941,19 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>   		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
>   	}
>   
> -	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> +	if (IS_METEORLAKE(i915) && !i915_run_as_guest()) {
> +		/*
> +		 * Wa_22018444074
> +		 *
> +		 * Access via BAR can hang MTL, go directly to DSM,
> +		 * except for VM guests which won't have access to it.
> +		 *
> +		 * Normally this would not work but on MTL the system firmware
> +		 * should have relaxed the access permissions sufficiently.
> +		 */
> +		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		io_size = dsm_size;
> +	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>   		io_start = 0;
>   		io_size = 0;
>   	} else {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 21a7e3191c18..7a716ff16070 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -24,6 +24,7 @@
>   #include "intel_ring.h"
>   #include "i915_drv.h"
>   #include "i915_pci.h"
> +#include "i915_reg.h"
>   #include "i915_request.h"
>   #include "i915_scatterlist.h"
>   #include "i915_utils.h"
> @@ -1152,13 +1153,26 @@ static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>   static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
>   	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>   	phys_addr_t phys_addr;
>   	u32 pte_flags;
>   	int ret;
>   
>   	GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
> -	phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
> +	/*
> +	 * Wa_22018444074
> +	 *
> +	 * Access via BAR can hang MTL, go directly to GSM,
> +	 * except for VM guests which won't have access to it.
> +	 *
> +	 * Normally this would not work but on MTL the system firmware
> +	 * should have relaxed the access permissions sufficiently.
> +	 */
> +	if (IS_METEORLAKE(i915) && !i915_run_as_guest())
> +		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
> +	else
> +		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
>   
>   	if (needs_wc_ggtt_mapping(i915))
>   		ggtt->gsm = ioremap_wc(phys_addr, size);
--------------TZQgmiO0wTDGo5H5HlPkUj5s
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/16/2024 8:56 AM, Ville Syrjala
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20240116075636.6121-5-ville.syrjala@linux.intel.com">
      <pre class="moz-quote-pre" wrap="">From: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>

On MTL accessing stolen memory via the BARs is somehow borked,
and it can hang the machine. As a workaround let's bypass the
BARs and just go straight to DSMBASE/GSMBASE instead.

Note that on every other platform this itself would hang the
machine, but on MTL the system firmware is expected to relax
the access permission guarding stolen memory to enable this
workaround, and thus direct CPU accesses should be fine.

The raw stolen memory areas won't be passed to VMs so we'll
need to risk using the BAR there for the initial setup. Once
command submission is up we should switch to MI_UPDATE_GTT
which at least shouldn't hang the whole machine.

v2: Don't use direct GSM/DSM access on guests
    Add w/a number

Cc: Paz Zcharya <a class="moz-txt-link-rfc2396E" href="mailto:pazz@chromium.org">&lt;pazz@chromium.org&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a>
Cc: Joonas Lahtinen <a class="moz-txt-link-rfc2396E" href="mailto:joonas.lahtinen@linux.intel.com">&lt;joonas.lahtinen@linux.intel.com&gt;</a>
Reviewed-by: Andrzej Hajda <a class="moz-txt-link-rfc2396E" href="mailto:andrzej.hajda@intel.com">&lt;andrzej.hajda@intel.com&gt;</a>
Reviewed-by: Radhakrishna Sripada <a class="moz-txt-link-rfc2396E" href="mailto:radhakrishna.sripada@intel.com">&lt;radhakrishna.sripada@intel.com&gt;</a>
Signed-off-by: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a></pre>
    </blockquote>
    <p>I think <span style="white-space: pre-wrap">i915_run_as_guest() should work.</span></p>
    <p>Reviewed-by: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a></p>
    <blockquote type="cite"
      cite="mid:20240116075636.6121-5-ville.syrjala@linux.intel.com">
      <pre class="moz-quote-pre" wrap="">
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 14 +++++++++++++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c       | 16 +++++++++++++++-
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index ee237043c302..0b429f1ecd99 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -941,7 +941,19 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
 	}
 
-	if (pci_resource_len(pdev, GEN12_LMEM_BAR) &lt; lmem_size) {
+	if (IS_METEORLAKE(i915) &amp;&amp; !i915_run_as_guest()) {
+		/*
+		 * Wa_22018444074
+		 *
+		 * Access via BAR can hang MTL, go directly to DSM,
+		 * except for VM guests which won't have access to it.
+		 *
+		 * Normally this would not work but on MTL the system firmware
+		 * should have relaxed the access permissions sufficiently.
+		 */
+		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) &amp; GEN12_BDSM_MASK;
+		io_size = dsm_size;
+	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) &lt; lmem_size) {
 		io_start = 0;
 		io_size = 0;
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 21a7e3191c18..7a716ff16070 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -24,6 +24,7 @@
 #include "intel_ring.h"
 #include "i915_drv.h"
 #include "i915_pci.h"
+#include "i915_reg.h"
 #include "i915_request.h"
 #include "i915_scatterlist.h"
 #include "i915_utils.h"
@@ -1152,13 +1153,26 @@ static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
 static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 {
 	struct drm_i915_private *i915 = ggtt-&gt;vm.i915;
+	struct intel_uncore *uncore = ggtt-&gt;vm.gt-&gt;uncore;
 	struct pci_dev *pdev = to_pci_dev(i915-&gt;drm.dev);
 	phys_addr_t phys_addr;
 	u32 pte_flags;
 	int ret;
 
 	GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
-	phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
+	/*
+	 * Wa_22018444074
+	 *
+	 * Access via BAR can hang MTL, go directly to GSM,
+	 * except for VM guests which won't have access to it.
+	 *
+	 * Normally this would not work but on MTL the system firmware
+	 * should have relaxed the access permissions sufficiently.
+	 */
+	if (IS_METEORLAKE(i915) &amp;&amp; !i915_run_as_guest())
+		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) &amp; GEN12_BDSM_MASK;
+	else
+		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
 
 	if (needs_wc_ggtt_mapping(i915))
 		ggtt-&gt;gsm = ioremap_wc(phys_addr, size);
</pre>
    </blockquote>
  </body>
</html>

--------------TZQgmiO0wTDGo5H5HlPkUj5s--
