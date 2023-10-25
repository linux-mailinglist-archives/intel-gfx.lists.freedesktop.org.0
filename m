Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C60D47D6A6D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 13:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD07510E5A2;
	Wed, 25 Oct 2023 11:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C8110E5A2;
 Wed, 25 Oct 2023 11:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698234829; x=1729770829;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WGLwc5iTwr+p0DGCwq0HmPdYYtDkR3qB+ype1OEIfNA=;
 b=h4b9o338cxZdqEWP6IuEeryAbMhWehqhjR9mNTZIJFvOZMp1r5GHzQR/
 dtueqXz+4+qUeuUacyIOfT4W5ncfA13PxiC/tXth5J42gJbEHd/AH3EnC
 rU7yvH1fH3FZPPF/3k2oYFEfcmEyHA9L8cYz8MbE+2KolWvevWvaevJ/Z
 FcH2cYuniJ9x7ollfxxswVu0woPsetkhDQhZ+zFDmH21xeJ1yZ3tg9syU
 O3L4/2L6a2inN2zDkjTcgwiPxvtc6Xa2/eBn9ZScyHEiJKMA9FPfaZx9T
 UtYJg0bGzebpDxFmvPliybFVfGkbcUhnrJlBbExPbuV8H0o5UdNLRQMKE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="377656075"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="377656075"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="788100608"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="788100608"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:53:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
In-Reply-To: <20231024174153.byeq7ctssvxuwa4z@zenone.zhora.eu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231016201012.1022812-1-arnd@kernel.org>
 <87edhlbj16.fsf@intel.com>
 <20231024174153.byeq7ctssvxuwa4z@zenone.zhora.eu>
Date: Wed, 25 Oct 2023 14:53:38 +0300
Message-ID: <87o7gm9av1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: avoid stringop-overflow
 warning
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
Cc: Arnd Bergmann <arnd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@kernel.org> wrote:
> Hi Jani,
>
>> >  static void rc6_res_reg_init(struct intel_rc6 *rc6)
>> >  {
>> > -	memset(rc6->res_reg, INVALID_MMIO_REG.reg, sizeof(rc6->res_reg));
>> 
>> That's just bollocks. memset() is byte granularity, while
>> INVALID_MMIO_REG.reg is u32. If the value was anything other than 0,
>> this would break.
>
> Actually it's:
>
>    void *memset(void *s, int c, size_t count)

And? It still sets each byte in s to (the lowest 8 bits of) c.

>
>> And you're not supposed to look at the guts of i915_reg_t to begin with,
>> that's why it's a typedef. Basically any code that accesses the members
>> of i915_reg_t outside of its implementation are doing it wrong.
>> 
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> in any case, I agree with your argument, but why can't we simply
> do:
>
>    memset(rc6->res_reg, 0, sizeof(rc6->res_reg));
>
> ?

We can simply do a lot of things in C, but IMO that's semantically
wrong. i915_reg_t is supposed to be an opaque type. We're not supposed
to know what it contains, and what values are valid or invalid for it.
That's one of the reasons we have i915_reg_t in the first place (type
safety being the primary one).

Basically you should be able to do

-#define INVALID_MMIO_REG _MMIO(0)
+#define INVALID_MMIO_REG _MMIO(0xdeadbeef)

and expect everything to still work.

BR,
Jani.

>
> The patch looks to me like it's being more complex that it
> should.
>
> Andi

-- 
Jani Nikula, Intel
