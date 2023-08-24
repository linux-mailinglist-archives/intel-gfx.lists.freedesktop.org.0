Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE94787262
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 16:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8762710E56C;
	Thu, 24 Aug 2023 14:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A71E10E56C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 14:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692888827; x=1724424827;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tNgBLkgaORQFQ2mIPoPI9KgLGSbZeilUDJNY4MAmNTM=;
 b=MvpQan/EuIA2faVTCdrVUnno23/YDCW/vLRikmXiES5zIKL9HPYtKXpO
 8xc3kt15pMdeTpbZaE7iDvAyCEgZ/T++RuOR54SrjYJtvi950ZV1i7tcL
 iPiH5Rb4O5Dg1XVomdCy0CURdt7pLyQ8D5g003W5NMnBDWGya5RxQhDsK
 ATqiZkviZP+uO39n3/rjNHoeTjbr+rklKHLxMKd40eKoX/CDWxdL09whw
 fglMORaAia76pBQw0Hfz0EkqZEkU5nbcRuipnXUMEy+Ok3bHN2NtBhcLC
 lTRM+9/3DY3q0gFP+L0bVm1ZDWJiAW1QxiEUG4/fblLgSDsD+Q8psc2LB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="371864631"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="371864631"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 07:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="740235757"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="740235757"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.156])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2023 07:53:44 -0700
Date: Thu, 24 Aug 2023 16:53:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZOdu9dtMSeoErFFx@ashyti-mobl2.lan>
References: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
 <20230823185104.1994138-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230823185104.1994138-2-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com,
 tomasz.mistat@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

few little things...

On Wed, Aug 23, 2023 at 11:51:03AM -0700, Jonathan Cavitt wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Apply WABB blit for Wa_16018031267 / Wa_16018063123.
> Additionally, update the lrc selftest to exercise the new
> WABB changes.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>

As the sender of this patch, your SoB should be last and you also
need to add Nirmoy's SoB above yours.

(Tags should be added in chronological order)

[...]

> +static u32 *
> +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
> +{
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (ce->engine->class == COPY_ENGINE_CLASS &&
> +	    NEEDS_FASTCOLOR_BLT_WABB(ce->engine->i915))
> +		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);

I thought the trend was to have things like:

	..._needs_wa_16018031267()

But we don't have a unified system yet

> +	return cs;
> +}
> +
> +

two blank lines here

> +static void
> +setup_per_ctx_bb(const struct intel_context *ce,
> +		 const struct intel_engine_cs *engine,
> +		 u32 *(*emit)(const struct intel_context *, u32 *))
> +{

[...]

>  static u32 *
> -emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +emit_wabb_ctx_canary(const struct intel_context *ce,
> +			    u32 *cs, bool per_ctx)

just a little alignment issue here.

>  {

[...]

Are the failures from CI coming from this series?

Andi
