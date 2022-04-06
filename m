Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8E14F6B7E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 22:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312BD10E046;
	Wed,  6 Apr 2022 20:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52B010E046
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 20:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649277305; x=1680813305;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WMteGxbqczULICzuIZuIT/BvrHUCbdg5J1KLgHT0jNI=;
 b=dpKYA296TehyKfG6cF7lva1yxtf6Pm7GSLJZ5KTB/c2nJGwIJ4/sKVlr
 udxuOUR6DEEC33pDpFyEFsYZd3C47cSS9FXKkiJ0YwuRYnG1ExnG6cElo
 s8+GixSV2Hr5M88npBSTW8OvmSQKSPhm0z+cKe2I7gXyKMJQJrRTCHhby
 ftXTkXrLR+RHL4x8/q3s5SHLCh4Vi0KhFqPp6nxVMWc6R0ZZfX7zlzpOu
 2IijgxmtpYUmavqgB36U5A58ORI4XadVmZDUAnqkOtI84XSTWb/xRYoEh
 ixJmNcxdQfYprDjT+LWdozaQLWPJD0ymWcEUQ07TAfWPMUW4+zkjY58GE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="324314962"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="324314962"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 13:35:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="557096693"
Received: from aclausch-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.8.158])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 13:35:04 -0700
Date: Wed, 6 Apr 2022 13:35:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220406203503.7o34o737ig64pzru@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405001149.2675226-1-lucas.demarchi@intel.com>
 <Yk0Q4n8fLUzuAP0F@mdroper-desk1.amr.corp.intel.com>
 <20220406055343.xfyafxtvvo74kayg@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220406055343.xfyafxtvvo74kayg@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uncore: Warn on previous unclaimed
 accesses
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 10:53:43PM -0700, Lucas De Marchi wrote:
>On Tue, Apr 05, 2022 at 09:02:42PM -0700, Matt Roper wrote:
>>On Mon, Apr 04, 2022 at 05:11:49PM -0700, Lucas De Marchi wrote:
>>>Since gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
>>>This register is in the display engine IP and can only ever detect
>>>unclaimed accesses to registers in this area. However sometimes there
>>>are reports of this triggering for registers in other areas, which
>>>should not be possible.
>>>
>>>Right now we always warn after the read/write of registers going through
>>>unclaimed_reg_debug(). However places using __raw_uncore_* may be
>>>triggering the unclaimed access and those being later accounted to a
>>>different register. Let's warn both before and after the read/write
>>>with a slightly different message, so it's clear if the register
>>>reported in the warning is actually the culprit.
>>
>>You should probably probably give an explicit mention of commit
>>dda960335e020 ("drm/i915: Just clear the mmiodebug before a register
>>access") in the commit message since we're reversing direction here.
>
>I will add a note about that commit, but this is not going a reverse
>direction: The reason for the change is exactly the same as expressed in
>that commit:  earlier failures being accounted for unrelated registers.
>In that commit it dropped the warning before the read, but it failed to
>account for cases like we are having: a read or write to a non-display
>register will still read FPGA_DBG and be marked as failure. Even if it's
>unrelated to the register that actually caused the failure. So I think
>this is just a slightly different implementation: instead of dropping the
>warning, warn with a more appropriate message to be clear what happened.
>
>
>>
>>>
>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>---
>>> drivers/gpu/drm/i915/intel_uncore.c | 29 +++++++++++++++++++++--------
>>> 1 file changed, 21 insertions(+), 8 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>>>index 8b9caaaacc21..df59ec88459e 100644
>>>--- a/drivers/gpu/drm/i915/intel_uncore.c
>>>+++ b/drivers/gpu/drm/i915/intel_uncore.c
>>>@@ -1502,11 +1502,10 @@ ilk_dummy_write(struct intel_uncore *uncore)
>>> static void
>>> __unclaimed_reg_debug(struct intel_uncore *uncore,
>>> 		      const i915_reg_t reg,
>>>-		      const bool read,
>>>-		      const bool before)
>>>+		      const bool read)
>>> {
>>> 	if (drm_WARN(&uncore->i915->drm,
>>>-		     check_for_unclaimed_mmio(uncore) && !before,
>>>+		     check_for_unclaimed_mmio(uncore),
>>> 		     "Unclaimed %s register 0x%x\n",
>>
>>Might be simpler to just keep it all in one function and do something
>>like a
>>
>>       before ? "MMIO operation *before* a " : ""
>>
>>in the message?  Up to you.  Either way,
>
>those bool arguments ar too easy to mess up in the caller IMO. I'd
>rather keep different functions, particularly since it's just a few
>lines.
>
>>
>>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>thanks
>Lucas De Marchi


Applied to drm-intel-next.

Lucas De Marchi
