Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538F4232F33
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949C06E896;
	Thu, 30 Jul 2020 09:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F406E896
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:08:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21978675-1500050 for multiple; Thu, 30 Jul 2020 10:08:19 +0100
MIME-Version: 1.0
In-Reply-To: <20200730004826.8415-7-umesh.nerlige.ramappa@intel.com>
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
 <20200730004826.8415-7-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:08:17 +0100
Message-ID: <159610009765.13987.16960661671070751759@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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

Quoting Umesh Nerlige Ramappa (2020-07-30 01:48:26)
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 00546062e023..36f6b9799ecd 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2048,6 +2048,22 @@ struct drm_i915_perf_open_param {
>   */
>  #define I915_PERF_IOCTL_CONFIG _IO('i', 0x2)
>  
> +/**
> + * Returns OA buffer properties to be used with mmap.
> + *
> + * This ioctl is available in perf revision 8.
> + */
> +#define I915_PERF_IOCTL_GET_OA_BUFFER_INFO _IO('i', 0x3)

This should be _IORW iirc.

> +
> +/**
> + * OA buffer size and offset.
> + */
> +struct drm_i915_perf_oa_buffer_info {
> +       __u32 size;
> +       __u32 offset;
> +       __u64 reserved[4];

5xu64? Might as well just trim it to 4xu64. Unless you have a reason for
a large reserved, we can always extend the struct later (or replace it
with a new ioctl).

However, I would suggest {
	u32 type;  /* in */
	u32 flags; /* in */
	u64 size;   /* out */
	u64 offset; /* out */
	u64 rsvd; /* mbz */
};

Oh, and don't forget to check all unused members are 0.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
