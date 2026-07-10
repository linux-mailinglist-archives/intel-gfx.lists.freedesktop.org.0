Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cxojI2n/UGoP9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 16:19:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA5173BB16
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 16:19:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h0IPrYyR;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5339588697;
	Fri, 10 Jul 2026 14:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D45810E1A3;
 Fri, 10 Jul 2026 14:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783693156; x=1815229156;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5xqZRoVs04553QBmifkFy6kQq1W0V6AgofrU2LzY4b4=;
 b=h0IPrYyRj6ZtNK0z8XXJgn5IcRVuC4zv6wJw6uqLdyySSqtPY2BXnuE2
 RCIBVaAKEW48qQ5qotMHMKAJHADCttIv6eNY2wW2aEpniEygjQhKSG3YD
 /n19SFiE3xKxGE0iWqi0/qIiqoqMgVPpdH2xgtFo5zFySWyibMjI8r0D3
 jMXcJWQ2o07AuhFHxZnZ/TLZ/iyKFhvgyHuBgQ+agE15EewpfJquzueWE
 wf8khPHeaklkLK5Vp3ifG6DqeKgQxzxqZRnOja2jtHwi3qt5bNdQdHndP
 PQe8scmjO6U6NCpJr7FkB79S1KOaImtMAr/Fwq3vwVDg+A54KihLIXNv6 g==;
X-CSE-ConnectionGUID: rpDZlTWsTviJ1vezBcALKQ==
X-CSE-MsgGUID: 8VooMGfkR4WobwifIGADug==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88221517"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88221517"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 07:19:16 -0700
X-CSE-ConnectionGUID: 39XakDziQVK2bUUHMr0pDQ==
X-CSE-MsgGUID: rYgknKpmSgCro8CFVSEccw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="250909834"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.208])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 07:19:14 -0700
Date: Fri, 10 Jul 2026 17:19:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 10/10] drm/i915/display: Do not take uncore lock in
 i915_get_vblank_counter
Message-ID: <alD_YJbOxdRUJTQZ@intel.com>
References: <20260702072154.171324-1-dev@lankhorst.se>
 <20260702072154.171324-11-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260702072154.171324-11-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.72 / 15.00];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7BA5173BB16

On Thu, Jul 02, 2026 at 09:21:53AM +0200, Maarten Lankhorst wrote:
> This fixes a lockdep splat that occurs in the code that should be run
> with interrupts disabled. The uncore and DMC locks should not be taken
> and released repeatedly in a timing sensitive path.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_de.h       |  8 ++++++
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  4 +--
>  drivers/gpu/drm/i915/intel_uncore.h           | 26 +++++++++++++------
>  .../drm/xe/compat-i915-headers/intel_uncore.h |  7 +++++
>  4 files changed, 35 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 1029790194296..497a308322847 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -65,6 +65,14 @@ intel_de_read64_2x32(struct intel_display *display, intel_reg_t reg)
>  	return (u64)upper << 32 | lower;
>  }
>  
> +static inline u64
> +intel_de_read64_2x32_fw(struct intel_display *display,
> +			i915_reg_t lower_reg, i915_reg_t upper_reg)
> +{
> +	return intel_uncore_read64_2x32_fw(__to_uncore(display),
> +					   lower_reg, upper_reg);
> +}
> +
>  static inline void
>  intel_de_posting_read(struct intel_display *display, intel_reg_t reg)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index c0cc0a4c25dbe..5ca22899055d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -109,8 +109,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  	 * we get a low value that's stable across two reads of the high
>  	 * register.
>  	 */
> -	frame = intel_de_read64_2x32_volatile(display, PIPEFRAMEPIXEL(display, pipe),
> -					      PIPEFRAME(display, pipe));
> +	frame = intel_de_read64_2x32_fw(display, PIPEFRAMEPIXEL(display, pipe),
> +				        PIPEFRAME(display, pipe));

This is the only user of intel_de_read64_2x32_volatile() and it
doesn't need any locking/wakelocks/etc so we should just convert
intel_de_read64_2x32_volatile() into intel_de_read64_2x32_volatile_fw().
And we should just skip the uncore dependency (so that we'll have one 
less thing to worry about later) so I'd just implement it directly in
intel_de.[ch] in terms of intel_de_read_fw().

>  
>  	pixel = frame & PIPE_PIXEL_MASK;
>  	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index fafc2ca9a2376..507398a562649 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -449,13 +449,28 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
>  		intel_uncore_write_fw(uncore, reg, val);
>  }
>  
> +static inline u64
> +intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
> +			    i915_reg_t lower_reg, i915_reg_t upper_reg)
> +{
> +	u32 upper, lower, old_upper, loop = 0;
> +	upper = intel_uncore_read_fw(uncore, upper_reg);
> +	do {
> +		old_upper = upper;
> +		lower = intel_uncore_read_fw(uncore, lower_reg);
> +		upper = intel_uncore_read_fw(uncore, upper_reg);
> +	} while (upper != old_upper && loop++ < 2);
> +
> +	return (u64)upper << 32 | lower;
> +}
> +
>  static inline u64
>  intel_uncore_read64_2x32(struct intel_uncore *uncore,
>  			 i915_reg_t lower_reg, i915_reg_t upper_reg)
>  {
> -	u32 upper, lower, old_upper, loop = 0;
>  	enum forcewake_domains fw_domains;
>  	unsigned long flags;
> +	u64 ret;
>  
>  	fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
>  						    FW_REG_READ);
> @@ -466,17 +481,12 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
>  	spin_lock_irqsave(&uncore->lock, flags);
>  	intel_uncore_forcewake_get__locked(uncore, fw_domains);
>  
> -	upper = intel_uncore_read_fw(uncore, upper_reg);
> -	do {
> -		old_upper = upper;
> -		lower = intel_uncore_read_fw(uncore, lower_reg);
> -		upper = intel_uncore_read_fw(uncore, upper_reg);
> -	} while (upper != old_upper && loop++ < 2);
> +	ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
>  
>  	intel_uncore_forcewake_put__locked(uncore, fw_domains);
>  	spin_unlock_irqrestore(&uncore->lock, flags);
>  
> -	return (u64)upper << 32 | lower;
> +	return ret;
>  }
>  
>  static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index 08d7ab9336725..764bc94044537 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -74,6 +74,13 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
>  	return (u64)upper << 32 | lower;
>  }
>  
> +static inline u64
> +intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
> +			    i915_reg_t i915_lower_reg, i915_reg_t i915_upper_reg)
> +{
> +	return intel_uncore_read64_2x32(uncore, i915_lower_reg, i915_upper_reg);
> +}
> +
>  static inline void intel_uncore_posting_read(struct intel_uncore *uncore,
>  					     i915_reg_t i915_reg)
>  {
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
