Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF47A32299
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9676610E82D;
	Wed, 12 Feb 2025 09:41:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UO10V3Z0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79BF10E829;
 Wed, 12 Feb 2025 09:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739353283; x=1770889283;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LiEr+TkmBzoD9rbiJziu71a6CN+g9/QGo7Bs/vFHVyc=;
 b=UO10V3Z0++PvhhVbTKLD+iB6O7GvDD+LHr9265I7uGOPhDIkovQzxkqm
 cgmVbzl+znuTlsM2f7R1Ix7U9tvwavYNFvSXSreRlRigBt585nn8Z3WD8
 vBJFUI+Irx+DCh0GCuHEkAnMbULqJzblKpo/iGZaiieIPT9JfxTrLBpBa
 jSfAACcHPowLAw7e2JkpctMYRlmvo2BfjlqkL+vqHerbfrqEZzzL9OCWa
 Wb9eG1uRkGdSgPx/PqXfc51tiHAX/jUOy5C7GBg8xno0OIxeUzbzGMQiE
 xNrlrvNQIAYmlWrbeIQ4N98UMm7UsPuffVcO0FsCKLcEvMKg1jOqrAgOk A==;
X-CSE-ConnectionGUID: YcghfiziTXiywyAWcjICMw==
X-CSE-MsgGUID: CUWg83u+SxaDdj2a7aZvMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="57409260"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="57409260"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:41:22 -0800
X-CSE-ConnectionGUID: f0tRuyz3QPKwNkngjcLptA==
X-CSE-MsgGUID: J8dUS8BkRVKhduO5qSBFcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113674266"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:41:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 3/3] drm/i915: split out display register macros to a
 separate file
In-Reply-To: <SN7PR11MB6750302257AFFFAB627C3A52E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738935286.git.jani.nikula@intel.com>
 <f6ceecdab92d47e92700b19b278028f0773d71e5.1738935286.git.jani.nikula@intel.com>
 <SN7PR11MB6750302257AFFFAB627C3A52E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 12 Feb 2025 11:41:17 +0200
Message-ID: <87seojzeiq.fsf@intel.com>
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

On Wed, 12 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Friday, February 7, 2025 7:05 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com; Deak,
>> Imre <imre.deak@intel.com>
>> Subject: [PATCH 3/3] drm/i915: split out display register macros to a
>> separate file
>>
>> This is a scripted split of the display related register macros from
>> i915_reg.h to display/intel_display_regs.h. Basically move all the
>> macros that are only used in display code (or GVT). If there are users
>> in core i915 code or soc/, or no users anywhere, keep the macros in
>> i915_reg.h. This is done in groups of macros separated by blank lines,
>> moving the comments along with the groups.
>>
>> This is obviously a very crude approach. It's not perfect. But there are
>> 4.2k lines in i915_reg.h, and its refactoring has ground to a halt. This
>> is the big hammer that splits the file to two, and enables further
>> cleanup.
>>
>
> This is a really big patch and I may have very well missed something but
> Seeing that this is majorly code movement and things like conversion of 1<<x
> To reg_bit will need to happen In a different patch or series LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Oh, I sincerely hope you're aware of 'git show --color-moved'. Applying
the patch and looking at it with that makes it a breeze to review code
movement!

Thanks for the review.

BR,
Jani.


-- 
Jani Nikula, Intel
