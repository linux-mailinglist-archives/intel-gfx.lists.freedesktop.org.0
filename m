Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E8F4C945F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 20:34:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C8610E1CD;
	Tue,  1 Mar 2022 19:34:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0D310E1CD
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 19:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646163254; x=1677699254;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iXjWoHjyLwBKvHDPPXK+8Fotql2cVP/gxl5vV4jhrQs=;
 b=BmayUp8LWc/JoUuxZ6W8P8NML7bfZUw5uzdVoEOq+rNe8XC3jyiSRt9A
 fh9HoQ1OtwmPoMoqUE55aQTnyS3gmlNm96SAg6Ft6cgtkJYJVbHCHBBDa
 MZZG/AcrIr7CIcYGbx0s0kUlPXCuM4co6zx/VKl4gbti9Fk74jdp1bUF2
 oFXrQXqY8cnjxbQyNvaoHITI0kox1kpSxLxoApeBDwZDChkbXWhhP795N
 vQxz3W8Zac/vD4s92zk89qMZ1rBC2GZeOUvjmtzTZZuOIaJSjeEC75d6L
 8eCBv1MCuLu/ERWl3FdfO2kdfNNaJk+nFLkiRUqpVvD7ujkQUoWrgFDRH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="250801401"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="250801401"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 11:34:13 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="709184042"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 11:34:12 -0800
Date: Tue, 1 Mar 2022 11:34:09 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220301193409.GA25848@unerlige-ril-10.165.21.154>
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
 <20220222140422.1121163-8-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220222140422.1121163-8-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Count engine instances per
 uabi class
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 22, 2022 at 02:04:21PM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>This will be useful to have at hand in a following patch.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_engine_user.c | 11 ++++++-----
> drivers/gpu/drm/i915/i915_drv.h             |  1 +
> 2 files changed, 7 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>index 9ce85a845105..5dd559253078 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>@@ -190,7 +190,6 @@ static void add_legacy_ring(struct legacy_ring *ring,
> void intel_engines_driver_register(struct drm_i915_private *i915)
> {
> 	struct legacy_ring ring = {};
>-	u8 uabi_instances[4] = {};
> 	struct list_head *it, *next;
> 	struct rb_node **p, *prev;
> 	LIST_HEAD(engines);
>@@ -211,8 +210,10 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
> 		GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
> 		engine->uabi_class = uabi_classes[engine->class];
>
>-		GEM_BUG_ON(engine->uabi_class >= ARRAY_SIZE(uabi_instances));
>-		engine->uabi_instance = uabi_instances[engine->uabi_class]++;
>+		GEM_BUG_ON(engine->uabi_class >=
>+			   ARRAY_SIZE(i915->engine_uabi_class_count));
>+		engine->uabi_instance =
>+			i915->engine_uabi_class_count[engine->uabi_class]++;
>
> 		/* Replace the internal name with the final user facing name */
> 		memcpy(old, engine->name, sizeof(engine->name));
>@@ -242,8 +243,8 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
> 		int class, inst;
> 		int errors = 0;
>
>-		for (class = 0; class < ARRAY_SIZE(uabi_instances); class++) {
>-			for (inst = 0; inst < uabi_instances[class]; inst++) {
>+		for (class = 0; class < ARRAY_SIZE(i915->engine_uabi_class_count); class++) {
>+			for (inst = 0; inst < i915->engine_uabi_class_count[class]; inst++) {
> 				engine = intel_engine_lookup_user(i915,
> 								  class, inst);
> 				if (!engine) {
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index b9d38276801d..68d8a751008b 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -533,6 +533,7 @@ struct drm_i915_private {
> 	struct pci_dev *bridge_dev;
>
> 	struct rb_root uabi_engines;
>+	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];

lgtm,
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh
>
> 	struct resource mch_res;
>
>-- 
>2.32.0
>
