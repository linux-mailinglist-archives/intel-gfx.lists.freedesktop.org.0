Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAB0217BB6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 01:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88CF6E845;
	Tue,  7 Jul 2020 23:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52BE46E846
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 23:32:51 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D38A9293;
 Wed,  8 Jul 2020 01:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1594164766;
 bh=RaN1EJVQ4TlUXI6YSRQb0LXPVQUmoZLcSSe0eQOa5RE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ntIlaP38YOK/L6NfIV4/FNRQb7dI1CQrazAbuW0JLqnMcgGUFs1kt1G37UOqup/jA
 yAPyLGxmF26IAPkLi1KfRI3mgSUObskV86in3pVpgDQEPLipkHM0JABQdrbcls7j8l
 sMLxwqvLY5q7MnrPA3bMpxfhFGp2rPNBU5UpdGbA=
Date: Wed, 8 Jul 2020 02:32:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200707233240.GR19803@pendragon.ideasonboard.com>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-13-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707201229.472834-13-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 12/25] drm/rcar-du: Annotate dma-fence
 critical section in commit path
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
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniel,

Thank you for the patch.

On Tue, Jul 07, 2020 at 10:12:16PM +0200, Daniel Vetter wrote:
> Ends right after drm_atomic_helper_commit_hw_done(), absolutely
> nothing fancy going on here.

Just looking at this patch and the commit message, I have no idea what
this does, and why. It would be nice to expand the commit message to
give some more context, and especially explain why ending signalling
right after drm_atomic_helper_commit_hw_done() is the right option.

I suppose I'll have to check the whole series in the meantime :-)

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> Cc: linux-renesas-soc@vger.kernel.org
> ---
>  drivers/gpu/drm/rcar-du/rcar_du_kms.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_kms.c b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
> index 482329102f19..42c5dc588435 100644
> --- a/drivers/gpu/drm/rcar-du/rcar_du_kms.c
> +++ b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
> @@ -391,6 +391,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
>  	struct drm_crtc_state *crtc_state;
>  	struct drm_crtc *crtc;
>  	unsigned int i;
> +	bool fence_cookie = dma_fence_begin_signalling();

Can this be moved right before the
drm_atomic_helper_commit_modeset_disables() call ?

>  
>  	/*
>  	 * Store RGB routing to DPAD0 and DPAD1, the hardware will be configured
> @@ -417,6 +418,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
>  	drm_atomic_helper_commit_modeset_enables(dev, old_state);
>  
>  	drm_atomic_helper_commit_hw_done(old_state);
> +	dma_fence_end_signalling(fence_cookie);
>  	drm_atomic_helper_wait_for_flip_done(dev, old_state);
>  
>  	drm_atomic_helper_cleanup_planes(dev, old_state);

-- 
Regards,

Laurent Pinchart
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
