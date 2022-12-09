Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A8E647FA4
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 09:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB4C10E501;
	Fri,  9 Dec 2022 08:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D8910E501
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 08:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670576226; x=1702112226;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c13fM8/AoBGUTmBrJBfGMlFwPuM2hVKZ1q6x0lzqYDM=;
 b=n8tTUHk/dHCDRw93MG2jEXrFbl3OwBCwPkr2wup6HL0yz/DQUYN0uziY
 3SEnCjTcsZ+hEnujcDqS4FVShFtpKBmYlyvf3Bwd81eR138SYiJnZBTrh
 rI6rtxq8MhJVn/D7LxastyFw/TnuFhoKFX0tRplpJ9vGcKuWdCvWc/R64
 AbewejadChdmO8eU/l4dUXX/mudf3GMqZnA9zAWAlvdnMMVxikcTwKpCw
 j1w33bYos1zyxwFw+BKGlgWDiO6O/fU0LlVyur05TAUJqi+5FqST8UE65
 xTRm0SipMx6+hPTKvI7HbWMoe0oEFzwNA1d6IWQaoyCggkFz2y0u2x9en Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="316122179"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="316122179"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:57:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="976213910"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="976213910"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.186])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:57:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20221208191056.imesdzudpeltiuno@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221208133638.478024-1-jani.nikula@intel.com>
 <20221208191056.imesdzudpeltiuno@ldmartin-desk2.lan>
Date: Fri, 09 Dec 2022 10:57:02 +0200
Message-ID: <87k031ymxt.fsf@intel.com>
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

Yeah I've looked at it. Would be nice to use it via CHECK=iwyu, but it
needs a wrapper to deal with the parameters, and haven't gotten around
to that yet. And from past experience with iwyu, I'm not really
expecting a whole lot. It can be a bit overzealous.

BR,
Jani.

>
> Anyway,
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
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
