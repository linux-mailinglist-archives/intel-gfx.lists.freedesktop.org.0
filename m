Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 822EB1741CD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 23:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B096F4EE;
	Fri, 28 Feb 2020 22:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120886F4EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 22:07:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 14:07:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="232387412"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 28 Feb 2020 14:07:14 -0800
Date: Fri, 28 Feb 2020 14:07:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200228220714.GE174531@mdroper-desk1.amr.corp.intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-11-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227220101.321671-11-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 11/11] drm/i915/tgl: Implement
 Wa_1407901919
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 02:01:01PM -0800, Jos=E9 Roberto de Souza wrote:
> This will fix a memory coherence issue.
> =

> v3: using whitespace to make easy to read WA (Chris)
> =

> BSpec: 52890
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 20 +++++++++++---------
>  2 files changed, 19 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 3e375a3b7714..c59e1a604ab8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -601,6 +601,14 @@ static void tgl_ctx_workarounds_init(struct intel_en=
gine_cs *engine,
>  	 */
>  	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK,
>  	       FF_MODE2_TDS_TIMER_128, 0);
> +
> +	/* Wa_1407901919:tgl */
> +	wa_add(wal, ICL_HDC_MODE,
> +	       HDC_COHERENT_ACCESS_L1_CACHE_DIS |
> +	       HDC_DIS_L1_INVAL_FOR_NON_L1_CACHEABLE_W,

I'm not sure if this is what the workaround is asking for.  The way I
understood the workaround, the 2-dword STATE_COMPUTE_MODE instruction
has a couple bits that must be left at 0.  STATE_COMPUTE_MODE is
basically how we ultimately load the HDC_MODE registers (rather than
using a simple LRI like we do for a bunch of other registers), but the
workaround isn't asking us to worry about bits 13+14 in the HDC_MODE
register itself, but rather those flags bits on the instruction that
manipulates the register.

Every time there's a context switch, the hardware will generate a copy
of this instruction as part of the context image in writes to RAM; I'm
assuming these bits aren't set on those hardware-created instructions?
Assuming that's true, then I think this workaround would just be
userspace's responsibility --- if they submit an explicit
STATE_COMPUTE_MODE instruction that isn't just part of the context
image, they need to follow the workaround guidance here and leave two of
those bits set to 0.


Matt

> +	       0,
> +	       HDC_COHERENT_ACCESS_L1_CACHE_DIS |
> +	       HDC_DIS_L1_INVAL_FOR_NON_L1_CACHEABLE_W);
>  }
>  =

>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 80cf02a6eec1..28822585537b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7883,15 +7883,17 @@ enum {
>  #define  GEN8_LQSC_FLUSH_COHERENT_LINES		(1 << 21)
>  =

>  /* GEN8 chicken */
> -#define HDC_CHICKEN0				_MMIO(0x7300)
> -#define CNL_HDC_CHICKEN0			_MMIO(0xE5F0)
> -#define ICL_HDC_MODE				_MMIO(0xE5F4)
> -#define  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
> -#define  HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
> -#define  HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
> -#define  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	(1 << 5)
> -#define  HDC_FORCE_NON_COHERENT			(1 << 4)
> -#define  HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
> +#define HDC_CHICKEN0					_MMIO(0x7300)
> +#define CNL_HDC_CHICKEN0				_MMIO(0xE5F0)
> +#define ICL_HDC_MODE					_MMIO(0xE5F4)
> +#define  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE		REG_BIT(15)
> +#define  HDC_FENCE_DEST_SLM_DISABLE			REG_BIT(14)
> +#define  HDC_DIS_L1_INVAL_FOR_NON_L1_CACHEABLE_W	REG_BIT(13)
> +#define  HDC_COHERENT_ACCESS_L1_CACHE_DIS		REG_BIT(12)
> +#define  HDC_DONOT_FETCH_MEM_WHEN_MASKED		REG_BIT(11)
> +#define  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	REG_BIT(5)
> +#define  HDC_FORCE_NON_COHERENT				REG_BIT(4)
> +#define  HDC_BARRIER_PERFORMANCE_DISABLE		REG_BIT(10)
>  =

>  #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
>  =

> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
