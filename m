Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F90C4FBC40
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 14:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D605B10E08E;
	Mon, 11 Apr 2022 12:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9B710E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 12:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649680731; x=1681216731;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pTscB0I/vhuW861MkRyxJo04onfNXVkb7A8OszpIWBA=;
 b=iwgFuEJOUoD2DPwfRAr4GUMgn3m7m7aGsxVgbf+Hv9yNsTslbGSm8ZaW
 ttgraiC7GNORnsfu79PwMxNV2mEYzESYbuZNxv3tf+NBX5qdVRzeEyfWL
 YVeg8QeUa4NSz717MLoS9F7DvFN/YYSfZM/UqQBLoM1Fi/hz+tiYomVHx
 qeejPYiBD63OCVKHphdAhBf5pN6jd1YknC39p59Gp6SFSccgQW5RvsKOr
 btOjXRPH+nYmUZ38cP4ND/pSWTTJnTIgdwol2hHt7SGebKKDsu95eQJaM
 9q3YwK4NKkF+Yt9rmFQbp5grzat8UCc5JECtXNR9XSn6wYihEt3I9630+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="243987790"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="243987790"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 05:38:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="723950308"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 05:38:49 -0700
Date: Mon, 11 Apr 2022 15:38:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YlQhVWmwUA1DvTNS@ideak-desk.fi.intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220404133846.131401-1-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915/dg2: Add support for
 render/media decompression
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
Reply-To: imre.deak@intel.com
Cc: Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo, Jani,

On Mon, Apr 04, 2022 at 04:38:42PM +0300, Imre Deak wrote:
> This is a rebased version of patches 15-17 of [1], adding DG2 display
> engine support for decompressing render and media compressed
> framebuffers.
> 
> The dependency patches from [1] should be merged already to drm-tip.
> 
> It addresses the review comments on the modifier layout description from
> Nanley, updates the commit logs vs. flat CCS and Tile4 and splits out
> the changes adding the modifiers to drm_fourcc.h to separate patches.
> 
> [1] https://patchwork.freedesktop.org/series/95686/
> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> Cc: Nanley Chery <nanley.g.chery@intel.com>

I'd like to push this patchset to drm-intel-next, but it depends on
https://patchwork.freedesktop.org/patch/475167/?series=100419&rev=1

which is only in drm-intel-gt-next. According to Joonas, this should be
resolved by backmerging drm-intel-gt-next to drm-intel-next, could you
help with this?

> Anshuman Gupta (1):
>   drm/i915/dg2: Add support for DG2 clear color compression
> 
> Matt Roper (2):
>   drm/fourcc: Introduce format modifiers for DG2 render and media
>     compression
>   drm/i915/dg2: Add support for DG2 render and media compression
> 
> Mika Kahola (1):
>   drm/fourcc: Introduce format modifier for DG2 clear color
> 
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 53 +++++++++++++++----
>  .../drm/i915/display/skl_universal_plane.c    | 49 +++++++++++++----
>  include/uapi/drm/drm_fourcc.h                 | 36 +++++++++++++
>  4 files changed, 122 insertions(+), 20 deletions(-)
> 
> -- 
> 2.30.2
> 
