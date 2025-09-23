Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B6FB97C02
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 00:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CE710E1F4;
	Tue, 23 Sep 2025 22:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="RsVTC6ai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A5B10E1F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 22:47:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BE444601D4;
 Tue, 23 Sep 2025 22:47:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E7F6C4CEF5;
 Tue, 23 Sep 2025 22:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758667648;
 bh=HWlNeFxbaIFt8tTzZ/RyP/TG/WOxy5nSzxKhCqYRVDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RsVTC6aiG8dHJDzE2MzuY+v/4gMGnQPUSu0QSaSm/eSKQe3fpJ9Gp2eQ0akzIoAwc
 ZtrKH1hYMGoKdqWE6yyG0tb2ZY78qraMNuDyENPRokpZFWcoQytN3ySy9REH1AI27Y
 ij58/CaDpip1vOJS5gY25i+BiC3qCAbBBXnxAbL9Tnyuq1NKpFsOdRhAH0EhQXera+
 gMsqVz567XE9uS58wtDAw7U+Fvqy/le3ERaChXfd7L2J7rXRBBTLyQXSM3xiKWaBSo
 uzAW/yN+rZtVmt+r1ADe6d17+DSttaJy7Y4Emjl7OGmoX3Qnu+j85192tI9i0X0U25
 ZYWdlux220S8w==
Date: Wed, 24 Sep 2025 00:47:24 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com, andi.shyti@linux.intel.com, zhenyuw.linux@gmail.com
Subject: Re: [PATCH v3] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Message-ID: <7gnxgl7ke53go7vefhkhqohwgu2qxisxxp56ml7x5veesybtuz@tcemwbyungui>
References: <20250923212332.112137-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923212332.112137-2-jonathan.cavitt@intel.com>
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

On Tue, Sep 23, 2025 at 09:23:33PM +0000, Jonathan Cavitt wrote:
> Add error handling for the following VFIO_DEVICE_SET_IRQS cases with
> respect to the hdr struct:
> 
> - More than one VFIO_IRQ_DATA_TYPE_MASK flag is set in hdr.flags
> - More than one VFIO_IRQ_ACTION_TYPE_MASK flag is set in hdr.flags
> - hdr.count is not specified
> 
> Note that since hdr.count != 0, data_size != 0 is guaranteed unless
> vfio_set_irqs_validate_and_prepare fails and returns an error.  So, we
> no longer need to check data_size before running memdup_user because
> checking the return value of the function is sufficient.
> 
> v2: Use correct name for mask
> 
> v3: Use is_power_of_2 over hweight32 as it's more efficient (Andi)

Thanks for sending v3. I was about to reply that I would rather
merge the patch as it is and adjust it later. A change like the
one I suggested should go through another CI test. Before merging
we should limit changes to comments, commit log and at most
minor coding style fixes.

> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
