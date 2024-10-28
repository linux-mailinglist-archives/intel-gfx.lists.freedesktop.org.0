Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0F19B30CA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:46:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A8410E49A;
	Mon, 28 Oct 2024 12:46:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjleNgy1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3002010E49A
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 12:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730119610; x=1761655610;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WjuqeI7umeZV88J8AmCVxehPhoD7UuBO+dK+LaBasFw=;
 b=NjleNgy1UpwGS8U73oWhDXFKvjI66XjOZ1c7TXDg+uRYz8VGq/NaSieq
 pZ5kodIConUItHsSwj2/g/3l72KroZHTWQ+QAthpF2XXOJ3BWDDcAr2Ds
 00HViNEnkI8lbEMp1F7rBR/IdnQH5aSnutVqqSlvstgK1xkCXp9lLAZIB
 2dGrkWSRU3ZCyBFTAQimKxFcNi9SpchheZUbkUQ26qCL74cN/RRgzOodH
 8qStfSGVotEEV3MmkrTao5jQlIp5L2ZyVAVUHaPZ5IQTUnPr460YXeZt/
 Bsqk3ASjjNbcy0S9BenPQ5uuiuS8RGPKwaMZNeHO1kTj2tezFrJv5/0F6 Q==;
X-CSE-ConnectionGUID: HWJPviInTXG4Zml1ODw1+Q==
X-CSE-MsgGUID: K44Rv35nTBCBFd8NBLiRmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="17347494"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="17347494"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:46:49 -0700
X-CSE-ConnectionGUID: MhwnNG5QQ9i+r8fv5r/d9Q==
X-CSE-MsgGUID: dksqacScQl+ziOtM7mCPlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81533247"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.245.177.235])
 ([10.245.177.235])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:46:47 -0700
Message-ID: <c9698218-0c2f-498f-afb1-def41c42f603@linux.intel.com>
Date: Mon, 28 Oct 2024 13:46:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/xe: Accumulate exec queue timestamp on destroy
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20241026062658.28060-1-lucas.demarchi@intel.com>
 <20241026062658.28060-3-lucas.demarchi@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20241026062658.28060-3-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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


On 10/26/2024 8:26 AM, Lucas De Marchi wrote:
> When the exec queue is destroyed, there's a race between a query to the
> fdinfo and the exec queue value being updated: after the destroy ioctl,
> if the fdinfo is queried before a call to guc_exec_queue_free_job(),
> the wrong utilization is reported: it's not accumulated on the query
> since the queue was removed from the array, and the value wasn't updated
> yet by the free_job().
>
> Explicitly accumulate the engine utilization so the right value is
> visible after the ioctl return.
>
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2667
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

LGTM

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_exec_queue.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
> index d098d2dd1b2d..b15ca84b2422 100644
> --- a/drivers/gpu/drm/xe/xe_exec_queue.c
> +++ b/drivers/gpu/drm/xe/xe_exec_queue.c
> @@ -829,6 +829,14 @@ int xe_exec_queue_destroy_ioctl(struct drm_device *dev, void *data,
>  
>  	xe_exec_queue_kill(q);
>  
> +	/*
> +	 * After killing and destroying the exec queue, make sure userspace has
> +	 * an updated view of the run ticks, regardless if this was the last
> +	 * ref: since the exec queue is removed from xef->exec_queue.xa, a
> +	 * query to fdinfo after this returns could not account for this load.
> +	 */
> +	xe_exec_queue_update_run_ticks(q);
> +
>  	trace_xe_exec_queue_close(q);
>  	xe_exec_queue_put(q);
>  
