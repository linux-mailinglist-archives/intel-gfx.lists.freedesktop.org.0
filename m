Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 436526F44D6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 15:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504E610E24E;
	Tue,  2 May 2023 13:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7450310E24E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 13:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683033240; x=1714569240;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UKS6eb6mm7wnEJz0YAhtu/APb6Zrywv1tOaxnDfoKl8=;
 b=LbHgJCRCDCLC4t6KBS74EMr0I5xMkOxpeGDqTpHVIVglko4JsgrWP+fR
 +O+fscuL/OzpJt//Y1PSvhFkAbuwpbZ7JVrODDVEQYgo1lA4wncjyoYSA
 HTeMkdoRAiSk20rKZ3Dr/p5gznTppYHO8DLW+jlSulMrMWCmfLGBoxt4d
 0bpRIeN8TuYNOsO21pB+VHZEAIlmnDa0ehR24p7YsVx38IkhW6l2m4h8F
 h7i3XKEmi6/pVnh4i5IB012vQJ3Bp9LPcD9vrlyvVXg6ByKzMwZoynGvL
 YKhq0p8/R4DzxB7ixZlHIdOn6qyTzX3zrZsxFfl0PAfCPUiwrr7OgwEtb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="347210488"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="347210488"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 06:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="690278833"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="690278833"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 02 May 2023 06:13:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 May 2023 16:13:55 +0300
Date: Tue, 2 May 2023 16:13:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kurt Garloff <kurt@garloff.de>
Message-ID: <ZFEMkypQy1I4vprK@intel.com>
References: <4115dc28-45b6-cad1-1e38-39e5a0484a8a@garloff.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4115dc28-45b6-cad1-1e38-39e5a0484a8a@garloff.de>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 6.1.23: 0fc6fea41c71 breaks GPD Pocket 3 modeset
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Apr 29, 2023 at 09:55:45PM +0200, Kurt Garloff wrote:
> Hi Ville,
> 
> While
> 0fc6fea41c71 drm/i915: Disable DC states for all commits
> (cherry picked from commit 41b4c7fe72b6105a4b49395eea9aa40cef94288d)
> does look correct to me, it does break modesetting on the GPD Pocket 3,
> a i7-1195G7 laptop. I run the kernel with
> fbcon=rotate:1 video=DSI-1:panel_orientation=right_side_up \
> mem_sleep_default=s2idle
> No special i915 parameters.
> Hardware is described here:
> https://wiki.archlinux.org/title/GPD_Pocket_3
> 
> I disected this patch which was merged (backported) for 6.1.23.
> I currently run 6.1.26 with it reverted.
> 
> Without reverting it, when fbcon is switched to show the splash
> screen (GPD logo with Ubuntu added in on working kernels), the
> screen remains black (backlight on, but nothing displayed) and
> nothing happens any more.

Please file a bug at
https://gitlab.freedesktop.org/drm/intel/issues/new

Boot both kernels (revert vs. no revert), passing
'drm.debug=0xe log_buf_len=4M' to the kernel cmdline,
and attach the resulting dmesg from each to the bug.

Also would be good if you try to reproduce on the
latest drm-tip (git://anongit.freedesktop.org/drm-tip drm-tip)
as well.

-- 
Ville Syrjälä
Intel
