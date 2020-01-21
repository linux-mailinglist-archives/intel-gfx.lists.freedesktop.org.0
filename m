Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2EC143EAF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 14:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729B96ECFE;
	Tue, 21 Jan 2020 13:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7DC6ECFE
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 13:56:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 05:56:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="307202625"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2020 05:56:42 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 307915C1DF9; Tue, 21 Jan 2020 15:56:01 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200121132107.267709-1-chris@chris-wilson.co.uk>
References: <20200121132107.267709-1-chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 15:56:01 +0200
Message-ID: <87iml4q5fy.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't show the blank process name
 for internal/simulated errors
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> For a simulated preemption reset, we don't populate the request and so
> do not fill in the guilty context name.
>
> [   79.991294] i915 0000:00:02.0: GPU HANG: ecode 9:1:e757fefe, in  [0]
>
> Just don't mention the empty string in the logs!
>
> Fixes: 742379c0c400 ("drm/i915: Start chopping up the GPU error capture")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 4c1836f0a991..594341e27a47 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1681,7 +1681,7 @@ static const char *error_msg(struct i915_gpu_coredump *error)
>  			"GPU HANG: ecode %d:%x:%08x",
>  			INTEL_GEN(error->i915), engines,
>  			generate_ecode(first));
> -	if (first) {
> +	if (first && first->context.pid) {

The dmesg line included saved me the trouble of seeing how the context
is primed, so:

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  		/* Just show the first executing process, more is confusing */
>  		len += scnprintf(error->error_msg + len,
>  				 sizeof(error->error_msg) - len,
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
