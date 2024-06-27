Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E387491B219
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 00:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2702310EB7E;
	Thu, 27 Jun 2024 22:19:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/03Bxvc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A5F810E50A;
 Thu, 27 Jun 2024 22:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719526778; x=1751062778;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LRwGdp+vlZAnXdSa5mR6oIUV69OiCxjwlk74YHWlFN8=;
 b=c/03BxvcMumDP8ikBtMXQDzMtuAs9ZFQ1k1mqUPG5nM1LegOHQ44Z9Dj
 Jw5wdDHqA4HtdvXm9NqaV6yu492cFESpJt/9f1vlrGzUUmvc7+V12TL2e
 9s+mRpKmqEKPSS/ZQxxURFgBKMHFyunPtZbLYlPFXipsQd3XiQ1MSegFt
 yf4n0tX2lJB4RZdbhTe9a5wCwFsgA3pVC1VUd8Xo+4kA07gp9I+gieUhI
 SWUaSHaaSZ0FESPAOCh3gYCugsN1fHaLwSRBuDdaFg1NnRsRa1siuaVCt
 +QVsZRCb7Cfz8wqWIh3pYcwWEzAt5OIEVoJJxqFAQwTBXTjQpZ1mE9Bn/ g==;
X-CSE-ConnectionGUID: yX5dRiadSLuG5KwYrxKilg==
X-CSE-MsgGUID: J4OgsBm7SRyqsKFpEc9PPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="34138986"
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; d="scan'208";a="34138986"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 15:19:37 -0700
X-CSE-ConnectionGUID: 4HDVCdcpTYane0MGJ3lgjw==
X-CSE-MsgGUID: It+PurJZR/m7qe3Y9g9QMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; d="scan'208";a="67726672"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.189])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 15:19:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
In-Reply-To: <t5qanekbmoww5mey7r33yui52bs2xf4oup6vqtmrzobpqh4lrb@lj37d6r55kgk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
 <uulo5ybhcvxbj7orgtovxahieyogz2iw7csn42rcnwsifkdfqr@zxjryherobpp>
 <87wmmab4ui.fsf@intel.com>
 <t5qanekbmoww5mey7r33yui52bs2xf4oup6vqtmrzobpqh4lrb@lj37d6r55kgk>
Date: Fri, 28 Jun 2024 01:19:30 +0300
Message-ID: <87r0ciav0t.fsf@intel.com>
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
> On Thu, Jun 27, 2024 at 09:47:17PM GMT, Jani Nikula wrote:
>>On Thu, 27 Jun 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Tue, Jun 18, 2024 at 05:22:55PM GMT, Jani Nikula wrote:
>>>>Facilitate using display->is.HASWELL etc. for identifying platforms and
>>>>subplatforms. Merge platform and subplatform members together.
>>>>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>---
>>>> .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>>>> .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
>>>> 2 files changed, 22 insertions(+)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>>index 7715fc329057..35bea92893af 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>>@@ -286,6 +286,9 @@ struct intel_display {
>>>> 	/* drm device backpointer */
>>>> 	struct drm_device *drm;
>>>>
>>>>+	/* Platform identification */
>>>>+	struct intel_display_is is;
>>>>+
>>>> 	/* Display functions */
>>>> 	struct {
>>>> 		/* Top level crtc-ish functions */
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>>>index 0c275d85bd30..954caea38005 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>>>@@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>>>> 	return NULL;
>>>> }
>>>>
>>>>+static void mem_or(void *_dst, const void *_src, size_t size)
>>>
>>> why are we not using linux/bitmap.h that has support for bitfields with
>>> multiple words and instead rolling our own?
>>
>>Because this is primarily about named struct members, and the bitfields
>>and ORing them together is just an implementation detail.
>>
>>I could use bitmap_or(), but I'd have to rely on bitmap implementation
>>details to get it all precisely correct. I would not be able to
>>trivially use DECLARE_BITMAP() for this.
>>
>>Using a union can get tricky:
>>
>>struct intel_display_is {
>>	union {
>>		struct {
>>			INTEL_DISPLAY_PLATFORMS(MEMBER);
>>                };
>>		DECLARE_BITMAP(raw, NUM_PLATFORMS);
>>	};	
>>};
>>
>>I don't know if that even works. Can't used named structs, otherwise it
>>defeats the purpose.
>
> a union like that seems good to me

With the platform enum removed in patch 6, where do we get the number of
platforms and subplatforms?

BR,
Jani.

>
> Lucas De Marchi
>
>
>>
>>BR,
>>Jani.
>>
>>>
>>> Lucas De Marchi
>>>
>>>>+{
>>>>+	const u8 *src = _src;
>>>>+	u8 *dst = _dst;
>>>>+	size_t i;
>>>>+
>>>>+	for (i = 0; i < size; i++)
>>>>+		dst[i] |= src[i];
>>>>+}
>>>>+
>>>>+static void merge_display_is(struct intel_display_is *dst,
>>>>+			     const struct intel_display_is *src)
>>>>+{
>>>>+	mem_or(dst, src, sizeof(*dst));
>>>>+}
>>>>+
>>>> void intel_display_device_probe(struct drm_i915_private *i915)
>>>> {
>>>>+	struct intel_display *display = &i915->display;
>>>> 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>>> 	const struct intel_display_device_info *info;
>>>> 	struct intel_display_ip_ver ip_ver = {};
>>>>@@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>>>>
>>>> 	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
>>>> 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>>>>+	display->is = desc->is;
>>>>
>>>> 	subdesc = find_subplatform_desc(pdev, desc);
>>>> 	if (subdesc) {
>>>> 		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
>>>> 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>>>>+		merge_display_is(&display->is, &subdesc->is);
>>>> 	}
>>>>
>>>> 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>>>>--
>>>>2.39.2
>>>>
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
