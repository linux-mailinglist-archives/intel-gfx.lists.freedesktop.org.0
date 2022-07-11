Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B55D56D48D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 08:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3A718BDD9;
	Mon, 11 Jul 2022 06:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4A318BDD9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 06:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657520217; x=1689056217;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rpdQGaE/h8/FLkg7ExDv3PFC8ha4i5JevyICtJWs55E=;
 b=Wo7Lz7FcttQYjZsZKV9cC+fyspXeEIRmzQCT1DFbfPFNmwrl5C0bo3kk
 p3CA9U6ZoBI8xr8kqogeuwOCueDMECtrl+7NKPeYvgXVrjryODMcYe01v
 zjTT/6wUa8WRwNB8B1QQxxlX0T7I1NW3OkwMTdeJbYLLaXTq1huckQFcy
 Q/XIZhSp152janAicM1Mgscbe7UIb0yKSVo/ljl+DeNMHK/SLHhpoOuN2
 REgAegqXOyPfwK7lJcAFhjLcB6zKqxK71U4B/bw+bwV9SpYYqBJ/JCg4b
 TlBxMhQOPSh9RiwKCyb+hWCoQg0EWIaub6ndedj2N4CT/eCWVg4PwrC7Y A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="283338821"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="283338821"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 23:16:57 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="652326602"
Received: from danm1-mobl.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.252.36.51])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 23:16:55 -0700
Date: Mon, 11 Jul 2022 08:16:52 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20220711081652.50320e1a@maurocar-mobl2>
In-Reply-To: <Ysg/Vm0fFP7FRTGO@intel.com>
References: <cover.1656921701.git.mchehab@kernel.org>
 <165720527748.2212.6401442843277981281@emeril.freedesktop.org>
 <Ysg/Vm0fFP7FRTGO@intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Fix_TLB_invalidate_issues_with_Broadwell_=28rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 8 Jul 2022 10:29:42 -0400
Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> On Thu, Jul 07, 2022 at 02:47:57PM -0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Fix TLB invalidate issues with Broadwell (rev4)
> > URL   : https://patchwork.freedesktop.org/series/105167/
> > State : warning
> > 
> > == Summary ==
> > 
> > Error: dim sparse failed
> > Sparse version: v0.6.2
> > Fast mode used, each commit won't be checked separately.
> > -
> > +drivers/gpu/drm/i915/gt/intel_reset.c:1410:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block  
> 
> I believe this is a false positive, but worth double checking...

It is. Sparse usually complains when it sees patterns like:

foo_lock()
{
	some_lock();
}

foo_unlock()
{
	some_unlock();
}

as this is not easy for it to check. It even complains when there are multiple
unlocks at the same function. From my experiences, the only pattern that would
shut up such kind of warning is something like:

some_function()
{

	some_lock();

	...
	if(err)
		goto unlock;
	...

unlock:
	some_unlock();
}

with just one lock and just one unlock call, both at the same function.

-

Besides that, in this specific case, intel_gt_reset_trylock() internally
calls:

	*srcu = srcu_read_lock(&gt->reset.backoff_srcu);

and intel_gt_reset_unlock() is an alias for:

	        srcu_read_unlock(&gt->reset.backoff_srcu, tag);

Now, I've no idea why this warning was shown by the bot, as none of the
patches touch nor add new calls to intel_gt_reset_* functions.

It sounds to me that the bot is just printing an already-existing false
positive.

Regards,
Mauro
