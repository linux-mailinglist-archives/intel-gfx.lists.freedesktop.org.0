Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHOEO0rcw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:59:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B01C32553E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A741510E129;
	Wed, 25 Mar 2026 12:59:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UdRBjp/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AB0910E129;
 Wed, 25 Mar 2026 12:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774443592; x=1805979592;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1LjmH94tHmncqH6DmKgg0r0O5+Lq9wybXqJzEuhinzw=;
 b=UdRBjp/+km50IouymXNm73D1r56J0HATY3obvRzQxfX/kuLiNS4Xdzsk
 BBVXphCF8kvpg56RIeCrcQI+3WCNJW1P6+yDt7o7wNM0PM+XQWOCphVpj
 mpPwFvLzfFGmh/ewUewKkPV1y3GgeQsaCq256UpfZ1g3sjdUh0Btgss9q
 HmQRukBKJQbdPKFt5dk7BFo/UWovDHpty/VTM5QRu1992FV3PqOOesRzf
 ZNWOSMU3aHrUkZO3tEnKb0SLr9T4BFJyOH4rx3WTi86cMIO7fyribqz5u
 NBD8EqagRVZYXPVDA3EsCkBQCCX2j41ZGFByCf72Y7gExHQEpfzHU6k7k Q==;
X-CSE-ConnectionGUID: dDNlHC+xTFKtaiz7XFyqjA==
X-CSE-MsgGUID: Yg1OKMR/ROyw7ZDElj9J+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75379875"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75379875"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:59:51 -0700
X-CSE-ConnectionGUID: Kh0fP9vXQ5ahHAhfYgw/lw==
X-CSE-MsgGUID: Qgd4zL3eSMqWaD6k+AkDIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="224628264"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:59:48 -0700
Date: Wed, 25 Mar 2026 14:59:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 22/26] drm/i915/writeback: Enable writeback interrupts
Message-ID: <acPcQedhq-wTB_Ws@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-23-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-23-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 4B01C32553E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:40PM +0530, Suraj Kandpal wrote:
> Enable writeback interrupts while enabling writeback
> and define the isr handler and schedule work for later
> to signal completion job.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 10 ++++
>  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>  .../gpu/drm/i915/display/intel_writeback.c    | 50 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_writeback.h    |  1 +
>  4 files changed, 62 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 70c1bba7c0a8..656fb314b985 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -29,6 +29,8 @@
>  #include "intel_pmdemand.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
> +#include "intel_writeback.h"
> +#include "intel_writeback_reg.h"
>  
>  static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
>  {
> @@ -1281,6 +1283,11 @@ gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
>  		found = true;
>  	}
>  
> +	if (iir & (GEN8_DE_MISC_WD0)) {
> +		intel_writeback_isr_handler(display);
> +		found = true;
> +	}
> +
>  	if (iir & GEN8_DE_EDP_PSR) {
>  		struct intel_encoder *encoder;
>  		u32 psr_iir;
> @@ -2337,6 +2344,9 @@ void gen8_de_irq_postinstall(struct intel_display *display)
>  	if (DISPLAY_VER(display) < 11)
>  		de_misc_masked |= GEN8_DE_MISC_GSE;
>  
> +	if (DISPLAY_VER(display) >= 13)
> +		de_misc_masked |= GEN8_DE_MISC_WD0;
> +
>  	if (display->platform.geminilake || display->platform.broxton)
>  		de_port_masked |= BXT_DE_PORT_GMBUS;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4746e9ebd920..e637b10597c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1495,6 +1495,7 @@
>  #define  XELPDP_RM_TIMEOUT		REG_BIT(29)
>  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
> +#define  GEN8_DE_MISC_WD0		REG_BIT(23)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
>  #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
>  #define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 54e74450e080..864d4a28de10 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -14,6 +14,7 @@
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "intel_atomic.h"
>  #include "intel_connector.h"
> @@ -323,6 +324,20 @@ void intel_writeback_atomic_commit(struct intel_atomic_state *state)
>  	}
>  }
>  
> +static void
> +intel_writeback_enable_interrupts(struct intel_display *display,
> +				  enum transcoder trans)
> +{
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display, WD_IIR(trans));
> +	intel_de_write_fw(display, WD_IIR(trans), tmp);
> +
> +	tmp = ~(WD_GTT_FAULT_INT | WD_WRITE_COMPLETE_INT |
> +		WD_VBLANK_INT | WD_CAPTURING_INT);
> +	intel_de_write(display, WD_IMR(trans), tmp);

