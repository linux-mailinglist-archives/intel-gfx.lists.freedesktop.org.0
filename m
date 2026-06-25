Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wUKvJOBHPWr50ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 17:23:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019846C7066
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 17:23:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=noaEykE2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601DB10F310;
	Thu, 25 Jun 2026 15:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D7A10F311;
 Thu, 25 Jun 2026 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782400989; x=1813936989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=izqtDzGnHbtQxmtPbrBFDOh/jxd8obvs5oRqGmLQp8s=;
 b=noaEykE2DWWkb+54FQRSQlzSaaz+o6dQ+rNABvnEIfw6K/MCyyPaZ2x5
 0dvcl0sd28WtzJOXfrTkjoBEovSHSpq9T/eUMoshizsnvt9F952Oa8hwW
 sE9jZFQakcsHIRgzrY4grbauiAEdXdsWTpQKsO4zfNI1gm8STp1O+HKDG
 x/f7JpAzIqDJ8Rkm/4pyzjGFgR0BtT3a5Ve0AAHIS2ze4oj33V/Kvq5Sc
 fv5TJNApDlFTG/ao+0MbowiXO/fhXUYbhCZLCCEftt75VeiYU66anpmMg
 I/tl5poJ790gw/oAZp9MPAuQhzDReBr/JEVHvHwD/SgPLDEJqC20BNjCg g==;
X-CSE-ConnectionGUID: 0hps54/fTLecjMFNEcl80Q==
X-CSE-MsgGUID: ebDy0K8tQayIp6L4ZmB/Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83056872"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83056872"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:22:57 -0700
X-CSE-ConnectionGUID: b/SIcBjkR8K01b+45U1XYg==
X-CSE-MsgGUID: cc8dx6h4S8SoRjjm6y4ZuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="251333019"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:22:56 -0700
Date: Thu, 25 Jun 2026 17:22:53 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH] drm/i915/gt: Return bool values from a boolean helper
Message-ID: <aj1HzUjokwiZCk7T@black.igk.intel.com>
References: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raag.jadav@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,black.igk.intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 019846C7066

On Thu, Jun 25, 2026 at 01:44:42PM +0200, Andi Shyti wrote:
> intel_has_gpu_reset() returns logically correct values by
> returning a function pointer when GPU reset is supported and
> NULL otherwise. However, as a boolean helper, it is more
> appropriate to return explicit true or false values.
> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index b2cf672564dd..a3f198646e1d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -797,9 +797,9 @@ static int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask
>  bool intel_has_gpu_reset(const struct intel_gt *gt)
>  {
>  	if (!gt->i915->params.reset)
> -		return NULL;
> +		return false;

I know the logic remains the same but isn't this Fixes material?

Raag

> -	return intel_get_gpu_reset(gt);
> +	return !!intel_get_gpu_reset(gt);
>  }
>  
>  bool intel_has_reset_engine(const struct intel_gt *gt)
> -- 
> 2.53.0
> 
