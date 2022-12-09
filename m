Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78198647FA6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 09:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA0610E506;
	Fri,  9 Dec 2022 08:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C24C10E504
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 08:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670576261; x=1702112261;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GuuM/5E6zyCb6u/qvibe/Hw6cbDD6QKDtFy8dvnHPtY=;
 b=M7FTPiSmWIMcrrDmUbCHdF6AidHh1tR+zulnd+fjacapeWW0YUbzjAsl
 Nyb+XZ668QMkanvrN/TEo/CGZG63X0GjKGXBnoAzjpivIkWofEHyyMB9Y
 BOIcfkUYNtlMCF2V5vsIfPAsZKCNdmFHSIBA7pI/tZkEGGqEwYSLpgsr7
 Hg8qdfM+q7GLWCo7hlxIYUBgeB7oQX1lD3isQ6xeb1TiUmlpvqsOk8SDS
 JzZs0zCA5clxJ74EfKCgQFX/MAICLtslBCnTJcEmjFOlHVbM6j4fgseGV
 goS+W/tpvq/Iol8p8oz+lTEF6vr3HuI37B+gJofQCoMjti/L/3kXXdTm9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="319279242"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="319279242"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:57:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="679868387"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="679868387"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.186])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:57:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20221208191056.imesdzudpeltiuno@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221208133638.478024-1-jani.nikula@intel.com>
 <20221208191056.imesdzudpeltiuno@ldmartin-desk2.lan>
Date: Fri, 09 Dec 2022 10:57:36 +0200
Message-ID: <87h6y5ymwv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: no need for
 gt/gen8_ppgtt.h
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

On Thu, 08 Dec 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Dec 08, 2022 at 03:36:38PM +0200, Jani Nikula wrote:
>>Remove an unnecessary include.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> maybe we should run a script/something to check for unneeded includes
> and commit everything? Then we can add a check in CI
>
> include-what-you-use  does this, but I'm not sure it can grok
> kernel / i915
>
> Anyway,
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Also, thanks. Pushed to drm-intel-next.

BR,
Jani.

>
> Lucas De Marchi
>
>>---
>> drivers/gpu/drm/i915/display/intel_display.c | 2 --
>> 1 file changed, 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>index 32b257157186..6cdfdae2c712 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>@@ -70,8 +70,6 @@
>> #include "gem/i915_gem_lmem.h"
>> #include "gem/i915_gem_object.h"
>>
>>-#include "gt/gen8_ppgtt.h"
>>-
>> #include "g4x_dp.h"
>> #include "g4x_hdmi.h"
>> #include "hsw_ips.h"
>>-- 
>>2.34.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
