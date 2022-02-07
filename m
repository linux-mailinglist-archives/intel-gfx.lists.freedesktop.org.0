Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58134AC666
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 17:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610E510E33E;
	Mon,  7 Feb 2022 16:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9AC810E33E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 16:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644252508; x=1675788508;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RoNEdmj3fJhDnp6obfu/M+jqOlEzSacb5uBPv2jSv1s=;
 b=ckheYDRX2G2yMbhN8Uvrt+Oh4lxwecR09CDrm+VVNNzKgbEDgverjw/f
 XKmU1zaJCzmrPkMbgUynIaoBgJLGuSOSssZmfc6Dege2QTcIp1qzoGzRC
 5BdBXZi9UPD2N0Ye7afvz7LpSWQeG6lxRmjfXzKRdrkg9rI15iqfiPKQO
 JBGwjBchIhNGuE1VmGtHQ5ftFRCj1d6w9Uf1KkBOEvcxbcWJwGi7Vaqqg
 lbDe7W765lgNV3bi2a0QLV/JVCdoT6M/bo4+YuCXAhmwK6wMOA91d+nHq
 FBzQJ326szX9gEuME4/rfQJM5GcZY/3GU7rmpGFGk2Mj8lOCJ82IpK4xm g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="228725656"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="228725656"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 08:47:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="536263960"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 07 Feb 2022 08:47:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 18:47:55 +0200
Date: Mon, 7 Feb 2022 18:47:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YgFNOzZDOWn7UryH@intel.com>
References: <20220207132700.481-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220207132700.481-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i195: Fix dbuf slice config lookup
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 07, 2022 at 03:26:59PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Apparently I totally fumbled the loop condition when I
> removed the ARRAY_SIZE() stuff from the dbuf slice config
> lookup. Comparing the loop index with the active_pipes bitmask
> is utter nonsense, what we want to do is check to see if the
> mask is zero or not.
> 
> Cc: stable@vger.kernel.org
> Fixes: 05e8155afe35 ("drm/i915: Use a sentinel to terminate the dbuf slice arrays")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 02084652fe3d..da721aea70ff 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4848,7 +4848,7 @@ static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus,
>  {
>  	int i;
>  
> -	for (i = 0; i < dbuf_slices[i].active_pipes; i++) {
> +	for (i = 0; dbuf_slices[i].active_pipes != 0; i++) {

Actually looks like the tables just happened to be ordered
the right way that the code never did the wrong thing until
commit eef173954432 ("drm/i915: Allow !join_mbus cases for adlp+
dbuf configuration"). So this just needs backporting alongside
that commit (which I flagged for 5.14+), but no crucial need to
backport further than that.

-- 
Ville Syrjälä
Intel
