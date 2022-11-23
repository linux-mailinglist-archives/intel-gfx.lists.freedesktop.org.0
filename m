Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E35BA635C84
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 13:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D8810E083;
	Wed, 23 Nov 2022 12:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A5A10E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 12:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669205711; x=1700741711;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tW8Y5ZnEfMySFjCin8uA1CEThZ7Gn2g/3aP+sw+0urk=;
 b=DbCNmXwxKJ6nFUfS4JLRaiBufbUaXsJwcFKC4hgBpNASA0spUCSs7BwO
 mEKjbxUufXQBPh4vWq/ZYRw2fARwVVW5M46mrfAlgt0OO2kN+KBHbd8s+
 hur8UwMrystyocXFjTUEgK8ggeEhPLsnneKplRPwajY4vlGp+Tonxe78h
 SBs0iuRwhGOnzxF++vReoOl2siE7OUO4EcTrtZFhycBHaZ2thGvFETJ0t
 EtacW6GYT4ani6MeZA/i+Cf2bXv2h6Q8D6L35H8Z5vrcWROzvNYoOVvKy
 Z6TXAXgfQ0gGmIypxO11uNzjs65VxOuR96r3PSD+8pyvSInHAqz0i0ygA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="312753505"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312753505"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 04:15:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="747770245"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="747770245"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 04:15:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20221122173820.ub5sleuugf5ao47n@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122141616.3469214-1-jani.nikula@intel.com>
 <20221122173820.ub5sleuugf5ao47n@ldmartin-desk2.lan>
Date: Wed, 23 Nov 2022 14:15:06 +0200
Message-ID: <87edttx3xx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: make default_lists const data
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Nov 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Nov 22, 2022 at 04:16:16PM +0200, Jani Nikula wrote:
>>The default_lists array should be in rodata.
>>
>>Fixes: dce2bd542337 ("drm/i915/guc: Add Gen9 registers for GuC error state capture.")
>>Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed to drm-intel-gt-next.

BR,
Jani.

>
> thanks
> Lucas De Marchi
>
>>---
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>index 1d49a7ec0bd8..1c1b85073b4b 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>@@ -170,7 +170,7 @@ static const struct __guc_mmio_reg_descr empty_regs_list[] = {
>> 	}
>>
>> /* List of lists */
>>-static struct __guc_mmio_reg_descr_group default_lists[] = {
>>+static const struct __guc_mmio_reg_descr_group default_lists[] = {
>> 	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
>> 	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>> 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>>-- 
>>2.34.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
