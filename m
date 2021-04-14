Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BF735F116
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF6A6E90E;
	Wed, 14 Apr 2021 09:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F3A6E90E
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:54:35 +0000 (UTC)
IronPort-SDR: 1FYiEySN5UsD9qwyhYdspXG09ilcgkZtrBBsDl9c7FoRRfjOSV0QrPOSrrP7xa5b2gkVRcmYFq
 bFj5k90Y9M8A==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="258572386"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="258572386"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:54:34 -0700
IronPort-SDR: ADfy5vrBZuzHgGb/gDEqI/0L/R7OjBx8VxAxzb+9kgdwrpuCMqzlREpjxkKk9ko00uvw31ivYx
 2xVdMvvXymUQ==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="615240173"
Received: from mbernato-z370.igk.intel.com ([10.102.30.7])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:54:33 -0700
Message-ID: <1c13a2bc9541f976852ad734439943d1e7003c2b.camel@linux.intel.com>
From: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 igt-dev@lists.freedesktop.oef
Date: Wed, 14 Apr 2021 09:52:18 +0000
In-Reply-To: <20210408083009.22860-2-janusz.krzysztofik@linux.intel.com>
References: <20210408083009.22860-1-janusz.krzysztofik@linux.intel.com>
 <20210408083009.22860-2-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] intel-ci: Unblock
 core_hotunplug@*hot*bind* subtests
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2021-04-08 at 10:30 +0200, Janusz Krzysztofik wrote:
> Commit be529747d8ea ("intel-ci: Broaden core_hotunplug blacklist")
> blamed issues triggered by hot variants[*] as responsible for random
> failures in subsequently executed tests,
> 
> According to the issue history[*], last reported occurrences were
> not related to core_hotunplug.  Remove *hot*bind* subtests from CI
> blocklist.
> 
> [*] https://gitlab.freedesktop.org/drm/intel/-/issues/2644.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
> >
> ---
>  tests/intel-ci/blacklist.txt | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-
> ci/blacklist.txt
> index 33f92e37f..595fd0ca6 100644
> --- a/tests/intel-ci/blacklist.txt
> +++ b/tests/intel-ci/blacklist.txt
> @@ -112,10 +112,10 @@ igt@.*@.*pipe-f($|-.*)
>  # Temporary workarounds for CI-impacting bugs
>  ###############################################
>  
> -# Currently fails and leaves the machine in a very bad state, and
> -# causes coverage loss for other tests. IOMMU related.
> -# https://gitlab.freedesktop.org/drm/intel/-/issues/2644
> -igt@core_hotunplug@.*(hot|plug).*
> +# *plug* subtests still fail and leave the
> +# machine in a very bad state, causing coverage
> +# loss for other tests.  IOMMU related.
> +igt@core_hotunplug@.*plug.*

LGTM,
Acked-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>

>  
>  # hangs several gens of hosts, and has no immediate fix
>  igt@device_reset@reset-bound

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
