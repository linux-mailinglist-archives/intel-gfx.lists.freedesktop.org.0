Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787062477EF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 22:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C111A89F38;
	Mon, 17 Aug 2020 20:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1CA89F38
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 20:07:15 +0000 (UTC)
IronPort-SDR: GFzTa474KNp0gexQTX3snT9WGhsRmG7k/3jYOxJflF/HXQD7MCOQ+tAuUIiMtHJy3u29DPz69S
 urbHA7lUWAiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="154040375"
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="154040375"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 13:07:11 -0700
IronPort-SDR: GijwEHjm1FQyO7GC0PB0K0vcikscUc4/Bt0rb1OR8SWyFkHbHsApMwQpDasp0iRsV9G1hks46W
 SxBbXRH5ki6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="310200018"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.214.206.170])
 by orsmga002.jf.intel.com with ESMTP; 17 Aug 2020 13:07:08 -0700
MIME-Version: 1.0
In-Reply-To: <20200817195926.12671-1-mika.kuoppala@linux.intel.com>
References: <159766836466.667.7312583547693920058@build.alporthouse.com>
 <20200817195926.12671-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 17 Aug 2020 21:07:06 +0100
Message-ID: <159769482670.667.8256738074280538426@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix cmd parser desc matching with
 masks
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
Cc: Takashi Iwai <tiwai@suse.de>, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-08-17 20:59:26)
> Our variety of defined gpu commands have the actual
> command id field and possibly length and flags applied.
> 
> We did start to apply the mask during initialization of
> the cmd descriptors but forgot to also apply it on comparisons.
> 
> Fix comparisons in order to properly deny access with
> associated commands.
> 
> v2: fix lri with correct mask (Chris)
> 
> References: 926abff21a8f ("drm/i915/cmdparser: Ignore Length operands during command matching")
> Reported-by: Nicolai Stange <nstange@suse.de>
> Cc: stable@vger.kernel.org # v5.4+
> Cc: Miroslav Benes <mbenes@suse.cz>
> Cc: Takashi Iwai <tiwai@suse.de>
> Cc: Tyler Hicks <tyhicks@canonical.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index 372354d33f55..5ac4a999f05a 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1204,6 +1204,12 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
>         return dst;
>  }
>  
> +static inline bool cmd_desc_is(const struct drm_i915_cmd_descriptor * const desc,
> +                              const u32 cmd)
> +{
> +       return desc->cmd.value == (cmd & desc->cmd.mask);

We could observe that the mask we need is always -1u << 23, we do use
that info already for the cmd hashing, but more important is that we are
consistent with our use of desc->cmd.mask everywhere else.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
