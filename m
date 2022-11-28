Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D734163A4DB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 10:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E628310E2BA;
	Mon, 28 Nov 2022 09:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC3910E2BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 09:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669627574; x=1701163574;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U5Ysjx8A19whpuTTUsBp4DIhGn9XepnlvS0GDIMuMPo=;
 b=LBegclGekhYK1nJpIUdfyWFjuci7kYUXZne1vrri8uXxRiy5peNIlry6
 CuL6/euxihfOCKK1bO7yUrL1rB9FFRmn7/4s2x6aXew8VviRIj3ySeYzw
 WII/UlMJshsteZY9WOULNqcXhJG7zn3VdHqCyQN4UqznzB9ztjykvrUKs
 gswRA0oMoouyElXIuO6kUaArTO7B29nJ6xDYgirnaseEtfpcYeULyRgEO
 U+uqe0ahzPzQXLK4FnNDFQOGH7giFfIGJQgKv4NKjUGflbezQahSnIdgV
 /vI6igIsvMuXko8LxRfqV0UxyV3eM5VgHU+HByevLhXWEOOzThSAkoDyx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="302366918"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="302366918"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 01:26:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="785559429"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="785559429"
Received: from mmustafa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.239])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 01:26:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DBBPR09MB466592B16885D99ABBF2393A91119@DBBPR09MB4665.eurprd09.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <DBBPR09MB466592B16885D99ABBF2393A91119@DBBPR09MB4665.eurprd09.prod.outlook.com>
Date: Mon, 28 Nov 2022 11:26:08 +0200
Message-ID: <87tu2j4ehb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix VBT send packet port
 selection for dual link DSI
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

On Sat, 26 Nov 2022, Mikko Kovanen <mikko.kovanen@aavamobile.com> wrote:
> intel_dsi->ports contains bitmask of enabled ports and correspondingly
> logic for selecting port for VBT packet sending must use port specific
> bitmask when deciding appropriate port.
>
> Fixes: 08c59dde71b7 ("drm/i915/dsi: fix VBT send packet port selection for ICL+")
> Cc: stable@vger.kernel.org
> Signed-off-by: Mikko Kovanen <mikko.kovanen@aavamobile.com>

Holy crap, that's embarrassing! Thanks!

Despite the mistake, it always works for single-link DSI as well as port
A on dual-link DSI, which probably covers most use cases. It's the
commands targeted at port B (VLV+ DSI) or port C (ICL+ DSI) that go
haywire.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 75e8cc4337c9..fce69fa446d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -137,9 +137,9 @@ static enum port intel_dsi_seq_port_to_port(struct intel_dsi *intel_dsi,
>  		return ffs(intel_dsi->ports) - 1;
>  
>  	if (seq_port) {
> -		if (intel_dsi->ports & PORT_B)
> +		if (intel_dsi->ports & BIT(PORT_B))
>  			return PORT_B;
> -		else if (intel_dsi->ports & PORT_C)
> +		else if (intel_dsi->ports & BIT(PORT_C))
>  			return PORT_C;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
