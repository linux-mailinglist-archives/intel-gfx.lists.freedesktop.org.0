Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 152AD1CD5A7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DAF6E424;
	Mon, 11 May 2020 09:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2156E424;
 Mon, 11 May 2020 09:49:13 +0000 (UTC)
IronPort-SDR: 7bh9hY+5yPEe7iVi+TFIPQ5p2B7Qg6TmTJq1bdqIulMSdpa2j1Li0QNNvDxY0TwzbKTp7PAdh5
 Pqz5KrUP12EA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 02:49:12 -0700
IronPort-SDR: 4S3RP8ogvVU2zJofBWq2tcbWc1OejE1kiTaJ+QbkBDaIu3LyPZuw9VuIBexZl6wb6g0+hypaRb
 +6NdoTMxTEQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="463327382"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga006.fm.intel.com with ESMTP; 11 May 2020 02:49:11 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jY53e-0001Xo-TY; Mon, 11 May 2020 12:49:10 +0300
Date: Mon, 11 May 2020 12:49:10 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200511094910.GE9497@platvala-desk.ger.corp.intel.com>
References: <20200511082141.65494-1-chris@chris-wilson.co.uk>
 <20200511093924.65748-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511093924.65748-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ringfill: Do a basic pass
 over all engines simultaneously
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 11, 2020 at 10:39:24AM +0100, Chris Wilson wrote:
> Change the basic pre-mergetest to do a single pass over all engines
> simultaneously. This should take no longer than checking a single
> engine, while providing just the right amount of stress regardless of
> machine size.
> 
> v2: Move around the quiescence and requires to avoid calling them from
> the children.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Petri Latvala <petri.latvala@intel.com>
> ---
>  tests/i915/gem_ringfill.c             | 31 ++++++++++++++++++++-------
>  tests/intel-ci/fast-feedback.testlist |  2 +-
>  2 files changed, 24 insertions(+), 9 deletions(-)
> 
> diff --git a/tests/i915/gem_ringfill.c b/tests/i915/gem_ringfill.c
> index a2157bd6f..05b997ed4 100644
> --- a/tests/i915/gem_ringfill.c
> +++ b/tests/i915/gem_ringfill.c
> @@ -178,13 +178,11 @@ static void run_test(int fd, unsigned ring, unsigned flags, unsigned timeout)
>  	struct drm_i915_gem_execbuffer2 execbuf;
>  	igt_hang_t hang;
>  
> -	gem_require_ring(fd, ring);
> -	igt_require(gem_can_store_dword(fd, ring));
> -
> -	if (flags & (SUSPEND | HIBERNATE))
> +	if (flags & (SUSPEND | HIBERNATE)) {
>  		run_test(fd, ring, 0, 0);
> +		gem_quiescent_gpu(fd);
> +	}
>  
> -	gem_quiescent_gpu(fd);
>  	igt_require(setup_execbuf(fd, &execbuf, obj, reloc, ring) == 0);

What about this one?


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
