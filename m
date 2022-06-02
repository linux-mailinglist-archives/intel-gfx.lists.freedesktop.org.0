Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3105253BC2D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 18:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3410910EA13;
	Thu,  2 Jun 2022 16:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74EB10E8A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 16:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654186311; x=1685722311;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ImIKVApMt+VUUs6J/r9mmiZPeYyGGlO0lIXVlk9L4N4=;
 b=J613BJTR3fbNTYRCzyij/8CpmlrjVOR5+pMejxZNAR5wRDGtLhVJ5qhq
 MHHjzn2SM6EslxjocyTy3WdF5VqbTl9yHjobcOOJgCkgfm5gI6yCdxqk5
 gF6/INY4cxN5Gc+0RIbL2cQmE9sWDvkSOoPoIz0AQ9KtZee7u+dH9wEC6
 9efXL/ri9lL99BHOEsS6r12HmCjCsTVnwli/OZtAMlq1hfQs4u900x81N
 IBuCaNU42mZRVzS9uPWiCcU6hWtJ1McIr+6i+0d9FMh0wNQWuuqmC6ILy
 +pvX6RZyRXJBPBC2Pqh1fG1/5zV+ddVBAo0xWfO1CJQfe7paK9sLqE7H3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="274799509"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="274799509"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 09:10:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="582153464"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl) ([10.24.12.76])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2022 09:10:54 -0700
Date: Thu, 2 Jun 2022 09:10:41 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <YpjhAZVSaY5jqpBM@msatwood-mobl>
References: <20220602135719.1093081-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220602135719.1093081-1-balasubramani.vivekanandan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/adlp: More updates to
 voltage swing table
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 02, 2022 at 07:27:19PM +0530, Balasubramani Vivekanandan wrote:
> Voltage swing table updated for eDP HBR3
> 
> Bspec: 49291
Pending CI results
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 5cae1d19bcbb..e6cf50922dca 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -933,9 +933,9 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_edp_h
>  	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
>  	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
>  	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
> -	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
> -	{ .icl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
> -	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
> +	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
> +	{ .icl = { 0xC, 0x63, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
> +	{ .icl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -- 
> 2.25.1
> 
