Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BDA691966
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 08:53:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FECD10EC7E;
	Fri, 10 Feb 2023 07:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B0B10EC7B;
 Fri, 10 Feb 2023 07:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676015600; x=1707551600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zY3Y693tnqM9dbbmpsVLpRqKjGGNiCV8ITWlaerqIo=;
 b=hbEOYuRQOH4Z4sHCXHSgj3BYgZVTIByAg5d+6mksTFo3P7tifsJyTdSs
 h5nfkhIqq/kIsETL5yidnCNy4fcpGlSdPs6UZoTpcKQ/ApFU8BOs8d8DR
 UX+J5ZWiQfwlOsVK9nmZ7d/QYUyUWXdvo/v8lhjZVs4nK0W/UtgS3Lzjs
 pcgDWxf6Q/T9nSLXHLWeQlFso2R9vtSWd8PzaM7H9/YDeAiPeWZEooIuw
 llqeZyFwfcqI0pJ86Qz+RveP1NbN7i6Yj2HoJhoV2XxDXNvyNOUjwSkrb
 nRnGWgWn7hFCHIo4XqacwtK8ewQplzOIz44VAnslgElxvjBPMv7GDIeeQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="318378173"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="318378173"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 23:53:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="667961787"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="667961787"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.0.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 23:53:15 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 10 Feb 2023 08:53:12 +0100
Message-ID: <38094681.10thIPus4b@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 0/1] tests/i915/perf: Add stress /
 race exercises
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thursday, 9 February 2023 12:50:38 CET Janusz Krzysztofik wrote:
> Users reported oopses on list corruptions when using i915 perf with a
> number of concurrently running graphics applications.  That indicates we
> are currently missing some important tests for such scenarios.  Cover
> that gap.
> 
> v2: drop open-race subtest for now, not capable of triggering the user
>     reported bug, but triggering other bugs which I can't see any fixes
>     for queued yet,
>   - move the other new subtest out of tests/i915/perf.c (Ashutosh).
> 
> Janusz Krzysztofik (1):
>   tests/gem_ctx_exec: Exercise barrier race

While still waiting for CI results (BAT results don't cover the new subtest) 
I've collected results from a forced execution of the subtest in BAT scope on 
trybot: https://patchwork.freedesktop.org/series/113608/#rev2

While working as expected on most platforms, the test failed on some ancient 
ones instead of skipping.  I've fixed this issue and tested the fix 
successfully on trybot: https://patchwork.freedesktop.org/series/113608/#rev3

I'm still waiting for your comments, if any, before I submit the fixed 
version.

Thanks,
Janusz

> 
>  tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
>  tests/meson.build         |   9 ++-
>  2 files changed, 131 insertions(+), 1 deletion(-)
> 
> 




