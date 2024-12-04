Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0400D9E377B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C8D10E085;
	Wed,  4 Dec 2024 10:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NivLQqTw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4878110E085
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 10:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733308361; x=1764844361;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OLoUPjBgCdDsMMwtWaFtL6apVxOZyumCKfzBGuwQTvI=;
 b=NivLQqTwG17wpaR+LeROlZlgtzPAiG/omACMdywlQNIsaCH4Pr1btQgU
 jC+9NidiM5Fw7ApMS2g9i6l/AP50prFxjvXtq5iH6+VvvQhwAZRwEeV5J
 bxtvNvOLhcFkA7ZsKnpMXBKj1GsWTkPbUYHe6eaAShATBQXnw5qvyF5tq
 YUwUrDeRefDTraN0Ns/AdJJx40RyTcCoYqj56bW95Zhe0loDErgF/jfZn
 yM3zEBhJQV0i3p2D6qT4x/ahbH6EJBid+k7VNDaK1wyKgSDwTkXBwtqB/
 e8ypVyxQjZ+DFQBWL1ZPKyOe62baiPeug8qA+uvntl6bEhQLrJ0CL/pSp w==;
X-CSE-ConnectionGUID: O5IU4GcPTXmcLxHNMe+ukg==
X-CSE-MsgGUID: lyHLaPuST1ujDUaMnWWA9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44177505"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44177505"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:32:41 -0800
X-CSE-ConnectionGUID: igVmwB1QQO62SIyFnDRerQ==
X-CSE-MsgGUID: fZ+m8N5MQcmaHTBhsu0gzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93812257"
Received: from slindbla-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.225])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:32:38 -0800
Date: Wed, 4 Dec 2024 11:32:35 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Eugene Kobyak <eugene.kobyak@intel.com>,
 intel-gfx@lists.freedesktop.org, John.C.Harrison@intel.com,
 andi.shyti@linux.intel.com, jani.nikula@linux.intel.com,
 stable@vger.kernel.org
Subject: Re: [PATCH v6] drm/i915: Fix NULL pointer dereference in
 capture_engine
Message-ID: <Z1Avw4f93LlBULI2@ashyti-mobl2.lan>
References: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
 <053cc89a-0b20-4fb0-b93c-1e864a6b6f6a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <053cc89a-0b20-4fb0-b93c-1e864a6b6f6a@intel.com>
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

Hi Michal,

> > +	if (rq && !i915_request_started(rq)) {
> > +		/*
> > +		* We want to know also what is the gcu_id of the context,
> 
> typo: guc_id
> 
> > +		* but if we don't have the context reference, then skip
> > +		* printing it.
> > +		*/
> 
> but IMO this comment is redundant as it's quite obvious that without
> context pointer you can't print guc_id member

I recommended to add a comment because there is some code
redundancy that, I think, needs some explanation; someone might
not spot immediately the need for ce, unless goes a the end of
the drm_info parameter's list.

> > +		if (ce)
> > +			drm_info(&engine->gt->i915->drm,
> > +				"Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> > +				engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> > +		else
> > +			drm_info(&engine->gt->i915->drm,
> > +				"Got hung context on %s with active request %lld:%lld not yet started\n",
> > +				engine->name, rq->fence.context, rq->fence.seqno);
> 
> since you are touching drm_info() where we use engine->gt then maybe
> it's good time to switch to gt_info() to get better per-GT message?

I think the original reason for using drm_info is because we are
outside the GT. But, because the engine belongs to the GT, it
makes also sense to use gt_info(), I don't oppose.

It would make more sense to move this function completely into
gt/.

Thanks,
Andi
