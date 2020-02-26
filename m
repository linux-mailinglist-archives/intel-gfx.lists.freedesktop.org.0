Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53041170C50
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 00:09:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81CF86E1BB;
	Wed, 26 Feb 2020 23:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DAE6E1BB;
 Wed, 26 Feb 2020 23:09:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:09:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="230586727"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:09:01 -0800
Date: Wed, 26 Feb 2020 15:10:00 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Message-ID: <20200226231000.GA2094112@intel.com>
References: <20200226103840.GD10413@zhen-hp.sh.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226103840.GD10413@zhen-hp.sh.intel.com>
Subject: Re: [Intel-gfx] [PULL] gvt-next
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, "Yuan,
 Hang" <hang.yuan@intel.com>, "Lv, Zhiyuan" <zhiyuan.lv@intel.com>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 26, 2020 at 06:38:40PM +0800, Zhenyu Wang wrote:
> 
> Hi,
> 
> Here's gvt-next pull. Mostly for cleanup and kvmgt specific struct
> has been moved to its own module, also enable VFIO edid for all platform
> including CML. Pls see details below.

pulled, thanks

> 
> Thanks
> --
> The following changes since commit e24bcd34c1dd7dabde4a8546920537f7137e3c5f:
> 
>   drm/i915/dp: Add all tiled and port sync conns to modeset (2020-02-20 13:55:02 +0530)
> 
> are available in the Git repository at:
> 
>   https://github.com/intel/gvt-linux tags/gvt-next-2020-02-26
> 
> for you to fetch changes up to a8bb49b64c4f4284fb36169bdd9fc6efd62eb26a:
> 
>   drm/i915/gvt: Fix drm_WARN issue where vgpu ptr is unavailable (2020-02-25 16:13:04 +0800)
> 
> ----------------------------------------------------------------
> gvt-next-2020-02-26
> 
> - Enable VFIO edid for all platform (Zhenyu)
> - Code cleanup for attr group and unused vblank complete (Zhenyu, Julian)
> - Make gvt oblivious of kvmgt data structures (Julian)
> - Make WARN* drm specific (Pankaj)
> 
> ----------------------------------------------------------------
> Julian Stecklina (2):
>       drm/i915/gvt: remove unused vblank_done completion
>       drm/i915/gvt: make gvt oblivious of kvmgt data structures
> 
> Pankaj Bharadiya (2):
>       drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
>       drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
> 
> Tina Zhang (1):
>       drm/i915/gvt: Fix drm_WARN issue where vgpu ptr is unavailable
> 
> Zhenyu Wang (3):
>       drm/i915/gvt: remove unused type attributes
>       drm/i915/gvt: Enable vfio edid for all GVT supported platform
>       Merge drm-intel-next-queued into gvt-next
> 
>  drivers/gpu/drm/i915/gvt/aperture_gm.c  |   6 +-
>  drivers/gpu/drm/i915/gvt/cfg_space.c    |  23 ++-
>  drivers/gpu/drm/i915/gvt/cmd_parser.c   |   4 +-
>  drivers/gpu/drm/i915/gvt/display.c      |   6 +-
>  drivers/gpu/drm/i915/gvt/dmabuf.c       |   4 +-
>  drivers/gpu/drm/i915/gvt/edid.c         |  19 +-
>  drivers/gpu/drm/i915/gvt/gtt.c          |  21 ++-
>  drivers/gpu/drm/i915/gvt/gvt.c          |   8 +-
>  drivers/gpu/drm/i915/gvt/gvt.h          |  37 +---
>  drivers/gpu/drm/i915/gvt/handlers.c     |  22 ++-
>  drivers/gpu/drm/i915/gvt/interrupt.c    |  15 +-
>  drivers/gpu/drm/i915/gvt/kvmgt.c        | 303 +++++++++++++++++++-------------
>  drivers/gpu/drm/i915/gvt/mmio.c         |  30 ++--
>  drivers/gpu/drm/i915/gvt/mmio_context.c |   6 +-
>  drivers/gpu/drm/i915/gvt/scheduler.c    |   6 +-
>  drivers/gpu/drm/i915/gvt/vgpu.c         |  10 +-
>  16 files changed, 304 insertions(+), 216 deletions(-)
> 
> 
> -- 
> Open Source Technology Center, Intel ltd.
> 
> $gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
