Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7A9524781
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 09:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D31310ED62;
	Thu, 12 May 2022 07:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB9410ED62
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 07:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652342354; x=1683878354;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RxBCMWufrs/e2h4b0Zj8zxJBUfP2UkX5R+Dgfptnv/o=;
 b=I3USdKK/niimy73o50JgjwMHJgw2CbLVcnfotqEWn8Sunzl9l/tSFQ4w
 eT5ygs1iffyVnW/7wtCAMhnUO3PjUP9EmInfQ3c0R7ECORBzAIPZfsNtt
 gQmiWjjklR93IdskoXPoVj1zBrsWrny5PFrElFua9x1hJqLTTKeoeon3/
 sRYAVELUJRQa4w3jNJ6f/uDXEei0aAfquS1zuYFXpyhy07n9tkTUKi9gv
 hF0BptVA8BP9dR5qqqp6B2OOYZygS6jng9yII/mR/x+5xSRRDCey32vUO
 el9HxzHUI7kPRN1Phd35/6pD8HrG+csNSqlRCf+hc/cKR+jkN96aCXUfs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="251979749"
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="251979749"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 00:59:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="697931662"
Received: from khamid-mobl1.ger.corp.intel.com (HELO [10.213.211.21])
 ([10.213.211.21])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 00:59:12 -0700
Message-ID: <116e0ec0-86d8-d352-97f6-f15d9e1aef3c@linux.intel.com>
Date: Thu, 12 May 2022 08:59:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <cover.1652320806.git.ashutosh.dixit@intel.com>
 <878rr774ct.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <878rr774ct.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 0/7] drm/i915: Media freq factor and
 per-gt enhancements/fixes
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/05/2022 05:38, Dixit, Ashutosh wrote:
> On Wed, 11 May 2022 19:32:13 -0700, Ashutosh Dixit wrote:
>>
>> Some recent Intel dGfx platforms allow media IP to work at a different
>> frequency from the base GT. This patch series exposes sysfs controls for
>> this functionality in the new per-gt sysfs. Some enhancements and fixes to
>> previous per-gt functionality are also included to complete the new
>> functionality:
>> * Patches 1 and 2 implement basic sysfs controls for media freq
>> * Patch 3 extends previous pcode functions for multiple gt's
>> * Patch 4 inits pcode on different gt's
>> * Patch 5 adds a couple of pcode helpers
>> * Patch 6 uses the new pcode functions to retrieve media RP0/RPn freq
>> * Patch 7 fixes memory leaks in the previous per-gt sysfs implementation
>>    and some code refactoring
> 
> In this v5 I have dropped the last two patches of the v4 series, these
> ones:
> 
> [PATCH 7/8] drm/i915/gt: Expose per-gt RPS defaults in sysfs
> [PATCH 8/8] drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs
> 
> Because these need more work based on the review comments. If this series
> is merged I will submit these patches as a separate series, otherwise I
> will re-add them to this series and resubmit (due to dependence between
> this series and those patches).
> 
> Apart from this, I believe I have addressed all previous review comments on
> the patches in this series.
> 
> Thanks for reviewing,

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

At some point we should starting documenting our sysfs in 
Documentation/ABI. For instance the freq ratio this patch adds really 
does need some user facing docs to know how to use it. Would you sign up 
to document the bits this series adds as follow up?

Regards,

Tvrtko

