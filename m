Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DF29AE3F9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 13:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324B510E900;
	Thu, 24 Oct 2024 11:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nEDiJWDB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6732810E904
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 11:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729769616; x=1761305616;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Tbd/lhlNKngedpCyoUt8ucT5MfOw4610yvkcCV7nn+k=;
 b=nEDiJWDBrFUknVXJiXyESR9rTlYw4987MZiNJ/VrXg1Wp1Noi403mm4z
 /+BFOJCnIlmKWlLaoqdJdqeqZFCMoIx9xTojx1uezLAWnej/Sjz90X7v5
 r+TQ2tiTAiYf4XfdxBxpj3SiISZcOCtot/RZMSarpR9MfW3p13OMctWcE
 i31NWjYQilcUA+5U0cqHLKfpveCvx2n9MDeYSv7H4soEpiZOWLEzvwBda
 Ol1RrERiAycJ+YyJ0X14yqbd5NAqMl5Hf5meCLm8dM3Le9NC9SFbsGc3M
 sKKyQyQ1AJGIyWd0DcXIxE/P0HCC0rUKhJ2wPMa6Sd9D+I8mLMCYZciP8 Q==;
X-CSE-ConnectionGUID: TmB6UZ2XR0SAWyxaD8UQ8Q==
X-CSE-MsgGUID: d3XhOiRGT6GcoCiZ1hEwWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="33193397"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="33193397"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 04:33:07 -0700
X-CSE-ConnectionGUID: 4kptEJ0jSlO5cgSDUTH7HQ==
X-CSE-MsgGUID: zIFJH5EZQKCmgcpDY3dxOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80737544"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.156])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 04:33:05 -0700
Date: Thu, 24 Oct 2024 13:33:01 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nirmoy.das@intel.com
Subject: Re: [PATCH v2] drm/i915/gt: Use ENGINE_TRACE for tracing.
Message-ID: <ZxowbeezaaS_v21C@ashyti-mobl2.lan>
References: <20241024103917.3231206-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241024103917.3231206-1-nitin.r.gote@intel.com>
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

Hi Nitin,

On Thu, Oct 24, 2024 at 04:09:17PM +0530, Nitin Gote wrote:
> There is ENGINE_TRACE() macro which introduce engine name
> with GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
> over drm_err() drm_device based logging for engine debug log.
> 
> v2: Bit more specific in commit description (Andi)
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
