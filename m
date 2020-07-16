Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C392220F2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 12:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4C889D44;
	Thu, 16 Jul 2020 10:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5FDF89D44
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 10:52:47 +0000 (UTC)
IronPort-SDR: 9vALscAhjMnYKVbV+uiMz31drvLsHWGc6UJVYAsneLyzvYv+/ZH3XRYssFret692Y5crDPUUcg
 CGO1msfmeO4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="146867492"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="146867492"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 03:52:47 -0700
IronPort-SDR: 3vr6nWLD95Acxk9RYVvirSfnUKMZsHyJsH6oYF6NCCE+tfB9XA1bkN5bYxRqu8CzCNfzlU97em
 4uTfFedUvg0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="361007489"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 16 Jul 2020 03:52:45 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B133D5C0D7C; Thu, 16 Jul 2020 13:52:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200715155858.16410-1-chris@chris-wilson.co.uk>
References: <20200715155858.16410-1-chris@chris-wilson.co.uk>
Date: Thu, 16 Jul 2020 13:52:22 +0300
Message-ID: <87eepb3f6h.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Mock the
 status_page.vma for the kernel_context
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since we assert that the kernel_context is using the perma-pinned HWSP,
> make it so.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/mock_engine.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> index b8dd3cbc8696..06303ba98c19 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -332,6 +332,9 @@ int mock_engine_init(struct intel_engine_cs *engine)
>  	if (IS_ERR(ce))
>  		goto err_breadcrumbs;
>  
> +	/* We insist the kernel context is using the status_page */
> +	engine->status_page.vma = ce->timeline->hwsp_ggtt;
> +
>  	engine->kernel_context = ce;
>  	return 0;
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
