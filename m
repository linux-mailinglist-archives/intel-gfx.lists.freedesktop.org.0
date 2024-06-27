Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8471391AF43
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 20:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B334210E29A;
	Thu, 27 Jun 2024 18:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cyr5flp6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0D610E29A;
 Thu, 27 Jun 2024 18:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719514046; x=1751050046;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OerfKVxP1EMJfAEn4gw5nBktUpOGqvjkSBERF+scj84=;
 b=cyr5flp6MKffI13gYorzeTJxbVVjgrwCNcL6EIeXeMEDioXhyJJAMP2y
 e3kvdJfHD5C7PTxrb5cBaxYwQ5wxl8uIgrTwRL+X3N/0qyO8LmQs+ABKu
 ltH839vuTNJYxu9Ra0iwOuQsHohI9TMKAsEoTWD5GF72cCjXGZDNP4dnM
 l0RPOe1gGgFJ+14IN5c1tRP52lFhxWO4vvatQxuzJDelJO8OJSpQRyt3S
 Z+BM9mW7NHDWhWIGe/0OaHuTVl0G1s9yqJHA72eVsXneOCzWDFd+Vvajn
 IkiQs0BdVJQmyPcH2RSfhXq1a0ALUwQZQD23nq/jnA/Tv0UI1d+PM4kap w==;
X-CSE-ConnectionGUID: qL/dOiD2QDKMWgnGucIQrw==
X-CSE-MsgGUID: szJGgJt/SwqqXn32nMCHQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27256158"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="27256158"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 11:47:23 -0700
X-CSE-ConnectionGUID: F1Gz1N88TO2mqXi9f/T0EQ==
X-CSE-MsgGUID: JMYMBoi2QCixrVPZUF4vbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49656802"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.189])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 11:47:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
In-Reply-To: <uulo5ybhcvxbj7orgtovxahieyogz2iw7csn42rcnwsifkdfqr@zxjryherobpp>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
 <uulo5ybhcvxbj7orgtovxahieyogz2iw7csn42rcnwsifkdfqr@zxjryherobpp>
Date: Thu, 27 Jun 2024 21:47:17 +0300
Message-ID: <87wmmab4ui.fsf@intel.com>
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
> On Tue, Jun 18, 2024 at 05:22:55PM GMT, Jani Nikula wrote:
>>Facilitate using display->is.HASWELL etc. for identifying platforms and
>>subplatforms. Merge platform and subplatform members together.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>> .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
>> 2 files changed, 22 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>index 7715fc329057..35bea92893af 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>@@ -286,6 +286,9 @@ struct intel_display {
>> 	/* drm device backpointer */
>> 	struct drm_device *drm;
>>
>>+	/* Platform identification */
>>+	struct intel_display_is is;
>>+
>> 	/* Display functions */
>> 	struct {
>> 		/* Top level crtc-ish functions */
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>index 0c275d85bd30..954caea38005 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>@@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>> 	return NULL;
>> }
>>
>>+static void mem_or(void *_dst, const void *_src, size_t size)
>
> why are we not using linux/bitmap.h that has support for bitfields with
> multiple words and instead rolling our own?

Because this is primarily about named struct members, and the bitfields
and ORing them together is just an implementation detail.

I could use bitmap_or(), but I'd have to rely on bitmap implementation
details to get it all precisely correct. I would not be able to
trivially use DECLARE_BITMAP() for this.

Using a union can get tricky:

struct intel_display_is {
	union {
		struct {
			INTEL_DISPLAY_PLATFORMS(MEMBER);
                };
		DECLARE_BITMAP(raw, NUM_PLATFORMS);
	};	
};

I don't know if that even works. Can't used named structs, otherwise it
defeats the purpose.

BR,
Jani.

>
> Lucas De Marchi
>
>>+{
>>+	const u8 *src = _src;
>>+	u8 *dst = _dst;
>>+	size_t i;
>>+
>>+	for (i = 0; i < size; i++)
>>+		dst[i] |= src[i];
>>+}
>>+
>>+static void merge_display_is(struct intel_display_is *dst,
>>+			     const struct intel_display_is *src)
>>+{
>>+	mem_or(dst, src, sizeof(*dst));
>>+}
>>+
>> void intel_display_device_probe(struct drm_i915_private *i915)
>> {
>>+	struct intel_display *display = &i915->display;
>> 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> 	const struct intel_display_device_info *info;
>> 	struct intel_display_ip_ver ip_ver = {};
>>@@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>>
>> 	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
>> 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>>+	display->is = desc->is;
>>
>> 	subdesc = find_subplatform_desc(pdev, desc);
>> 	if (subdesc) {
>> 		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
>> 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>>+		merge_display_is(&display->is, &subdesc->is);
>> 	}
>>
>> 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
