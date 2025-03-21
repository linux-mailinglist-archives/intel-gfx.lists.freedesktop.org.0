Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB09A6C59B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1062E10E838;
	Fri, 21 Mar 2025 22:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K65z1LS6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E96510E838
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742594735; x=1774130735;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J4Z3TrnCanL10Q05e1VRQWdnkFQ+w63I5kQYZKxeRyQ=;
 b=K65z1LS6iw5se5HOcGRjrhjxoh/t7bEPm122iKYUX5ClKerI1ndI9S2u
 7xinIq4Vv7GghIMyMbNnbn8sCrn/cimK4kbStVcar35xI5BZWJSTdxbdn
 RnlpKOmXqQ+8N5yyyH1IRmXeaU4KlZX/4gW1/LJrqZbzFvLyBv4qOxjx0
 ofqe+4bd+YSaJ7aIr9XKoUxQxtU6VwkcdGWa4j6gRagDA3uXQ0yHaexcS
 H4pVcNsNgqKM9i1zL55/ncLK3SvibWM3AvwLSxvNzJ4Nrm1EgUhNOPpPw
 6mgi+BMbfU1/+tzWAGvC4ig+LX+y9a6L8CeyqW7tujQIrX4+rruHryvjg g==;
X-CSE-ConnectionGUID: MCTwqDGhR+WlN9jaCq8/Tw==
X-CSE-MsgGUID: cgw6ygMDQFuWkUSkcahBOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43600948"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43600948"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:05:34 -0700
X-CSE-ConnectionGUID: 3qZUWS5wQFuYStKMNPBRyw==
X-CSE-MsgGUID: GO3DEbgZS1q0rSvy54xYzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128737658"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:05:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:05:31 +0200
Date: Sat, 22 Mar 2025 00:05:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/16] sna: use GCPtr instead of GC *
Message-ID: <Z93iq-zXg30blvVT@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-6-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-6-info@metux.net>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 04:57:58PM +0100, Enrico Weigelt, metux IT consult wrote:
> Xserver includes have explicit pointer types for quite all kind of structs
> (at least those used by drivers), which are used all over the Xserver.
> Thus it's much cleaner to use those everywhere.
> 
> This commit also clears the road to fix a horrible nightmare of hacks just
> needed to circumvent naming clashes between Xserver and Xlib (affecting all
> DDXes that are painting on another Xserver): we can simply rename Xserver's
> own "GC" type to "GCRec" (the usual naming convention here) and so no trouble
> with Xlib's "GC" type anymore. Once this has landed, we're free to do that
> without breaking this driver.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/sna/sna_accel.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
> index 89b82afa..90a61ab3 100644
> --- a/src/sna/sna_accel.c
> +++ b/src/sna/sna_accel.c
> @@ -14300,7 +14300,7 @@ static void
>  sna_poly_fill_rect_stippled_n_box__imm(struct sna *sna,
>  				       struct kgem_bo *bo,
>  				       uint32_t br00, uint32_t br13,
> -				       const GC *gc,
> +				       const GCPtr gc,

These two are not the same. One is a non-const pointer to a
const GC, the other is a const pointer to a non-const GC.

>  				       const BoxRec *box,
>  				       const DDXPointRec *origin)
>  {
> @@ -14412,7 +14412,7 @@ sna_poly_fill_rect_stippled_n_box(struct sna *sna,
>  				  struct kgem_bo *bo,
>  				  struct kgem_bo **tile,
>  				  uint32_t br00, uint32_t br13,
> -				  const GC *gc,
> +				  const GCPtr gc,
>  				  const BoxRec *box,
>  				  const DDXPointRec *origin)
>  {
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
