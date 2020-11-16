Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 553BD2B4111
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A666389D61;
	Mon, 16 Nov 2020 10:26:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C91F89DA6
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:26:35 +0000 (UTC)
IronPort-SDR: gbUISVdjMJ5MowJAPpMHzNZhR6sgNrBtRBKnhzc82xEoqH8ncnUfXH9+FSOzEDlxLojVPepqc9
 ar8/ufj6n3zQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="168149835"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="168149835"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:26:35 -0800
IronPort-SDR: nfSQEvMK0VGkwrF2v1aXKBhNRhCZsdKO+ZsA55lo8MfLcubk0az1HiO62imtce6VL1a1YQB4v5
 +wmspdv02Tpw==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="533370031"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:26:33 -0800
MIME-Version: 1.0
In-Reply-To: <20201115210815.5272-6-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-6-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552239111.10586.2399354234735639518@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 12:26:31 +0200
Subject: Re: [Intel-gfx] [PATCH 06/27] drm/i915: Rename the whitelist to
 allowlist
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

Quoting Huang, Sean Z (2020-11-15 23:07:54)
> Rename the whitelist to allowlist as suggested

This patch should really be a separate series and most likely needs to
be done in one go to avoid confusion.

$ git grep -E '(whitelist|blacklist)' | wc -l
173

The next patch also uses "passlist" terminology, highlighting the need
to reach an agreement about which term to use.

Regards, Joonas

> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 1c14a07eba7d..c9ef0025c60e 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1989,12 +1989,12 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
>         uncore_mmio_cleanup(uncore);
>  }
>  
> -static const struct reg_whitelist {
> +static const struct reg_allowlist {
>         i915_reg_t offset_ldw;
>         i915_reg_t offset_udw;
>         u16 gen_mask;
>         u8 size;
> -} reg_read_whitelist[] = { {
> +} reg_read_allowlist[] = { {
>         .offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
>         .offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
>         .gen_mask = INTEL_GEN_MASK(4, 12),
> @@ -2007,14 +2007,14 @@ int i915_reg_read_ioctl(struct drm_device *dev,
>         struct drm_i915_private *i915 = to_i915(dev);
>         struct intel_uncore *uncore = &i915->uncore;
>         struct drm_i915_reg_read *reg = data;
> -       struct reg_whitelist const *entry;
> +       struct reg_allowlist const *entry;
>         intel_wakeref_t wakeref;
>         unsigned int flags;
>         int remain;
>         int ret = 0;
>  
> -       entry = reg_read_whitelist;
> -       remain = ARRAY_SIZE(reg_read_whitelist);
> +       entry = reg_read_allowlist;
> +       remain = ARRAY_SIZE(reg_read_allowlist);
>         while (remain) {
>                 u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);
>  
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