If this is a double buffered IIR register then we really need to use the
i915_irq_regs stuff to do this properly.

> +}
> +
>  static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
>  					   struct intel_encoder *encoder,
>  					   const struct intel_crtc_state *crtc_state,
> @@ -348,6 +363,7 @@ static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
>  	fb = job->fb;
>  	hactive = adjusted_mode->hdisplay;
>  	vactive = adjusted_mode->vdisplay;
> +	intel_writeback_enable_interrupts(display, trans);
>  
>  	/* Configure WD_STRIDE, WD_SURF and WD_TAIL_CFG */
>  	/* Enable Planes, Pipes and Transcoder */
> @@ -509,6 +525,40 @@ intel_writeback_get_hw_state(struct intel_encoder *encoder,
>  	return true;
>  }
>  
> +void intel_writeback_isr_handler(struct intel_display *display)

"isr_handler" is not a term we use anywhere else.

> +{
> +	struct intel_encoder *encoder;
> +	struct intel_writeback_connector *wb_conn;
> +	struct intel_crtc *crtc;
> +	u32 iir;
> +
> +	for_each_intel_encoder(display->drm, encoder) {

We should already know which WD transcoder generated the interrupt.
Iterating all of them blindly doesn't seem right.

> +		if (encoder->type != INTEL_OUTPUT_WRITEBACK)
> +			continue;
> +
> +		wb_conn = enc_to_intel_writeback_connector(encoder);
> +		if (!wb_conn->job) {

The interrupt code shouldn't care about that.

> +			drm_err(display->drm, "No writeback job for the connector\n");
> +			continue;
> +		}
> +
> +		crtc = intel_crtc_for_pipe(display, wb_conn->pipe);

Hmm. The pipe assignment will be dynamic. So looks like this stuff
will need some actual thought...

> +		iir = intel_de_read(display, WD_IIR(wb_conn->trans));
> +		if (iir & WD_GTT_FAULT_INT)
> +			drm_err(display->drm, " GTT fault during writeback\n");

Missing at least the ATS fault.

> +		if (iir & WD_WRITE_COMPLETE_INT)
> +			drm_dbg_kms(display->drm, "Writeback job write completed\n");
> +		if (iir & WD_VBLANK_INT) {
> +			drm_crtc_handle_vblank(&crtc->base);

I suspect the commit completion needs to happen from
WD_WRITE_COMPLETE_INT. So either we put the vblank handling there, or
we use manual commit completion for WD (ala. async flip/DSB/flip queue).

I guess one option would be something like 
  /* armed event for flip queue based updates */
  struct drm_pending_vblank_event *flipq_event;\
+ /* armed event for each WD transcoder */
  struct drm_pending_vblank_event *wd_event[2];

And then we iterate the crtcs, looking for one with an event for the
appropriate WD transcoder.


Another idea that just came to me would be something like this:

struct intel_crtc {
	...
	struct drm_pending_vblank_event *event;
	enum {
		EVENT_NONE,
		EVENT_FLIP_DONE
		EVENT_DSB,
		EVENT_FLIP_QUEUE,
		EVENT_WD0,
		EVENT_WD1,
	} event_type;
	...
};

And then we keep the event and its type in sync while arming/sending.
Would avoid having to keep so many mutually exclusive event pointers
around.

> +			drm_dbg_kms(display->drm, "Writeback vblank raised\n");
> +		}
> +		if (iir & WD_CAPTURING_INT)
> +			drm_dbg_kms(display->drm, "Writeback job capture has started\n");
> +
> +		intel_de_write(display, WD_IIR(wb_conn->trans), iir);
> +	}
> +}
> +
>  int intel_writeback_init(struct intel_display *display)
>  {
>  	struct intel_encoder *encoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
> index 3c145cf73e20..83a986753c4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> @@ -16,6 +16,7 @@ struct intel_writeback_connector;
>  
>  int intel_writeback_init(struct intel_display *display);
>  void intel_writeback_atomic_commit(struct intel_atomic_state *state);
> +void intel_writeback_isr_handler(struct intel_display *display);
>  
>  #endif /* __INTEL_WRITEBACK_H__ */
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
