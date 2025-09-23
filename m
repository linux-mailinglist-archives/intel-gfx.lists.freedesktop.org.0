Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1AB978B3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 23:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4291010E1B6;
	Tue, 23 Sep 2025 21:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="l/lO+62i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784FB10E1B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 21:00:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1B16043EB9;
 Tue, 23 Sep 2025 21:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B72BC4CEF5;
 Tue, 23 Sep 2025 21:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758661230;
 bh=qRSYwN/DcJ3q0X3T/x+DFhEa6MCRY2/XQIMLtXa91tU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l/lO+62ij6pkcbWnPhyBCnu8/sIuz2ZImyLgkjwa9WaFo5Hx+hGvznOZsPJWBrCfI
 q6rnCmNdHM90hq9v3FupkiG89XZF9GDjys3NW+owLoHNJ9HtttWARJZxRIj3ajexHl
 bwZ4vP03vnCry3j/fnRmG6SyNGifGEPP9iBCheSHto/POv+2iWU1UeeRQxRB3f34/6
 n3xU0fBVsi8NpD4QMthv1Fa1TMkd5oyrX6fRGTvER9J6MltloR6MDWElW0ytdCKy0N
 YtpD/OOOQt7sEjsW7+j6ZnpzOyk3xaeFeEgjdBm1BWMYX8P+ahmQlnCJ9A2k7gHyyl
 nolbpJymbTgLA==
Date: Tue, 23 Sep 2025 23:00:26 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Message-ID: <4dhrlott2fhqpqtk5p4k27hgrji4lt53w25mnpjy5kx3zzj63n@s6ctnbm2mpb4>
References: <20250919205740.77847-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919205740.77847-2-jonathan.cavitt@intel.com>
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

Hi Jonathan,

...

> @@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
>  		if (copy_from_user(&hdr, (void __user *)arg, minsz))
>  			return -EFAULT;
>  
> +		if (hweight32(hdr.flags & VFIO_IRQ_SET_DATA_TYPE_MASK) != 1 ||
> +		    hweight32(hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) != 1)

How about using:

    if (!is_power_of_2(...) ||
        !is_power_of_2(...))

The rest looks good.

Andi

> +			return -EINVAL;
