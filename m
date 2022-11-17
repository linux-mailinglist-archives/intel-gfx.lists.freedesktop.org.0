Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2A062D0A6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 02:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187D010E51B;
	Thu, 17 Nov 2022 01:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB6410E51B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 01:29:38 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id z26so323320pff.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 17:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WU+UX/tq+k1QsbWeDimipmexgpUGr52PPu1d3ddoXY4=;
 b=eC5WH1WNRgA2/rwaTJUKo1kuPme+d4pVU+OgJNIml8H7TxPtF881zSAct3/mrmRnli
 s+GX6wT9ggEhKa3rZSLhk7Ndc92QRPdTcBT77k3aoC0oy3gpnyCEu01u9xb3CTeg3q4t
 iYgwZpNijwDFpwK0TLuS+b/vFTlGP7dzw1Png=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WU+UX/tq+k1QsbWeDimipmexgpUGr52PPu1d3ddoXY4=;
 b=UQWmvQtAMiMOPrHoS+glgxWnFu9vVT1Ko53J8/xAyNNm9ofupOj9/ePSNSRqb+UXB3
 vUHvz0ffOp0brNPLhlrDCSqIeF7zjQxNl9yvblOOdMIPfe5rDDVKk+8l2MwtnAD3blK0
 Wl8Hm3tx1OHjGMHD8kF0CmXLjCZKOJi82p9dQkqAQGfsv2eVtCeslSmPOR9QKrOITm2i
 3cGLEva0AEoYEBlyEFBCrj3+zI3hbAfxuc7KofqbJmqVm4P/a996ZdL76ID6vL9IOfwX
 IPw/rLSwEV5xvSxIrqlCDtEEUxU87BuS2KF3pPKgJUAQdqvzoFWGmtwnNFzybPaPX533
 ixVg==
X-Gm-Message-State: ANoB5pmdPEna9n872Sfy+4qAWiajnL75XLX/jV6GbgC2NWcqh36KyIlQ
 3J7ZjfGge5tRsQjszM3mSIbuSA==
X-Google-Smtp-Source: AA0mqf6g+Mdgg/9VB0n37JTINpluyDekpG6wpMzx9OVQiQAuFsnqOcXGGXiwOTv4IHm8i9RRrBSKeQ==
X-Received: by 2002:a63:f047:0:b0:476:7742:de19 with SMTP id
 s7-20020a63f047000000b004767742de19mr13174pgj.343.1668648578427; 
 Wed, 16 Nov 2022 17:29:38 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:d1e8:472c:ff8:18d6])
 by smtp.gmail.com with ESMTPSA id
 m2-20020a170902768200b00172b87d9770sm12974813pll.81.2022.11.16.17.29.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Nov 2022 17:29:37 -0800 (PST)
Date: Wed, 16 Nov 2022 17:29:35 -0800
From: Brian Norris <briannorris@chromium.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <Y3WOf7H6nG2861CJ@google.com>
References: <20221111005651.4160369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221111005651.4160369-1-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: fix leak of debug object in
 huc load fence on driver unload
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

On Thu, Nov 10, 2022 at 04:56:51PM -0800, Daniele Ceraolo Spurio wrote:
> The fence is always initialized in huc_init_early, but the cleanup in
> huc_fini is only being run if HuC is enabled. This causes a leaking of
> the debug object when HuC is disabled/not supported, which can in turn
> trigger a warning if we try to register a new debug offset at the same
> address on driver reload.
> 
> To fix the issue, make sure to always run the cleanup code.
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Reported-by: Brian Norris <briannorris@chromium.org>
> Fixes: 27536e03271d ("drm/i915/huc: track delayed HuC load with a fence")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Brian Norris <briannorris@chromium.org>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> ---
> 
> Note: I didn't manage to repro the reported warning, but I did confirm
> that we weren't correctly calling i915_sw_fence_fini and that this patch
> fixes that.

I *did* reproduce, and with this patch, I no longer reproduce. So:

Tested-by: Brian Norris <briannorris@chromium.org>

I see this differs very slightly from the draft version (which didn't
work for me):

https://lore.kernel.org/all/ac5fde11-c17d-8574-c938-c2278d53cf95@intel.com/

so presumably that diff is the fix.

Thanks a bunch!

Brian

>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 12 +++++++-----
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c  |  1 +
>  2 files changed, 8 insertions(+), 5 deletions(-)
