Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 234674AEAF9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 08:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3010510E1D2;
	Wed,  9 Feb 2022 07:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F36710E1D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 07:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644391505; x=1675927505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Sm8jM63DxhLBON8ao4+EuiXkY3zJGhzpcoEy32L7a9E=;
 b=Jp1Zwyqg51JhZ9Cg/qppVsDS5GSlXsL4YXlI8m+OBSiNJRUhWRtIXkkz
 lLPKdBraKAYYem1k/+FHtGpxZo7VrwrW7kmLsBRoABywwGPjTnDZMeI23
 TEQkPALoqONQNuruQlocyaCk05Zi0u7pt69JL41eKy/z/5or+CtSbIr1e
 +fXoOHa2BUyVDq4ShX4uUF8B5gkzhvMF9QlR/861HwDKRv5/Yvlnp1fTF
 HMsxc9WbfLCshpwcGVy4IXyhkCYq5IQiRpmfdxlYrAiBDUEyauE03eSu9
 S1pDlsdDW3z91Cw5xDN20EPCqEKBeg3xMmhOvAKXdxxTiFtXZUOWTKBew g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="312439415"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="312439415"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 23:25:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="585476527"
Received: from ymtarple-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.231.100])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 23:25:03 -0800
Date: Tue, 8 Feb 2022 23:25:03 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20220209072503.bhls5gk5vn7c7cle@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220208070141.2095177-1-lucas.demarchi@intel.com>
 <20220208070141.2095177-3-lucas.demarchi@intel.com>
 <e5ba2842-2677-46c9-cd18-17a70151fc05@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <e5ba2842-2677-46c9-cd18-17a70151fc05@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Use a single pass to
 calculate regset
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

On Tue, Feb 08, 2022 at 05:15:02PM -0800, Daniele Ceraolo Spurio wrote:
>
>
>On 2/7/2022 11:01 PM, Lucas De Marchi wrote:
>>The ADS initialitazion was using 2 passes to calculate the regset sent
>>to GuC to initialize each engine: the first pass to just have the final
>>object size and the second to set each register in place in the final
>>gem object.
>>
>>However in order to maintain an ordered set of registers to pass to guc,
>>each register needs to be added and moved in the final array. The second
>>phase may actually happen in IO memory rather than system memory and
>>accessing IO memory by simply dereferencing the pointer doesn't work on
>>all architectures. Other places of the ADS initializaition were
>>converted to use the iosys_map API, but here there may be a lot more
>>accesses to IO memory. So, instead of following that same approach,
>>convert the regset initialization to calculate the final array in 1
>>pass and in the second pass that array is just copied to its final
>>location, updating the pointers for each engine written to the ADS blob.
>>
>>One important thing is that struct temp_regset now have
>>different semantics: `registers` continues to track the registers of a
>>single engine, however the other fields are updated together, according
>>to the newly added `storage`, which tracks the memory allocated for
>>all the registers. So rename some of these fields and add a
>>__mmio_reg_add(): this function (possibly) allocates memory and operates
>>on the storage pointer while guc_mmio_reg_add() continues to manage the
>>registers pointer.
>>
>>On a Tiger Lake system using enable_guc=3, the following log message is
>>now seen:
>>
>>	[  187.334310] i915 0000:00:02.0: [drm:intel_guc_ads_create [i915]] Used 4 KB for temporary ADS regset
>>
>>This change has also been tested on an ARM64 host with DG2 and other
>>discrete graphics cards.
>>
>>v2 (Daniele):
>>   - Fix leaking tempset on error path
>>   - Add comments on struct temp_regset to document the meaning of each
>>     field
>>
>>Cc: Matt Roper <matthew.d.roper@intel.com>
>>Cc: John Harrison <John.C.Harrison@Intel.com>
>>Cc: Matthew Brost <matthew.brost@intel.com>
>>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Thanks for the review. Applied to drm-intel-gt-next.

Lucas De Marchi
