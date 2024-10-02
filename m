Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB6D98CDEB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 09:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A46B10E6B4;
	Wed,  2 Oct 2024 07:42:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=inria.fr header.i=@inria.fr header.b="IF7RqrE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 430 seconds by postgrey-1.36 at gabe;
 Wed, 02 Oct 2024 07:42:45 UTC
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C90B10E6B2;
 Wed,  2 Oct 2024 07:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:subject:message-id:mime-version;
 bh=p9UrHK/nNUX3KlcmYgXQp0P13ciL4yHh01G6/mxnZtM=;
 b=IF7RqrE78UFbxU7ZaVrFo7DyS1nrpr7EEmqE0sUv2MoLS0/Fdx6YQu5T
 an4ulSD6r87HhHCdDPNo2cDBL95k3Sp69EnsrtwWpsx+5YYcMprRvj9d5
 KMo6voOYplvKrhVNJFCLnGX9WL97r5MLy+/yH3SiR8KrdhhMCfCOd1wqf Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.11,170,1725314400"; d="scan'208";a="97973135"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2024 09:35:33 +0200
Date: Wed, 2 Oct 2024 09:35:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time (fwd)
Message-ID: <26364631-14e3-17b6-815a-f5a523db124b@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

You can consider using max rather than ?:
See lines 178 and 180.

julia

---------- Forwarded message ----------
Date: Wed, 2 Oct 2024 11:11:36 +0800
From: kernel test robot <lkp@intel.com>
To: oe-kbuild@lists.linux.dev
Cc: lkp@intel.com, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time

BCC: lkp@intel.com
CC: oe-kbuild-all@lists.linux.dev
In-Reply-To: <20241001074348.2193502-1-arun.r.murthy@intel.com>
References: <20241001074348.2193502-1-arun.r.murthy@intel.com>
TO: Arun R Murthy <arun.r.murthy@intel.com>
TO: intel-xe@lists.freedesktop.org
TO: intel-gfx@lists.freedesktop.org
CC: Arun R Murthy <arun.r.murthy@intel.com>

Hi Arun,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on linus/master v6.12-rc1 next-20241001]
[cannot apply to drm-intel/for-linux-next-fixes drm-tip/drm-tip]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Arun-R-Murthy/drm-i915-dp-Guarantee-a-minimum-HBlank-time/20241001-155536
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20241001074348.2193502-1-arun.r.murthy%40intel.com
patch subject: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time
:::::: branch date: 19 hours ago
:::::: commit date: 19 hours ago
config: x86_64-randconfig-104-20241002 (https://download.01.org/0day-ci/archive/20241002/202410021032.BpJez1ja-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Julia Lawall <julia.lawall@inria.fr>
| Closes: https://lore.kernel.org/r/202410021032.BpJez1ja-lkp@intel.com/

cocci warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/intel_dp_mst.c:178:32-33: WARNING opportunity for max()
   drivers/gpu/drm/i915/display/intel_dp_mst.c:180:32-33: WARNING opportunity for max()

vim +178 drivers/gpu/drm/i915/display/intel_dp_mst.c

9069b77545ca5a Imre Deak     2023-11-17  158
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  159  static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  160  					    struct intel_connector *intel_connector,
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  161  					    int bpp_x16)
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  162  {
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  163  	struct intel_encoder *intel_encoder = intel_connector->encoder;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  164  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(intel_encoder);
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  165  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  166  	struct intel_display *intel_display = to_intel_display(intel_encoder);
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  167  	const struct drm_display_mode *adjusted_mode =
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  168  					&crtc_state->hw.adjusted_mode;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  169  	u32 symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  170  	u32 hblank;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  171
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  172  	if (DISPLAY_VER(intel_display) < 20)
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  173  		return;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  174
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  175  	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  176  	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  177  	if (intel_dp_is_uhbr(crtc_state))
9ffe2a8e0d3097 Arun R Murthy 2024-10-01 @178  		intel_dp->min_hblank = hblank > 5 ? hblank : 5;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  179  	else
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  180  		intel_dp->min_hblank = hblank > 3 ? hblank : 3;
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  181  }
9ffe2a8e0d3097 Arun R Murthy 2024-10-01  182

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
