Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B9920B467
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 17:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6347B6ECB5;
	Fri, 26 Jun 2020 15:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9761B6ECB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 15:22:36 +0000 (UTC)
IronPort-SDR: 8+n65w3OEbRvGezv3YT8JM7qgbtlaVmOMywW+SMX8RapUsio6vcp+VbMUWqHYMhJ3l+EdqNwNm
 DSRGkNCibOKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="230131706"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="230131706"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 08:22:36 -0700
IronPort-SDR: jjidQjccHkxAeGv2LZ64fffo8d8BcQ/hvVxqvYd/gjduzY+e9jmoZAP/sVDFp/zS1TAS6iGrtF
 Nrc+G0sCkEWw==
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="453395181"
Received: from ppkrause-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.98])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 08:22:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
In-Reply-To: <159299589741.19236.15323518631653361058@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200623185756.19502-1-kunal1.joshi@intel.com>
 <159299589741.19236.15323518631653361058@emeril.freedesktop.org>
Date: Fri, 26 Jun 2020 18:22:31 +0300
Message-ID: <87zh8pn96w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Send_a_hotplug_when_edid_changes_=28rev8=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Jun 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: Send a hotplug when edid changes (rev8)
> URL   : https://patchwork.freedesktop.org/series/62816/
> State : warning
>
> == Summary ==

Please at least fix the spacing issues. Please don't use spaces for
indentation.

BR,
Jani.


>
> $ dim checkpatch origin/drm-tip
> eeee75d80077 drm: Add helper to compare edids.
> -:32: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "edid1"
> #32: FILE: drivers/gpu/drm/drm_edid.c:1628:
> +	bool edid1_present = edid1 != NULL;
>
> -:33: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "edid2"
> #33: FILE: drivers/gpu/drm/drm_edid.c:1629:
> +	bool edid2_present = edid2 != NULL;
>
> -:39: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
> #39: FILE: drivers/gpu/drm/drm_edid.c:1635:
> +	if (edid1) {
> +
>
> -:54: CHECK:LINE_SPACING: Please don't use multiple blank lines
> #54: FILE: drivers/gpu/drm/drm_edid.c:1650:
> +
> +
>
> total: 0 errors, 0 warnings, 4 checks, 54 lines checked
> 127303584a7e drm: Introduce epoch counter to drm_connector
> -:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #56: FILE: drivers/gpu/drm/drm_connector.c:2012:
> +				DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Edid was changed.\n",
> +				    connector->base.id, connector->name);
>
> -:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #60: FILE: drivers/gpu/drm/drm_connector.c:2016:
> +				DRM_DEBUG_KMS("Updating change counter to %llu\n",
> +				    connector->epoch_counter);
>
> -:129: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
> #129: FILE: drivers/gpu/drm/drm_probe_helper.c:790:
> +	uint64_t old_epoch_counter;
>
> -:160: WARNING:BRACES: braces {} are not necessary for single statement blocks
> #160: FILE: drivers/gpu/drm/drm_probe_helper.c:826:
> +		if (old_epoch_counter != connector->epoch_counter) {
>  			changed = true;
> +		}
>
> -:183: ERROR:CODE_INDENT: code indent should use tabs where possible
> #183: FILE: include/drm/drm_connector.h:1332:
> +        /** @epoch_counter: used to detect any other changes in connector, besides status */$
>
> -:184: ERROR:CODE_INDENT: code indent should use tabs where possible
> #184: FILE: include/drm/drm_connector.h:1333:
> +        uint64_t epoch_counter;$
>
> -:184: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #184: FILE: include/drm/drm_connector.h:1333:
> +        uint64_t epoch_counter;$
>
> -:184: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
> #184: FILE: include/drm/drm_connector.h:1333:
> +        uint64_t epoch_counter;
>
> total: 2 errors, 2 warnings, 4 checks, 136 lines checked
> 6f6d00bcff9f drm/i915: Send hotplug event if edid had changed
> -:42: ERROR:CODE_INDENT: code indent should use tabs where possible
> #42: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:286:
> +        u64 old_epoch_counter;$
>
> -:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #42: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:286:
> +        u64 old_epoch_counter;$
>
> -:43: ERROR:CODE_INDENT: code indent should use tabs where possible
> #43: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:287:
> +        bool ret = false;$
>
> -:43: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #43: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:287:
> +        bool ret = false;$
>
> -:62: ERROR:CODE_INDENT: code indent should use tabs where possible
> #62: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:295:
> +        if (old_epoch_counter != connector->base.epoch_counter)$
>
> -:62: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #62: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:295:
> +        if (old_epoch_counter != connector->base.epoch_counter)$
>
> -:63: ERROR:CODE_INDENT: code indent should use tabs where possible
> #63: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:296:
> +                ret = true;$
>
> -:63: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #63: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:296:
> +                ret = true;$
>
> -:65: ERROR:CODE_INDENT: code indent should use tabs where possible
> #65: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:298:
> +        if(ret) {$
>
> -:65: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #65: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:298:
> +        if(ret) {$
>
> -:65: ERROR:SPACING: space required before the open parenthesis '('
> #65: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:298:
> +        if(ret) {
>
> -:73: ERROR:CODE_INDENT: code indent should use tabs where possible
> #73: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:306:
> +        }$
>
> -:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #73: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:306:
> +        }$
>
> -:74: ERROR:CODE_INDENT: code indent should use tabs where possible
> #74: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:307:
> +        return INTEL_HOTPLUG_UNCHANGED;$
>
> -:74: WARNING:LEADING_SPACE: please, no spaces at the start of a line
> #74: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:307:
> +        return INTEL_HOTPLUG_UNCHANGED;$
>
> total: 8 errors, 7 warnings, 0 checks, 38 lines checked
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
