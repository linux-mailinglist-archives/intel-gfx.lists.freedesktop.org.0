Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0EA8A653D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B055610E273;
	Tue, 16 Apr 2024 07:38:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZeOQrx8r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31141112366
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713253089; x=1744789089;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4daM9EMYk++sU3jA+FWId9+TDjCnxqyERDcrTbOYgI4=;
 b=ZeOQrx8rPBUhsfjQvMKJ9QNvXB8KzMgwCMTG3fyR5tml9AgJ1ftZOHMp
 ORXfMv9Row6A5v42CWG5mVLq+0VNG3vKrbb3p+Ef1XxIl/EC7gQN+Ichj
 1VGR9H2ry9s383s7PVxWu+K82nLeGrjW13+f/sIR8vgZBpm7ZTOuNeqAT
 PIh6LyM/FtDlR/rW3MArAIjzm1azksNKM2Kquh23SXVB3q/jEWQESm6J8
 oP1WeonMFtJFw3BIgr9bPswenBBlg8oGA/aqGg0kTptLVERQ5UQpFTedQ
 mUOIZ4fE127qUziaMrQdV/QrSv4r6WaIP2fH6b0Ip/J3p1Sv6U/YffDE+ Q==;
X-CSE-ConnectionGUID: gVUPUS4aQyW1CA7bgSCYCA==
X-CSE-MsgGUID: MoYNVzuDQGmYiuTB8vRJbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19383327"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="19383327"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:38:08 -0700
X-CSE-ConnectionGUID: UtAiqt2mQNmRi8rPKXgmfA==
X-CSE-MsgGUID: 6r1D8AeVQiuNa2Lz24nDYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22583070"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.100])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:38:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
In-Reply-To: <20240416072733.624048-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
 <20240416072733.624048-3-suraj.kandpal@intel.com>
Date: Tue, 16 Apr 2024 10:38:03 +0300
Message-ID: <8734rl21wk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 16 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add SCLKGATE_DIS register and it's register definition which
> will be used the next patch.

Please just squash this into the next patch.

(And please don't reference "the next patch" in commit messages, because
it's meaningless once this becomes a commit in the history.)
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3f34efcd7d6c..beec91a2f493 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6250,6 +6250,10 @@ enum skl_power_gate {
>  #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
>  #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
>  
> +/* SCLKGATE_DIS */

The comment is useless.

BR,
Jani.

> +#define SCLKGATE_DIS			_MMIO(0xc2014)
> +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> +
>  #define WM_MISC				_MMIO(0x45260)
>  #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)

-- 
Jani Nikula, Intel
