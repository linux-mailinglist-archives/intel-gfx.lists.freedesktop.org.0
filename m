Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62076DD5BD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 10:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483F710E4ED;
	Tue, 11 Apr 2023 08:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D39710E0A4;
 Tue, 11 Apr 2023 08:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681202304; x=1712738304;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vm5+PzYphRh2EdQmJkAEjbnAaRPSBI6t9cMiP76ccPc=;
 b=f4ZLR9qaoUJNr+nEgxldi2Tk5zQ8wPLD084Lqc5Qz6+HXZx+KGR9hh32
 dqw31YXhhfOeRDWhifl290vm4fKMN77m/1kBPSLcf2YWBtOFlmuWD0q1e
 vnFuVDKR5T0sxHoxQtf/HO3+rkFduVw5J4RSCSopDs6supk3fp/aDiq/k
 YvGJbjo2KeHC0DcLHtrhj53lVPkSXYuH0Bdam+jDESRzHVWCy6NJtF0SH
 twrfSrdxbBm7k3IvW+8TAlWd3RN23dllbhYHL8yCt9pmp/Hf5wbIErRCg
 ZSR34Czn4qhaTyrz6tQMvFpvn9pOIksDq7T5hvGQNUjc43l6aDx+WGWp1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="406384598"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="406384598"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 01:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="799828699"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="799828699"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 11 Apr 2023 01:38:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 11:38:19 +0300
Date: Tue, 11 Apr 2023 11:38:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <ZDUce4jMSzhFyIxO@intel.com>
References: <20230410183219.191543-1-jose.souza@intel.com>
 <20230410183219.191543-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230410183219.191543-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 2/6] drm/i915: Only initialize dlk phy
 lock in display 12 and newer
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 10, 2023 at 11:32:15AM -0700, José Roberto de Souza wrote:
> This spin lock will not be used in older display versions, so no need
> to initialize it.
> 
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> index 5bce7b5b27bc7..1c5d410b74e5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> @@ -108,5 +108,6 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
>  void
>  intel_dkl_phy_init(struct drm_i915_private *i915)
>  {
> -	spin_lock_init(&i915->display.dkl.phy_lock);
> +	if (DISPLAY_VER(i915) >= 12)

Looks like a pointless check to me. This is so cheap it doesn't
matter, and less LOC is better.

> +		spin_lock_init(&i915->display.dkl.phy_lock);
>  }
> -- 
> 2.40.0

-- 
Ville Syrjälä
Intel
