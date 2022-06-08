Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B5E54212F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 06:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E4A510E1D8;
	Wed,  8 Jun 2022 04:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F5210E1D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 04:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654663381; x=1686199381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hrY0wBZ2A94tYYq7YCs11GcPbu7USiciYAeCZrtacSs=;
 b=gLhopq/2XZAIonCj3z+/oXQ/VzeWGmm8enPAemszVx38gys5U9ee5swq
 pTQbgSuOgdLRHSUI9f2AXRSl45CgeZ/88L4lmKBccFhu8EHozY2Wae8w+
 GwT1FJTBXcfLsANxqIWmeJCQDjyX2kimfQhDbrB1y9u9ZQKrOpnBeIvHG
 vZdHUtx4zldSjNAp3F6D/21OXqMuOYMdRLDllk2FusOAwpgjqTBZu9043
 wTsANinkFqOVaD1hQ2dCSw+e+HZolC2D7K6nzOk6pyjX0iPNnWIQeSofG
 KwIm8MrDMAhyl7gZtNXhWqWqkNXj5oS8PQpNnwWYtwUur8mcL9waFBbjX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="302149634"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="302149634"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 21:43:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="584620325"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 21:43:01 -0700
Date: Tue, 7 Jun 2022 21:42:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqAo00KukVM07MOn@mdroper-desk1.amr.corp.intel.com>
References: <20220608005108.3717895-1-matthew.d.roper@intel.com>
 <165465589217.15586.17132703405857378240@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165465589217.15586.17132703405857378240@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_More_PVC+DG2_workarounds?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 08, 2022 at 02:38:12AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: More PVC+DG2 workarounds
> URL   : https://patchwork.freedesktop.org/series/104866/
> State : warning
> 
> == Summary ==
> 
> Error: dim sparse failed
> Sparse version: v0.6.2
> Fast mode used, each commit won't be checked separately.
> 

@Lakshmi, is there any way to get more details out of these Sparse
results that pop up sometimes?  When I run "dim sparse" locally (both
with and without --fast) I get success:

        Sparse version: 0.6.4
        Commit: drm/i915: More PVC+DG2 workarounds
        Okay!

and if I do it manually with "make C=1" I just see the handful of
pre-existing / expected warnings, nothing new from this patch.  Any
ideas what could be going on here?  Maybe some quirk of the older v0.6.2
version CI is running?


Matt

> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
