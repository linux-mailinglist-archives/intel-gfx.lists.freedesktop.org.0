Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB68FA0433E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD1A10E6F4;
	Tue,  7 Jan 2025 14:52:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=treblig.org header.i=@treblig.org header.b="hFwyC48X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C8110E12B;
 Sun, 22 Dec 2024 00:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
 :Subject; bh=RnU6XLxYBBM8BL1GSxNw+lmx1Sy99gdpA24uyHvGsiI=; b=hFwyC48XhtsOMH4B
 z6izJK+jsnuALtzePHo3S3QsXjqHq1XhwO02jDYwjN1+NQOIXvHJY54d0UcCbJ3rtKI3H4+ze8lhG
 n5jDr+wjKRyRZxTfwzQrafb6iRXwhV6jjeS52Wx6wRNnaoqj4xjy2RXIpcI0K0BI2ZYwfKEBjURGp
 rBEIZRXB1VBxggtlsdlxy1Fc4kvYLRoEv4jqMxwr2NfkQDarrz/IQSgj+FPOMwJt1znnlfGqAy3yl
 sRaWDUixfFSkSZoBpdPLmbgep/AaDJ8SfffMNSd463NojK1nObHI90rKsB6BQBmJWQXeeeyUceIuT
 bnnkTBiB0RiyXol7cg==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1tP9mP-006ie5-07;
 Sun, 22 Dec 2024 00:25:09 +0000
Date: Sun, 22 Dec 2024 00:25:09 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: zhi.wang.linux@gmail.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tursulin@ursulin.net, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] drm/i915/gvt: Deadcoding
Message-ID: <Z2dcZfW8eNMnxT0v@gallifrey>
References: <20241222002043.173080-1-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20241222002043.173080-1-linux@treblig.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 00:24:25 up 227 days, 11:38,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Mailman-Approved-At: Tue, 07 Jan 2025 14:52:08 +0000
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

Note: zhenyuw@linux.intel.com's address bounces:

> The following message to <zhenyuw@linux.intel.com> was undeliverable.
> The reason for the problem:
> 5.1.0 - Unknown address error 550-'5.1.1 <zhenyuw@linux.intel.com>: Recipient address rejected: User unknown in
+virtual mailbox table'

* linux@treblig.org (linux@treblig.org) wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> Remove a bunch of long unused functions from
> the gvt code.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> 
> 
> Dr. David Alan Gilbert (3):
>   drm/i915/gvt: Remove intel_gvt_ggtt_h2g<->index
>   drm/i915/gvt: Remove unused intel_vgpu_decode_sprite_plane
>   drm/i915/gvt: Remove unused intel_gvt_in_force_nonpriv_whitelist
> 
>  drivers/gpu/drm/i915/gvt/fb_decoder.c | 117 --------------------------
>  drivers/gpu/drm/i915/gvt/fb_decoder.h |   2 -
>  drivers/gpu/drm/i915/gvt/gtt.c        |  66 ---------------
>  drivers/gpu/drm/i915/gvt/gvt.h        |   6 --
>  drivers/gpu/drm/i915/gvt/handlers.c   |  17 ----
>  drivers/gpu/drm/i915/gvt/mmio.h       |   3 -
>  6 files changed, 211 deletions(-)
> 
> -- 
> 2.47.1
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
