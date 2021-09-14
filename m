Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152D840B27A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 17:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738166E4F3;
	Tue, 14 Sep 2021 15:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9116E4F1;
 Tue, 14 Sep 2021 15:04:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="307571422"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="307571422"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 08:03:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544115379"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 08:02:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Andi Shyti <andi.shyti@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
In-Reply-To: <20210914144601.pws37hme5v3teqyg@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210909004941.379035-1-lucas.demarchi@intel.com>
 <87o88v34bm.fsf@intel.com> <20210914144601.pws37hme5v3teqyg@ldmartin-desk2>
Date: Tue, 14 Sep 2021 18:02:40 +0300
Message-ID: <8735q72oa7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: rename debugfs_gt files
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

On Tue, 14 Sep 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Sep 14, 2021 at 12:16:13PM +0300, Jani Nikula wrote:
>>On Wed, 08 Sep 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> We shouldn't be using debugfs_ namespace for this functionality. Rename
>>> debugfs_gt.[ch] to intel_gt_debugfs.[ch] and then make functions,
>>> defines and structs follow suit.
>>>
>>> While at it and since we are renaming the header, sort the includes
>>> alphabetically.
>>
>>I didn't do a detailed review, maybe someone should, but superficially
>>seems good. On the series,
>>
>>Acked-by: Jani Nikula <jani.nikula@intel.com>
>
> thanks. What about the question I raised on
>
> intel_gt_register_debugfs() vs
> intel_gt_debugfs_register()?
>
> and
>
> intel_gt_pm_register_debugfs() vs
> intel_gt_pm_debugfs_register()?
>
> what would be prefered here?

Nowadays I try to juggle the function names to have the prefix match the
filename. I think the driver has grown so big that we need that to help
with our mental model of what goes where. Beyond that, whatever flows
more naturally when you say it out aloud.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
