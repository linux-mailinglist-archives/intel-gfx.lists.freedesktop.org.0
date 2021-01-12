Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B92B2F351A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 17:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779756E2E6;
	Tue, 12 Jan 2021 16:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F966E2E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 16:12:02 +0000 (UTC)
IronPort-SDR: NarlMyug+3tFcj8GgiU4NDA8rQ5E/YmlIPrKXDuzXra/2QYLNNVxVGXPKR6BHdYnnfG/y1AXlj
 Dj0kd2/eQoWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="262849344"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="262849344"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 08:11:44 -0800
IronPort-SDR: svKj4oO1/2kUzegFEMRFHq6SklxtlYa2GwCs6Xq3aelbkdRnSbCkRNOLbNx47rOAtywf8g++0v
 kf2otdT/cu3g==
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="381477331"
Received: from vbucoci-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 08:11:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <0f0aa5f1-3e9c-f6b9-6448-286259f5e61d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com> <0f0aa5f1-3e9c-f6b9-6448-286259f5e61d@intel.com>
Date: Tue, 12 Jan 2021 18:11:39 +0200
Message-ID: <87turmt9s4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Use TGL stepping info for
 applying WAs
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Jan 2021, Aditya Swarup <aditya.swarup@intel.com> wrote:
> On 1/11/21 12:13 PM, Jani Nikula wrote:
>> On Fri, 08 Jan 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
>> FWIW I have a wip series changing the whole thing to abstract steppings
>> enums that are shared between platforms, but it's in a bit of limbo
>> because the previous revid changes were applied to drm-intel-gt-next,
>> and it's fallen pretty far out of sync with drm-intel-next. All of this
>> really belongs to drm-intel-next, but can't do that until the branches
>> sync up again.
>> 
>> My series also completely hides the arrays into a separate .c file,
>> because the externs with direct array access are turning into
>> nightmare. The ARRAY_SIZE() checks rely on the extern declaration and
>> the actual array definition to have the sizes in sync, but the compiler
>> does not check that. Really.
>> 
>> IDK, feels like this merging this series is going to be extra churn.
>
> We need ADLS support on drm-tip by WW05 and I don't think this should change anything
> as far as rebase is concerned as it will be just deletion of this entire section to move 
> into the separate stepping/revid file in your implementation. 

Fine, let's take the churn, no big deal.

However, I think you'll find drm-intel-next and drm-intel-gt-next are
currently too far from each other to even have a sensible topic branch
baseline:

$ git merge-base drm-intel/drm-intel-next drm-intel/drm-intel-gt-next
31b05212360cbf3af3c2e1b7f42e176e0eebedb5

Even if you do the minimal cherry-pick to drm-intel-next to be able to
apply this series, you'll still end up with really bad merge trouble to
get the platform support back to drm-intel-gt-next, and I presume that's
what you'll need.

And that means a topic branch.

And that means:

1) New drm-intel-gt-next pull request

2) Have that merged to drm-next

3) Have drm-next backmerged to drm-intel-next

to have a sensible baseline.

> I think as a stop gap and to achieve the goal of ADLS patches being pushed in, these patches
> look good enough. If extern/array declaration was a concern, why were the KBL/TGL pathces accepted
> in the first place?

Really, they should not have been. It's just poor design, and difficult
to maintain long term. Data is not an interface. The driver is too big
to bypass abstractions for this.

See this:

$ git grep -w extern -- drivers/gpu/drm/i915

> I will be happy to help with the rebase but the process of pushing
> ADLS patches is stuck because of this.

It's stuck because our -next branches are too far apart.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
