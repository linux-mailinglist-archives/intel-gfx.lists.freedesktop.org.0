Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7539F27532E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 10:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACFC96E8FE;
	Wed, 23 Sep 2020 08:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435016E8FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 08:25:03 +0000 (UTC)
IronPort-SDR: Fw6GiucD++5cTxjUIiB2S18FSXiS+Gf7NeI1Zp+rz+hKBlwqp92O/7eI4epgkinDATPDlUnMLv
 BNH5o17RHjpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="245665489"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="245665489"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 01:25:02 -0700
IronPort-SDR: c69CPbhHbaW6CFG5k4sYFGERkZKm4vUfxhAVHLVdHPx9PaUBysZ1v335ADtqtZj3YHfGwZ29Tj
 /HPukx3NHlJA==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="511562993"
Received: from bravinar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.250])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 01:25:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200922134426.9840-1-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
Date: Wed, 23 Sep 2020 11:25:13 +0300
Message-ID: <87lfh0rjbq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V13 0/5] Add support for mipi dsi cmd mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Sep 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> This series contain interrupt handling part of cmd mode.
> Configuration patches were merged already.
>
> v10: Address the review comments on patch 3 and 4
> v11: fix compilation issue introduced in v10
> v12: fix check patch errors on patch 3
> v13: Use sw vblank counter (Ville)

Ville, I'd merge this unless you have further comments.

BR,
Jani.


>
> Vandita Kulkarni (5):
>   drm/i915/dsi: Add details about TE in get_config
>   i915/dsi: Configure TE interrupt for cmd mode
>   drm/i915/dsi: Add TE handler for dsi cmd mode.
>   drm/i915/dsi: Initiate fame request in cmd mode
>   drm/i915/dsi: Enable software vblank counter
>
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  56 +++++++--
>  drivers/gpu/drm/i915/display/intel_display.c |  21 ++++
>  drivers/gpu/drm/i915/display/intel_dsi.h     |   1 +
>  drivers/gpu/drm/i915/i915_irq.c              | 119 ++++++++++++++++++-
>  4 files changed, 183 insertions(+), 14 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
