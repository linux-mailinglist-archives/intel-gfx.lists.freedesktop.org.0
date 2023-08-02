Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B37976C63E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 09:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235EB10E4C6;
	Wed,  2 Aug 2023 07:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FA210E4C6
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 07:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690960535; x=1722496535;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pDDk2YN0RLay4mCclIoRerNGh7R96Ih8k73L2J4Mwds=;
 b=ZLxGpZusaRZU3yVmiZak9zhKIWAC1iraZJaaqgRFLdGT2q/SALbdv2gQ
 zl9OFf6XgXKVHRg/KZWW5+V3uRFdXDY4HXbehbFy0saOxf4k3y/wJRFmT
 HvWYYVu1boaQoyD1x/6xSTEt7uAi62sTcqiqNdwUpttFEPnZUnbfyY+TQ
 d0Rm0QXNRJ73MC9Zz6BGNXnLW71dRPckRH1p+6y6Aye9pRkRKH7b4v0Er
 c3RhHTZHO1YJoK4LHqdHBcNXPeikbDixDUamVSq96HLsL/2mNhr0h+giC
 hh3WULMuZH378Wv6AgByh1fQRiiGg8EMYiXzszUS6jn17wp5klANYFBsg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359544220"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="359544220"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:14:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="902885494"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="902885494"
Received: from osalyk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.215])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:14:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1690886109.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1690886109.git.jani.nikula@intel.com>
Date: Wed, 02 Aug 2023 10:14:54 +0300
Message-ID: <873511x6dt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RESEND 0/2] drm/i915/uncore: unclaimed reg debug
 race fix
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

On Tue, 01 Aug 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> Resend of the first two patches of [1], dropping the third.

Pushed to din.

>
> BR,
> Jani.
>
> [1] https://patchwork.freedesktop.org/series/120167/
>
> Jani Nikula (2):
>   drm/i915/uncore: split unclaimed_reg_debug() to header and footer
>   drm/i915/uncore: fix race around i915->params.mmio_debug
>
>  drivers/gpu/drm/i915/intel_uncore.c | 44 ++++++++++++++++++-----------
>  1 file changed, 27 insertions(+), 17 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
