Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57247B17097
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 13:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7316710E780;
	Thu, 31 Jul 2025 11:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+QWpsrb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61EF10E780
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 11:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753962664; x=1785498664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bkbf0B/g8xKT8zwBMkiW5rjmYWgCE8n9hIgVeX/mDe4=;
 b=R+QWpsrbZlkJuKEowaw0P9m38LlR3ehe4ixA9eZfpTxYlAto5mHk78bx
 2zzK+72Sj5k0yPqk1X2EH3JcVj/TCBgQh1LU/w+SiI0IG4o+4UmDenMUx
 /vbqErL8/XGje+7YqvFvaMzfsrUzhm351hKZbTvmg1mxbvQA9N5axZLlW
 FWaIvYhHKko88B8zCFpL1YyG5fgyMianmNkJ00h0nCcoagJoW0qNfi7c7
 0qP57JnUGvcX//YVeWR+hPVn5dX9+dlQB1gDQOVxdqfqon/pjlifnN/7L
 2+MkYGWL/NO0TUetOF9p2p6LU6RlZV6qrdILTCBRHuUgNPbS1Dbi7toWu Q==;
X-CSE-ConnectionGUID: 5CGhi2VbSU6PcEOlZcUQgw==
X-CSE-MsgGUID: uDFglLXUSpGoGkqv8NOt1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56149020"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="56149020"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:51:04 -0700
X-CSE-ConnectionGUID: 5LDwG+kwQZqsVP7/ycJa1w==
X-CSE-MsgGUID: aCobxRt5S7a9CK9SoEstjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="162829036"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.249])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:51:01 -0700
Date: Thu, 31 Jul 2025 13:50:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/selftests: Do not leak vm_area_struct on
 early return
Message-ID: <aItYo4Tplir6z-fO@ashyti-mobl2.lan>
References: <cover.1753859971.git.krzysztof.karas@intel.com>
 <d8277e3af09c388fa5dfbf5c9bb3985ae0b191a2.1753859971.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8277e3af09c388fa5dfbf5c9bb3985ae0b191a2.1753859971.git.krzysztof.karas@intel.com>
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

Hi Krzysztof,

On Wed, Jul 30, 2025 at 07:40:18AM +0000, Krzysztof Karas wrote:
> This structure may be leaked on early failure paths, so include
> vm_munmap() call in them to avoid that.

this commit message says nothing:

 - which structure?
 - where does it leak?
 - "in them" where?
 - "avoid that" what?

You should consider that the person who reads the commit message
doesn't know anything on what you are doing and he should be able
to understand without reading the commit itself.

Reading the commit is necessary to understand the details of
what's explained in the message.

No need to resend, but please reply to this email with a proper
commit log.

> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Anyway, the patch is good:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
