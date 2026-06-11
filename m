Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EtnmOT9dKmrOoAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:01:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7B866F383
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:01:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HEELQdCC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04F510ECFE;
	Thu, 11 Jun 2026 07:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD61010E715;
 Thu, 11 Jun 2026 07:01:16 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id A3BF840C1F;
 Thu, 11 Jun 2026 07:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FA921F00893;
 Thu, 11 Jun 2026 07:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1781161276;
 bh=VWDkvKSB5HPhJp1K3fAV1Rpoi1GjI/+QsXoqWTC10s4=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To;
 b=HEELQdCCFNTEbjWVMs+EqXniulHpn/Ipztc1Rt1X7iPevxjVbrf4G2jE64jo2zPg2
 kvsOjdsrhKB4B9tv3sFM2wYM1/mbbzjDQ/hfxBlJiimjFsKzV2XeF2oQMmge0AozAj
 w1mzEg70KIfla+b76SmGoHVejwGb0RkIat2Ydqzh1qwJLdeqm/dey9CZhcMCC+F6Qx
 tg8FNaUApCR2hjhZOwdtEcWlVqUEqz0Gj6gkHZ6p9HJZWGSVMD72UPTDt4ezu2O/p7
 CmsjdNgx1/AyHHVeHtxXl0ACfqnBjZqqUFXrs5GOmPfFfbStygGGmiF0O7mmInA1TL
 uW8bN3NiY9BnA==
Message-ID: <e3b30034-70c2-43ce-be46-938e2b07d5ba@kernel.org>
Date: Thu, 11 Jun 2026 09:01:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hans Verkuil <hverkuil+cisco@kernel.org>
Subject: Re: [PATCH] drm/dp: Service the CEC tunneling IRQ flags without
 CEC_IRQ in ESI1
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Hans Verkuil <hverkuil@kernel.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20260610174833.6284-1-alexander.kaplan@sms-medipool.de>
Content-Language: en-US, nl
In-Reply-To: <20260610174833.6284-1-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[cisco];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hverkuil@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F7B866F383

Hi Alexander,

On 10/06/2026 19:48, Alexander Kaplan wrote:
> The DP standard requires a DP-to-HDMI protocol converter to assert
> an IRQ_HPD pulse with the CEC_IRQ bit in the
> DEVICE_SERVICE_IRQ_VECTOR_ESI1 register set whenever it sets a bit in
> the CEC_TUNNELING_IRQ_FLAGS register (DP v2.0, Table 2-194, DPCD
> address 3004h).
> 
> The Synaptics VMM7100 based DP-to-HDMI protocol converters get this
> half right.
> They assert an IRQ_HPD pulse for each CEC event, but never set the
> CEC_IRQ bit.
> ESI1 reads as 0 at the very moment CEC_TUNNELING_IRQ_FLAGS has the
> corresponding TX/RX flags set.
> drm_dp_cec_irq() trusts the bit and returns without servicing the
> flags, so no transmit is ever completed and the CEC adapter is
> unusable with these devices.
> Every transmit times out, claiming a logical address fails and the
> /dev/cecX device ends up unconfigured.
> The converter's CEC engine itself works fine.
> Driving the CEC tunneling DPCD registers manually shows the TV
> ACKing the tunneled messages and sending requests of its own.
> 
> Demote the CEC_IRQ bit from a gate to an acknowledge hint: service
> the CEC tunneling IRQ flags on every IRQ_HPD pulse, whether or not
> the branch device set CEC_IRQ, and acknowledge CEC_IRQ in ESI1 only
> when it was actually set.
> Servicing is idempotent since every action is keyed to a
> write-1-to-clear flag bit, so for branch devices with no pending CEC
> event this amounts to one additional AUX read of the flags register,
> and only on connectors that advertise the CEC tunneling capability
> (without it no CEC adapter is registered and drm_dp_cec_irq()
> returns early as before).
> Devices that conformantly set CEC_IRQ are serviced exactly as before.
> 
> With this the CEC adapter of a VMM7100 based USB-C to HDMI adapter
> configures and transmits successfully (verified against an LG OLED
> TV with an Intel Panther Lake xe device, including TV power on/off
> over CEC).
> 
> Fixes: 2c6d1fffa1d9 ("drm: add support for DisplayPort CEC-Tunneling-over-AUX")
> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
> This patch is part of a set of independent fixes for the USB-C to DP
> to HDMI 2.1 protocol converter (PCON) path, found and verified on an
> ASUS NUC 16 Pro (Panther Lake, xe) with Synaptics VMM7100 based
> adapters.
> Each part stands on its own and can be merged independently.
> The other parts:
> [1] https://lore.kernel.org/r/20260610174413.5881-1-alexander.kaplan@sms-medipool.de
> [2] https://lore.kernel.org/r/20260610174807.6231-1-alexander.kaplan@sms-medipool.de
> [3] https://lore.kernel.org/r/20260610174819.6258-1-alexander.kaplan@sms-medipool.de
>  drivers/gpu/drm/display/drm_dp_cec.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_cec.c b/drivers/gpu/drm/display/drm_dp_cec.c
> index 436bfe9f9081..824a99f86a3d 100644
> --- a/drivers/gpu/drm/display/drm_dp_cec.c
> +++ b/drivers/gpu/drm/display/drm_dp_cec.c
> @@ -218,6 +218,9 @@ static void drm_dp_cec_handle_irq(struct drm_dp_aux *aux)
>  	if (drm_dp_dpcd_read_byte(aux, DP_CEC_TUNNELING_IRQ_FLAGS, &flags) < 0)
>  		return;
>  
> +	if (!flags)
> +		return;
> +
>  	if (flags & DP_CEC_RX_MESSAGE_INFO_VALID)
>  		drm_dp_cec_received(aux);
>  
> @@ -255,11 +258,22 @@ void drm_dp_cec_irq(struct drm_dp_aux *aux)
>  
>  	ret = drm_dp_dpcd_read_byte(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1,
>  				    &cec_irq);
> -	if (ret < 0 || !(cec_irq & DP_CEC_IRQ))
> +	if (ret < 0)
>  		goto unlock;

I saw that you added a quirk for this device in this patch series:

https://lore.kernel.org/all/20260610174807.6231-2-alexander.kaplan@sms-medipool.de/

Should we add a quirk for this as well? It's not worth it if that's a lot of work,
but if it is easy to add, then I think that's the better approach for this.

Regards,

	Hans

>  
> +	/*
> +	 * Some branch devices, for instance the Synaptics VMM7100 based
> +	 * DP-to-HDMI protocol converters, assert an IRQ_HPD pulse for each
> +	 * CEC event, but never set the CEC_IRQ bit in the
> +	 * DEVICE_SERVICE_IRQ_VECTOR_ESI1 register. Check the CEC tunneling
> +	 * IRQ flags even without CEC_IRQ being set: servicing the flags is
> +	 * idempotent and only costs one additional AUX read.
> +	 */
>  	drm_dp_cec_handle_irq(aux);
> -	drm_dp_dpcd_write_byte(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, DP_CEC_IRQ);
> +
> +	if (cec_irq & DP_CEC_IRQ)
> +		drm_dp_dpcd_write_byte(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1,
> +				       DP_CEC_IRQ);
>  unlock:
>  	mutex_unlock(&aux->cec.lock);
>  }

