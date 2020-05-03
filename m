Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB5B1C2F74
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 23:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94BF6E29D;
	Sun,  3 May 2020 21:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF8B6E29D
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 21:20:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21101267-1500050 for multiple; Sun, 03 May 2020 22:20:14 +0100
MIME-Version: 1.0
In-Reply-To: <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158854081237.15829.1691146176332549874@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 03 May 2020 22:20:12 +0100
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gen12: Fix HDC pipeline flush
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

Quoting Mika Kuoppala (2020-04-30 16:47:28)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index b3cf09657fb2..534e435f20bc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -237,7 +237,7 @@
>  #define   PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE    (1<<11) /* MBZ on ILK */
>  #define   PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE                (1<<10) /* GM45+ only */
>  #define   PIPE_CONTROL_INDIRECT_STATE_DISABLE          (1<<9)
> -#define   PIPE_CONTROL_HDC_PIPELINE_FLUSH              REG_BIT(9)  /* gen12 */
> +#define   PIPE_CONTROL0_HDC_PIPELINE_FLUSH             REG_BIT(9)  /* gen12 */
>  #define   PIPE_CONTROL_NOTIFY                          (1<<8)
>  #define   PIPE_CONTROL_FLUSH_ENABLE                    (1<<7) /* gen7+ */
>  #define   PIPE_CONTROL_DC_FLUSH_ENABLE                 (1<<5)

Confirmed. With the naming inversion resolved,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
