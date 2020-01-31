Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E162B14EA7E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 11:12:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7636FAE0;
	Fri, 31 Jan 2020 10:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE8C86FAE0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 10:12:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 02:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="262499613"
Received: from adlugosz-mobl1.ger.corp.intel.com (HELO [10.252.51.231])
 ([10.252.51.231])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2020 02:12:37 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200130115827.1855959-1-chris@chris-wilson.co.uk>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ae3af0ea-d33e-8379-4f81-4b0268253ea7@linux.intel.com>
Date: Fri, 31 Jan 2020 11:12:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130115827.1855959-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Warn about the hidden
 i915_vma_pin in timeline_get_seqno
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 30-01-2020 om 12:58 schreef Chris Wilson:
> On seqno rollover, we need to allocate ourselves a new cacheline. This
> might incur grabbing a new page and pinning it into the GGTT, with some
> rather unfortunate lockdep implications.
>
> To avoid a mutex, and more specifically pinning in the GGTT from inside
> the kernel context being used to flush the GGTT in emergencies, we will
> likely need to lift the next-cacheline allocation to a pre-reservation.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_timeline.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 465f87b65901..54e1e55f3c81 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -406,6 +406,8 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
>  	void *vaddr;
>  	int err;
>  
> +	might_lock(&tl->gt->ggtt->vm.mutex);
> +
>  	/*
>  	 * If there is an outstanding GPU reference to this cacheline,
>  	 * such as it being sampled by a HW semaphore on another timeline,

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

If this breaks on lockdep, it was already broken.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
