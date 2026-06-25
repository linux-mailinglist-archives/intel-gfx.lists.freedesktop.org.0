Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NvM/FxIRPWpAwggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 13:29:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AFA6C5196
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 13:29:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KmG3b7CU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7CE10F256;
	Thu, 25 Jun 2026 11:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF7F10F256;
 Thu, 25 Jun 2026 11:29:18 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 932E443D8D;
 Thu, 25 Jun 2026 11:29:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3FEF1F00A3E;
 Thu, 25 Jun 2026 11:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782386958;
 bh=tNJ1NVxqhWYcMIH4UgVGmy8K65blhInh82/ebra74ms=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=KmG3b7CUmLDBnDg4j0CFCuLmHTSuUNYX70k3XSocEnml6Y3ICCMuUe6xtoGOVk4+/
 GdziF/oWEyN5ityralNbN8YdlTe6x4EpIRKzVjmpNGfoU5k4n8/+0rTBYut0dQT/BV
 8k8cqFnLivXYmdYD58MQ6OgzojGlzJ4mbNGUjqmpLNfgEr0TXUMCQdHF1KQdCxB1wx
 Xf8ODpjXTTM+kGpWXDmQHqaD1vxbOubpVsbRnAZI4FuWdfh8V5571pIuHN75iZXqIX
 UduoIKTIn6X+gECKK+ev3MtDW8fqSqKhfqfhFhejMtszCAUNszevveoFK2yhD+KRbn
 0Lw/xI4vxaX2A==
Date: Thu, 25 Jun 2026 13:29:15 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 1/8] drm/i915: call intel_uncore_runtime_resume() for
 each gt
Message-ID: <aj0JHRZyHH2CVgd1@zenone.zhora.eu>
References: <cover.1782311749.git.jani.nikula@intel.com>
 <59d87d12e535aa1a587a9c6884b8a43471ff3131.1782311749.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <59d87d12e535aa1a587a9c6884b8a43471ff3131.1782311749.git.jani.nikula@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9AFA6C5196

Hi Jani,

On Wed, Jun 24, 2026 at 05:36:48PM +0300, Jani Nikula wrote:
> All uncore suspend/resume calls are done on each gt. Follow suit in
> vlv_suspend_complete() error path purely for completeness, even if
> VLV/CHV only have one.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 43f747c3c31f..f6c7270300c9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1545,7 +1545,9 @@ static int i915_pm_runtime_suspend(struct device *kdev)
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
>  			"Runtime suspend failed, disabling it (%d)\n", ret);
> -		intel_uncore_runtime_resume(&dev_priv->uncore);
> +
> +		for_each_gt(gt, dev_priv, i)
> +			intel_uncore_runtime_resume(gt->uncore);

I wonder how we got until now with this. This is on the border
line for a Fixes kind of patches.

Andi

>  		intel_irq_resume(dev_priv);
>  
> -- 
> 2.47.3
> 
