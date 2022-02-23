Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7784C1DE1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 22:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DBA10F05E;
	Wed, 23 Feb 2022 21:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B1910F05E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 21:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645652603; x=1677188603;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ykjlZQ7pKplEL9QOiKfeVGAdPMgKpLPXOBIXl7hQKao=;
 b=Dhwh/N2a+NrjtUXYsH1OlAB1q2o+MUtN3kIAAKoVeWjWOnLwzV2qlki8
 NhjE1Q2JVjMOa+ykoBiM4ld+RYr4DYSlWfz2seiqZR/8/CfsCY9Docjlm
 iCDpktxxKBpWGftmNn454GRCLYZ6ZT+By3vOToRGPQQxnQIVpMXpzoomn
 wdpzSDP4auuJRDAjdbtNK7IcL3koLXjL53DpfzASyG0PnaxOntkoxph8c
 +/5JD0ScqQ/REHVBPuckI/fHflsWe3k3tviXtaKcvlZpwxu1l9Od2rfTx
 DPKslnwBem8y3VOVRJ9fZ9u8i4G3GsBQb60kixivwt59V3h+Z0JdJAf2h Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232059888"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="232059888"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 13:43:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="707201095"
Received: from scjha-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.66.247])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 13:43:22 -0800
Date: Wed, 23 Feb 2022 13:43:20 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20220223214320.fochj5xcqpzybwzn@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220223194946.725328-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223194946.725328-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check stolen memory size
 before calling drm_mm_init
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
Cc: Steve Carbonari <steven.carbonari@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 23, 2022 at 11:49:46AM -0800, Jose Souza wrote:
>Add check for zero usable stolen memory before calling drm_mm_init
>to support configurations where stolen memory exists but is fully
>reserved.
>
>Also skip memory test in cases that usable stolen is smaller than
>page size(amount mapped and used to test memory).
>
>v2:
>- skiping test if available memory is smaller than page size (Lucas)
>
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Steve Carbonari <steven.carbonari@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
