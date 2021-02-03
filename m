Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4CC30D6E0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBEC6EA42;
	Wed,  3 Feb 2021 09:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C846EA3F;
 Wed,  3 Feb 2021 09:59:21 +0000 (UTC)
IronPort-SDR: NK6+KBbGi1l+Ez6lOIzaMPtTvut7NklTEHoXk0wemLVI0IEV0unO97jiWccBfiovlKLvNLBkcr
 /1bkHlJP7kDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="242527545"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="242527545"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 01:59:20 -0800
IronPort-SDR: NG5291++Cy2sMhSE2A0mYKI6OjVjRQ5A4gDkciiNYzDqWzZK0bV3BH4IDj8W535b+z8uS/K21f
 3hj0Ex324kQw==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="392362970"
Received: from mkrygin-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.54.163])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 01:59:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
In-Reply-To: <20210203070241.657dfd46@canb.auug.org.au>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210203070241.657dfd46@canb.auug.org.au>
Date: Wed, 03 Feb 2021 11:59:14 +0200
Message-ID: <87lfc5fp59.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] linux-next: Signed-off-by missing for commit in the
 drm-intel-fixes tree
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 03 Feb 2021, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi all,
>
> Commit
>
>   44c5bd08518c ("*** HAX FOR CI *** Revert "rtc: mc146818: Detect and handle broken RTCs"")
>
> is missing a Signed-off-by from its author and committer.
>
> Reverts are commits as well.

It's a hack on top of the tree to unblock CI results, and will be
dropped before sending the pull request.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
