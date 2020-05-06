Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F29D31C76D8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 18:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0216E8AC;
	Wed,  6 May 2020 16:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F09C6E8AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 16:44:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21129672-1500050 for multiple; Wed, 06 May 2020 17:44:47 +0100
MIME-Version: 1.0
In-Reply-To: <20200506155855.347-1-mika.kuoppala@linux.intel.com>
References: <20200506144734.29297-4-mika.kuoppala@linux.intel.com>
 <20200506155855.347-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158878348241.927.811872095434935872@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 06 May 2020 17:44:42 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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
Cc: Yang A Shi <yang.a.shi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-05-06 16:58:55)
> Aux table invalidation can fail on update. So
> next access may cause memory access to be into stale entry.
> 
> Proposed workaround is to invalidate entries between
> all batchbuffers.
> 
> v2: correct register address (Yang)
> 
> References bspec#43904, hsdes#1809175790
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Chuansheng Liu <chuansheng.liu@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Cc: Yang A Shi <yang.a.shi@intel.com>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I only hear good things about v3, so
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

> @@ -2526,6 +2526,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define HSW_GTT_CACHE_EN       _MMIO(0x4024)
>  #define   GTT_CACHE_EN_ALL     0xF0007FFF
>  #define GEN7_WR_WATERMARK      _MMIO(0x4028)
> +#define GEN12_GFX_CCS_AUX_NV   _MMIO(0x4208)
> +#define   AUX_INV              REG_BIT(0)
>  #define GEN7_GFX_PRIO_CTRL     _MMIO(0x402C)
>  #define ARB_MODE               _MMIO(0x4030)
>  #define   ARB_MODE_SWIZZLE_SNB (1 << 4)

4024, 4028, 4208, 402C, 4030.

Something seems not quite right.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
