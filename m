Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B1D9E37E5
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D6110E158;
	Wed,  4 Dec 2024 10:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NE/DmNdK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4436A10E158
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 10:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733309522; x=1764845522;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qxe1jdz0Ca3wVFKRBB/EdwVP4hTYcnGo1mN/W/mYQTI=;
 b=NE/DmNdKEbvbpIrFphhOlpYJuvhp/2UrYUu2TBp461ys2dXgi9jDeyxR
 Fh5GYmBMzTQqoWjAz8s8GyolaIx1wb8e2EWNHdMIQBGVayUTuelQEkvbB
 bFwm/HzcHlNpsC0T3XIbQGol3BhZNOCY34kA3anZ0x9lpxDriyy8g4iZL
 YnS1NAHY0J5x7fue5RlY8zwZyLmRvLJ8fKFKYAlxRZI8covyOijL2a/Io
 2k0Kpc5JK81knhqcVFmcME+J6g5rDun4ayveTl2HBN+L8gAjNu7Y8ppup
 i8V81e2PR3+RXjEOk3oY+fJbxERZuEWunRghS9/YFKef9VoXdqCdY0Nv9 Q==;
X-CSE-ConnectionGUID: S7C0wa/FSyS3FXRbgrJ4ig==
X-CSE-MsgGUID: V+X0AaekRyKaVSGAreZAlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="32911596"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32911596"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:52:02 -0800
X-CSE-ConnectionGUID: bK6jthiQSUOs/1RfBavx/w==
X-CSE-MsgGUID: vIYkufaaTXmkHjI0C/HgYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="97791414"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:51:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>
Cc: Eugene Kobyak <eugene.kobyak@intel.com>,
 intel-gfx@lists.freedesktop.org, John.C.Harrison@intel.com,
 andi.shyti@linux.intel.com, stable@vger.kernel.org
Subject: Re: [PATCH v6] drm/i915: Fix NULL pointer dereference in
 capture_engine
In-Reply-To: <Z1Avw4f93LlBULI2@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
 <053cc89a-0b20-4fb0-b93c-1e864a6b6f6a@intel.com>
 <Z1Avw4f93LlBULI2@ashyti-mobl2.lan>
Date: Wed, 04 Dec 2024 12:51:56 +0200
Message-ID: <87frn33elv.fsf@intel.com>
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

On Wed, 04 Dec 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Michal,
>
>> > +	if (rq && !i915_request_started(rq)) {
>> > +		/*
>> > +		* We want to know also what is the gcu_id of the context,
>> 
>> typo: guc_id
>> 
>> > +		* but if we don't have the context reference, then skip
>> > +		* printing it.
>> > +		*/
>> 
>> but IMO this comment is redundant as it's quite obvious that without
>> context pointer you can't print guc_id member
>
> I recommended to add a comment because there is some code
> redundancy that, I think, needs some explanation; someone might
> not spot immediately the need for ce, unless goes a the end of
> the drm_info parameter's list.
>
>> > +		if (ce)
>> > +			drm_info(&engine->gt->i915->drm,
>> > +				"Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
>> > +				engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
>> > +		else
>> > +			drm_info(&engine->gt->i915->drm,
>> > +				"Got hung context on %s with active request %lld:%lld not yet started\n",
>> > +				engine->name, rq->fence.context, rq->fence.seqno);
>> 
>> since you are touching drm_info() where we use engine->gt then maybe
>> it's good time to switch to gt_info() to get better per-GT message?
>
> I think the original reason for using drm_info is because we are
> outside the GT. But, because the engine belongs to the GT, it
> makes also sense to use gt_info(), I don't oppose.
>
> It would make more sense to move this function completely into
> gt/.

Can we converge on the patch instead of diverge, please?

It's a Cc: stable null pointer dereference fix.

It's already been iterated for two weeks to reach v6.

Fix the comment typo while applying, but there's nothing inherently
wrong here AFAICT. Merge it and move on.


BR,
Jani.


-- 
Jani Nikula, Intel
