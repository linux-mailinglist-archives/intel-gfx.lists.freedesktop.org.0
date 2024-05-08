Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7CE8BF89A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 10:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F57C10F9F6;
	Wed,  8 May 2024 08:33:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VaMI90pQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B4510F8EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 08:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715157230; x=1746693230;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YCsg1u+niEczogssz+PTwGFiNoFiKGD6NSqDv/+3zqM=;
 b=VaMI90pQSxuEG+b5+YgTva9gwYdFbvF5jhmYNO+qjp1NHPErFQISLYRl
 hRH8hlXEunrO3SL6LKIkCSqBm3VvvrFBmVaoo5vvkO2szaTm5aMfqBio1
 2lIu5DdyoR4aW0rfb7yFn0G+Bz6kETLYxt2o/wxIYuqv06u/lj/cGcQyl
 ppUff46BM7Ph3jnie2v4plI81v87O5rznOFD+jZiqE109W1HYRV2LPJBS
 x5iM8Mc+oVRmhIiNsj190ETopol4kR3d8wQCbX5AgDXaK//pRPIvuLiOm
 NXzzYLLF2Cxbr6iMJtCk/KV7QTcQAg6yMJAGSlYZ3Dte5oBEPmvx9YjQ9 g==;
X-CSE-ConnectionGUID: N4G6nAsyRLSxKdp3X1t8fQ==
X-CSE-MsgGUID: 7mW07wQgS5u9bF9LRBW+JQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="22155811"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="22155811"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 01:33:49 -0700
X-CSE-ConnectionGUID: 4zQr7uIDSSGGu2cIeWHoQA==
X-CSE-MsgGUID: tUlY151TTQunbj2t184GZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="52023373"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 localhost) ([10.245.246.76])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 01:33:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com, Bjorn
 Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915: don't include CML PCI IDs in CFL
In-Reply-To: <Zjow5HXrXpg2cuOA@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715086509.git.jani.nikula@intel.com>
 <bebbdad2decb22f3db29e6bc66746b4a05e1387b.1715086509.git.jani.nikula@intel.com>
 <Zjow5HXrXpg2cuOA@intel.com>
Date: Wed, 08 May 2024 11:33:43 +0300
Message-ID: <87cypwln2w.fsf@intel.com>
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

On Tue, 07 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, May 07, 2024 at 03:56:48PM +0300, Jani Nikula wrote:
>> @@ -535,11 +541,7 @@
>>  	INTEL_WHL_U_GT1_IDS(info), \
>>  	INTEL_WHL_U_GT2_IDS(info), \
>>  	INTEL_WHL_U_GT3_IDS(info), \
>> -	INTEL_AML_CFL_GT2_IDS(info), \
>> -	INTEL_CML_GT1_IDS(info), \
>> -	INTEL_CML_GT2_IDS(info), \
>> -	INTEL_CML_U_GT1_IDS(info), \
>> -	INTEL_CML_U_GT2_IDS(info)
>> +	INTEL_AML_CFL_GT2_IDS(info)
>
> Why only CML and not AML and WHL as well?

Mainly because we don't have a separate enumeration in enum
intel_platform for AML or WHL, while for CML we do. We don't even have
subplatforms for AML or WHL. So we don't need to distinguish them.

That said, we could also have a rule that anything with a name needs to
have a PCI ID macro. Could lean either way.

BR,
Jani.

>
>>  
>>  /* CNL */
>>  #define INTEL_CNL_PORT_F_IDS(info) \
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
