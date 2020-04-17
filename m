Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DD31AE046
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E58B6EC23;
	Fri, 17 Apr 2020 14:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C5C6EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:56:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20934697-1500050 for multiple; Fri, 17 Apr 2020 15:56:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200417144429.20575-3-mika.kuoppala@linux.intel.com>
References: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
 <20200417144429.20575-3-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158713535858.2062.1876075603397663881@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 15:55:58 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use indirect ctx bb to mend
 CMD_BUF_CCTL
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

Quoting Mika Kuoppala (2020-04-17 15:44:29)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> index bb444614f33b..6c81a3a815ac 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> @@ -27,6 +27,7 @@
>  #define CTX_PDP0_UDW                   (0x30 + 1)
>  #define CTX_PDP0_LDW                   (0x32 + 1)
>  #define CTX_R_PWR_CLK_STATE            (0x42 + 1)
> +#define CTX_CMD_BUF_CCTL               (0xB6 + 1)

Can you add this to live_lrc_layout to confirm its location?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
