Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43602BA1CD9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 00:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101C610E2EA;
	Thu, 25 Sep 2025 22:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="WkO1XQMT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C0A10E2EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Sep 2025 22:34:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id CFAFB61286;
 Thu, 25 Sep 2025 22:34:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 221F7C4CEF0;
 Thu, 25 Sep 2025 22:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758839666;
 bh=P4A9eL4lSyNYDRcntAbk3yWhV7jVyYFaJyp2qmCKPt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WkO1XQMTs4oeAmhABiScYJTAJ3vDcl3b0+gm+gEi+VyXt/hx8i+qQLog4Y53YRU16
 3ZZjg9RLcvZqkiyCxDmhFe6eHPPdF3Yb8LOGCoNsiwrw6t1vqXWQI64ovODfK0Hp31
 ERGTZh79lNMWS8qVdDfiR0NeVGWEqwDluf6XUACUT8r59NaQO8z+AVvdXtscp/7W1h
 f65kY/wG6YNb8iI+UXBlYkzGZ6+rHExOLcIAL/RTUGZ+9/em5lJ9ipuOAnnlsNxNJ3
 8MqVs7jqsO6/IJrO/Xo3aL5lA/3QIwegJOkWMAy1fSZFhyGbCBqa6LzNx6E5Jdnrk4
 Gloj5UhKwgXYw==
Date: Fri, 26 Sep 2025 00:34:22 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com, andi.shyti@linux.intel.com, zhenyuw.linux@gmail.com
Subject: Re: [PATCH v3] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Message-ID: <rfjdl7lmaovq7q3drbvvt5us3t4ee4bdr5fsm6ava64ajr5ued@lmsoayx7iln6>
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
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

merged to drm-intel-next.

Thank you,
Andi
