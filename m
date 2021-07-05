Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7833BB81D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 09:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB0D899F2;
	Mon,  5 Jul 2021 07:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC7F899F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 07:45:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="196104242"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="196104242"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 00:45:17 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="485414081"
Received: from elang-mobl.ger.corp.intel.com (HELO localhost) ([10.252.59.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 00:45:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210704053202.dncjlbkingckz4gg@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210630230624.25407-1-anusha.srivatsa@intel.com>
 <20210701000114.smjdtszhfx24gkkj@ldmartin-desk2> <87eechqhou.fsf@intel.com>
 <20210704053202.dncjlbkingckz4gg@ldmartin-desk2>
Date: Mon, 05 Jul 2021 10:45:11 +0300
Message-ID: <87r1gd9pbs.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use RUNTIME_INFO->stp for DMC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 03 Jul 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Jul 02, 2021 at 10:49:05AM +0300, Jani Nikula wrote:
>>Frankly, I think all of this should be incorporated to intel_step.[ch]
>>instead of having a semi-overlapping handling here. Just look at the
>>amount of duplication already.
>
> I guess you missed I gave the same suggestion below and that there is
> already a new version of this patch? Question here was about going a
> step further to avoid the conversion STEP_* to 2 chars.

Sorry for the noise.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
