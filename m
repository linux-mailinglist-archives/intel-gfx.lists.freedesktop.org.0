Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2699B0560
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 16:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA0B10EAF6;
	Fri, 25 Oct 2024 14:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hgx9gRfA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8474B10E2B8;
 Fri, 25 Oct 2024 14:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729865777; x=1761401777;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=fQeCB/JPqgKiPS7v9CakANG8gr06NpklNKDnSJf3Lho=;
 b=Hgx9gRfAhLKP1eGtfOTFTKL2K9QnOFFDFv2t4gDYrABMK9ad/DsRFpKw
 AZdo1EBOmy0wHnXMgLsZmtZCTIJ90uabeNvrsj0zgza56EcNyad6YMa9b
 yKRj1u6TcdY6F4VNysRKCxPJR58kKtlbjxOF74ZXoamKPsDnQKg0ZGZgp
 IH7oIsbCiIfdaiMjBdoZ3wHK3EqqpcL3ixrUuy9gAyUpv8srHmoK81p48
 cDaIKKqZsoQhPgzMIfwZadCyrhZiq5+jLwTUI+oW2agZIfSw5gFMUyZBG
 l+6NnZE0OC2VjFPCRca0FZ/YxVU5OOKJ/gxWiaa83VLF2iBVeea5Uimpf g==;
X-CSE-ConnectionGUID: mrWvQKi4RGyPwnZrYnMUsQ==
X-CSE-MsgGUID: tLj7Fr1STVWyIRlre9salg==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="28986801"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="28986801"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 07:16:16 -0700
X-CSE-ConnectionGUID: eZxXGiKsSEiFOepK1KjEyA==
X-CSE-MsgGUID: vOFl2/U3SfWpTLCZL+/hQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="111760439"
Received: from zzombora-mobl1.ti.intel.com (HELO localhost) ([10.245.246.193])
 by orviesa002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2024 07:16:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Clint Taylor
 <clinton.a.taylor@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 01/11] drm/i915/xe3lpd: Update pmdemand programming
In-Reply-To: <172986311694.1548.11080444560306759369@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-2-clinton.a.taylor@intel.com>
 <172986311694.1548.11080444560306759369@gjsousa-mobl2>
Date: Fri, 25 Oct 2024 17:16:09 +0300
Message-ID: <87zfmsp8t2.fsf@intel.com>
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

On Fri, 25 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Clint Taylor (2024-10-24 19:31:04-03:00)
>>@@ -460,7 +479,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
>> }
>> 
>> static void
>>-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>>+intel_pmdemand_update_params(struct drm_i915_private *i915,
>>+                             const struct intel_pmdemand_state *new,
>>                              const struct intel_pmdemand_state *old,
>>                              u32 *reg1, u32 *reg2, bool serialized)
>
> Jani ask been asking in other patches not to add new i915 variables or
> parameters.

Yes.

> As such, I think we should make intel_pmdemand_update_params() receive
> struct intel_display *display instead of i915. The caller can be adapted
> to simply use intel_pmdemand_update_params(&i915->display, ...).

Actually always prefer adding a local display variable instead:

	struct intel_display *display = to_intel_display(...);

or

	struct intel_display *display = &i915->display;

Otherwise, further struct intel_display conversions wouldn't benefit
from having the display variable available, and you end up having to fix
all the inline &i915->display again.

BR,
Jani.


-- 
Jani Nikula, Intel
