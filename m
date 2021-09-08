Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ED5403B40
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 16:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A3A6E155;
	Wed,  8 Sep 2021 14:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7110C6E0F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 14:14:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220175332"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="220175332"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 07:14:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="580390839"
Received: from mytung-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.129.206])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 07:14:00 -0700
Date: Wed, 8 Sep 2021 07:14:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210908141400.3oehrz4mv7cxxle7@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210907213941.69295-1-lucas.demarchi@intel.com>
 <871r5z8n1r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <871r5z8n1r.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: deduplicate frequency dump on
 debugfs
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

On Wed, Sep 08, 2021 at 11:54:40AM +0300, Jani Nikula wrote:
>On Tue, 07 Sep 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> Although commit 9dd4b065446a ("drm/i915/gt: Move pm debug files into a
>> gt aware debugfs") says it was moving debug files to gt/, the
>> i915_frequency_info file was left behind and its implementation copied
>> into drivers/gpu/drm/i915/gt/debugfs_gt_pm.c. Over time we had several
>> patches having to change both places to keep them in sync (and some
>> patches failing to do so). The initial idea was to remove i915_frequency_info,
>> but there are user space tools using it. From a quick code search there
>> are other scripts and test tools besides igt, so it's not simply
>> updating igt to get rid of the older file.
>>
>> Here we export a function using drm_printer as parameter and make
>> both show() implementations to call this same function. Aside from a few
>> variable name differences, for i915_frequency_info this brings a few
>> lines that were not previously printed: RP UP EI, RP UP THRESHOLD, RP
>> DOWN THRESHOLD and RP DOWN EI.  These came in as part of
>> commit 9c878557b1eb ("drm/i915/gt: Use the RPM config register to
>> determine clk frequencies"), which didn't change both places.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c | 127 ++++++-------
>>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.h |   2 +
>>  drivers/gpu/drm/i915/i915_debugfs.c     | 227 +-----------------------
>>  3 files changed, 74 insertions(+), 282 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> index f6733f279890..6a27c011d0ff 100644
>> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> @@ -240,9 +240,8 @@ static int drpc_show(struct seq_file *m, void *unused)
>>  }
>>  DEFINE_GT_DEBUGFS_ATTRIBUTE(drpc);
>>
>> -static int frequency_show(struct seq_file *m, void *unused)
>> +void debugfs_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>
>The debugfs prefix belongs to debugfs, and I don't think we should have
>non-static functions with that prefix.
>
>I know it's in line with what's currently in the file, and I've
>complained about it before, but apparently that hasn't been enough.

I was surprised by the prefix too.

intel_gt_pm_debugfs.[hc] - would that be better or do you have another
suggestion?

thanks
Lucas De Marchi
