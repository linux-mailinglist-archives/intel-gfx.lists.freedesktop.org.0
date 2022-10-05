Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DCA5F5352
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 13:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F233210E4CD;
	Wed,  5 Oct 2022 11:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA7D10E4E5
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 11:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664969348; x=1696505348;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AXHjf2PClEokqUN987tCqRn+7XDI7h/xOs8RAseasKc=;
 b=fqxkaMK3FqloueNMVOGn07DKvdTFUpzfFcKoKAfHBelqHwwsY9HNRLZT
 dFE0gTDW4+TmoZQjq0S/wG34ir3b0XcwnwadqYW49THt0CP167NlXpkcG
 tvWkjUmMiJnFvNnoKzA7/6mEkAe0crKBzDcScOWVSfQnkL5tOa6N6UbCT
 e2sj2U7AhVld7AK9EaGbJp1D9z8Dt4k80apl+/ayebTR0dhPAPmZ1FHdZ
 r4qxztQ6cGBeadLXjtmxrOAaedRwVN6gbX7u0gPdfFno9BxPgB/WfuAJX
 7aLmmd+ENG/toQefyt3Q35z3YJZ45xw5x1IgbR9Ug/qvfwLBiLRsQ/9Lo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="286348582"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="286348582"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 04:29:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713382301"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="713382301"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 05 Oct 2022 04:29:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 14:29:05 +0300
Date: Wed, 5 Oct 2022 14:29:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <Yz1qgeXxFPquYh0q@intel.com>
References: <20221005111158.3022387-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221005111158.3022387-1-mika.kahola@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure dbuf state is defined
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

On Wed, Oct 05, 2022 at 02:11:58PM +0300, Mika Kahola wrote:
> Ensure that the new dbuf state is not null. If so, throw
> an error, discontinue to allocate ddb and return.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d58e667016e4..4ecf3b43d6d2 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -638,6 +638,9 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crtc *crtc)
>  	u32 start, end;
>  	int ret;
>  
> +	if (IS_ERR(new_dbuf_state))
> +		return PTR_ERR(new_dbuf_state);
> +

You can't get here without the dbuf_state. Also even if we didn't have
one intel_atomic_get_new_dbuf_state() certainly shouldn't give us an
error pointer (you either get a valid pointer or NULL).

>  	if (new_dbuf_state->weight[pipe] == 0) {
>  		skl_ddb_entry_init(&new_dbuf_state->ddb[pipe], 0, 0);
>  		goto out;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
