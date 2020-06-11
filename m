Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D86A1F67E7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 14:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828EF6E157;
	Thu, 11 Jun 2020 12:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8AAF6E157
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 12:34:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21464490-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 13:34:30 +0100
MIME-Version: 1.0
In-Reply-To: <20200611123038.91855-1-chris@chris-wilson.co.uk>
References: <20200611123038.91855-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <159187886883.1506.13319708113042548833@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 11 Jun 2020 13:34:28 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/vblank: Estimate sample time
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

Quoting Chris Wilson (2020-06-11 13:30:37)
> Since we have a precise start/end time for the sample, the actual time
> the HW was read back is within that interval, and more likely closer to
> the mean of the interval. Use the mean sample time when estimating the
> vblank time.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/drm_vblank.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index da7b0b0c1090..79a5461d3773 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -710,15 +710,18 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
>         delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
>                            mode->crtc_clock);
>  
> +       /* Estimate when the sample was taken */
> +       stime += (etime - stime) >> 2;

/2 != >>2
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
