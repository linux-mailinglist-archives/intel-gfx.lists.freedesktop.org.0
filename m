Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D6E8B9945
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 12:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0539E10F516;
	Thu,  2 May 2024 10:45:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="vlMVsrI/";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="XNt3ZK8L";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="vlMVsrI/";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="XNt3ZK8L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC13210F505;
 Thu,  2 May 2024 10:45:25 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1A911220D5;
 Thu,  2 May 2024 10:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1714646724; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=dShal49qzMJOaprHIDj7vzcoGa5acs3pLKeWnoPVWK0=;
 b=vlMVsrI/Bri5aOD744bP9iV95v0Fg7K+Q8VitK4L+uPFAU3Isc9zAEjGQ5LC8n8cnJL8vP
 pKv79Z5ykCaEGVPsF2jos64s9TDrr4SFn4gVaTMySHDI+7dCh6Ke7VmcDz9ja6VXwA4NvP
 6gxDN3ZJPwbo8mP5eugxNQKT8m1O5SI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1714646724;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=dShal49qzMJOaprHIDj7vzcoGa5acs3pLKeWnoPVWK0=;
 b=XNt3ZK8L9MOg9nLCPgxQrV6Y7COwXxr+o50uV6VmHPFMEz0sewNrcShJaoxigKAsQrhIUq
 XmvPS3h0NEZWtUBA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1714646724; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=dShal49qzMJOaprHIDj7vzcoGa5acs3pLKeWnoPVWK0=;
 b=vlMVsrI/Bri5aOD744bP9iV95v0Fg7K+Q8VitK4L+uPFAU3Isc9zAEjGQ5LC8n8cnJL8vP
 pKv79Z5ykCaEGVPsF2jos64s9TDrr4SFn4gVaTMySHDI+7dCh6Ke7VmcDz9ja6VXwA4NvP
 6gxDN3ZJPwbo8mP5eugxNQKT8m1O5SI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1714646724;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=dShal49qzMJOaprHIDj7vzcoGa5acs3pLKeWnoPVWK0=;
 b=XNt3ZK8L9MOg9nLCPgxQrV6Y7COwXxr+o50uV6VmHPFMEz0sewNrcShJaoxigKAsQrhIUq
 XmvPS3h0NEZWtUBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A49E41386E;
 Thu,  2 May 2024 10:45:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap1.dmz-prg2.suse.org with ESMTPSA id Cl4CJ8NuM2ZCFgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 02 May 2024 10:45:23 +0000
Message-ID: <5b651ff1-8d33-4525-ac57-513d2ab452cd@suse.de>
Date: Thu, 2 May 2024 12:45:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 02/12] drm/gma500: Make I2C terminology more inclusive
To: Easwar Hariharan <eahariha@linux.microsoft.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 "open list:BTTV VIDEO4LINUX DRIVER" <linux-media@vger.kernel.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>
References: <20240430173812.1423757-1-eahariha@linux.microsoft.com>
 <20240430173812.1423757-3-eahariha@linux.microsoft.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20240430173812.1423757-3-eahariha@linux.microsoft.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: 
X-Spamd-Result: default: False [-2.79 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 XM_UA_NO_VERSION(0.01)[]; TAGGED_RCPT(0.00)[renesas];
 RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_TO(0.00)[linux.microsoft.com,gmail.com,linux.intel.com,kernel.org,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
 RCPT_COUNT_TWELVE(0.00)[16]; MID_RHS_MATCH_FROM(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; RCVD_TLS_ALL(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email]
X-Spam-Score: -2.79
X-Spam-Flag: NO
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



Am 30.04.24 um 19:38 schrieb Easwar Hariharan:
> I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"
> with more appropriate terms. Inspired by and following on to Wolfram's
> series to fix drivers/i2c/[1], fix the terminology for users of
> I2C_ALGOBIT bitbanging interface, now that the approved verbiage exists
> in the specification.
>
> Compile tested, no functionality changes intended
>
> [1]: https://lore.kernel.org/all/20240322132619.6389-1-wsa+renesas@sang-engineering.com/
>
> Signed-off-by: Easwar Hariharan <eahariha@linux.microsoft.com>

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

> ---
>   drivers/gpu/drm/gma500/cdv_intel_lvds.c |  2 +-
>   drivers/gpu/drm/gma500/intel_bios.c     | 22 ++++++++++-----------
>   drivers/gpu/drm/gma500/intel_bios.h     |  4 ++--
>   drivers/gpu/drm/gma500/intel_gmbus.c    |  2 +-
>   drivers/gpu/drm/gma500/psb_drv.h        |  2 +-
>   drivers/gpu/drm/gma500/psb_intel_drv.h  |  2 +-
>   drivers/gpu/drm/gma500/psb_intel_lvds.c |  4 ++--
>   drivers/gpu/drm/gma500/psb_intel_sdvo.c | 26 ++++++++++++-------------
>   8 files changed, 32 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/gma500/cdv_intel_lvds.c b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
> index f08a6803dc18..c7652a02b42e 100644
> --- a/drivers/gpu/drm/gma500/cdv_intel_lvds.c
> +++ b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
> @@ -565,7 +565,7 @@ void cdv_intel_lvds_init(struct drm_device *dev,
>   			dev->dev, "I2C bus registration failed.\n");
>   		goto err_encoder_cleanup;
>   	}
> -	gma_encoder->i2c_bus->slave_addr = 0x2C;
> +	gma_encoder->i2c_bus->target_addr = 0x2C;
>   	dev_priv->lvds_i2c_bus = gma_encoder->i2c_bus;
>   
>   	/*
> diff --git a/drivers/gpu/drm/gma500/intel_bios.c b/drivers/gpu/drm/gma500/intel_bios.c
> index 8245b5603d2c..d5924ca3ed05 100644
> --- a/drivers/gpu/drm/gma500/intel_bios.c
> +++ b/drivers/gpu/drm/gma500/intel_bios.c
> @@ -14,8 +14,8 @@
>   #include "psb_intel_drv.h"
>   #include "psb_intel_reg.h"
>   
> -#define	SLAVE_ADDR1	0x70
> -#define	SLAVE_ADDR2	0x72
> +#define	TARGET_ADDR1	0x70
> +#define	TARGET_ADDR2	0x72
>   
>   static void *find_section(struct bdb_header *bdb, int section_id)
>   {
> @@ -357,10 +357,10 @@ parse_sdvo_device_mapping(struct drm_psb_private *dev_priv,
>   			/* skip the device block if device type is invalid */
>   			continue;
>   		}
> -		if (p_child->slave_addr != SLAVE_ADDR1 &&
> -			p_child->slave_addr != SLAVE_ADDR2) {
> +		if (p_child->target_addr != TARGET_ADDR1 &&
> +			p_child->target_addr != TARGET_ADDR2) {
>   			/*
> -			 * If the slave address is neither 0x70 nor 0x72,
> +			 * If the target address is neither 0x70 nor 0x72,
>   			 * it is not a SDVO device. Skip it.
>   			 */
>   			continue;
> @@ -371,22 +371,22 @@ parse_sdvo_device_mapping(struct drm_psb_private *dev_priv,
>   			DRM_DEBUG_KMS("Incorrect SDVO port. Skip it\n");
>   			continue;
>   		}
> -		DRM_DEBUG_KMS("the SDVO device with slave addr %2x is found on"
> +		DRM_DEBUG_KMS("the SDVO device with target addr %2x is found on"
>   				" %s port\n",
> -				p_child->slave_addr,
> +				p_child->target_addr,
>   				(p_child->dvo_port == DEVICE_PORT_DVOB) ?
>   					"SDVOB" : "SDVOC");
>   		p_mapping = &(dev_priv->sdvo_mappings[p_child->dvo_port - 1]);
>   		if (!p_mapping->initialized) {
>   			p_mapping->dvo_port = p_child->dvo_port;
> -			p_mapping->slave_addr = p_child->slave_addr;
> +			p_mapping->target_addr = p_child->target_addr;
>   			p_mapping->dvo_wiring = p_child->dvo_wiring;
>   			p_mapping->ddc_pin = p_child->ddc_pin;
>   			p_mapping->i2c_pin = p_child->i2c_pin;
>   			p_mapping->initialized = 1;
>   			DRM_DEBUG_KMS("SDVO device: dvo=%x, addr=%x, wiring=%d, ddc_pin=%d, i2c_pin=%d\n",
>   				      p_mapping->dvo_port,
> -				      p_mapping->slave_addr,
> +				      p_mapping->target_addr,
>   				      p_mapping->dvo_wiring,
>   				      p_mapping->ddc_pin,
>   				      p_mapping->i2c_pin);
> @@ -394,10 +394,10 @@ parse_sdvo_device_mapping(struct drm_psb_private *dev_priv,
>   			DRM_DEBUG_KMS("Maybe one SDVO port is shared by "
>   					 "two SDVO device.\n");
>   		}
> -		if (p_child->slave2_addr) {
> +		if (p_child->target2_addr) {
>   			/* Maybe this is a SDVO device with multiple inputs */
>   			/* And the mapping info is not added */
> -			DRM_DEBUG_KMS("there exists the slave2_addr. Maybe this"
> +			DRM_DEBUG_KMS("there exists the target2_addr. Maybe this"
>   				" is a SDVO device with multiple inputs.\n");
>   		}
>   		count++;
> diff --git a/drivers/gpu/drm/gma500/intel_bios.h b/drivers/gpu/drm/gma500/intel_bios.h
> index 0e6facf21e33..b5adea2a20c3 100644
> --- a/drivers/gpu/drm/gma500/intel_bios.h
> +++ b/drivers/gpu/drm/gma500/intel_bios.h
> @@ -186,13 +186,13 @@ struct child_device_config {
>   	u16 addin_offset;
>   	u8  dvo_port; /* See Device_PORT_* above */
>   	u8  i2c_pin;
> -	u8  slave_addr;
> +	u8  target_addr;
>   	u8  ddc_pin;
>   	u16 edid_ptr;
>   	u8  dvo_cfg; /* See DEVICE_CFG_* above */
>   	u8  dvo2_port;
>   	u8  i2c2_pin;
> -	u8  slave2_addr;
> +	u8  target2_addr;
>   	u8  ddc2_pin;
>   	u8  capabilities;
>   	u8  dvo_wiring;/* See DEVICE_WIRE_* above */
> diff --git a/drivers/gpu/drm/gma500/intel_gmbus.c b/drivers/gpu/drm/gma500/intel_gmbus.c
> index aa45509859f2..ee8b047587f2 100644
> --- a/drivers/gpu/drm/gma500/intel_gmbus.c
> +++ b/drivers/gpu/drm/gma500/intel_gmbus.c
> @@ -333,7 +333,7 @@ gmbus_xfer(struct i2c_adapter *adapter,
>   clear_err:
>   	/* Toggle the Software Clear Interrupt bit. This has the effect
>   	 * of resetting the GMBUS controller and so clearing the
> -	 * BUS_ERROR raised by the slave's NAK.
> +	 * BUS_ERROR raised by the target's NAK.
>   	 */
>   	GMBUS_REG_WRITE(GMBUS1 + reg_offset, GMBUS_SW_CLR_INT);
>   	GMBUS_REG_WRITE(GMBUS1 + reg_offset, 0);
> diff --git a/drivers/gpu/drm/gma500/psb_drv.h b/drivers/gpu/drm/gma500/psb_drv.h
> index c5edfa4aa4cc..eeab6afb42dc 100644
> --- a/drivers/gpu/drm/gma500/psb_drv.h
> +++ b/drivers/gpu/drm/gma500/psb_drv.h
> @@ -203,7 +203,7 @@ struct psb_intel_opregion {
>   struct sdvo_device_mapping {
>   	u8 initialized;
>   	u8 dvo_port;
> -	u8 slave_addr;
> +	u8 target_addr;
>   	u8 dvo_wiring;
>   	u8 i2c_pin;
>   	u8 i2c_speed;
> diff --git a/drivers/gpu/drm/gma500/psb_intel_drv.h b/drivers/gpu/drm/gma500/psb_intel_drv.h
> index c111e933e1ed..2499fd6a80c9 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_drv.h
> +++ b/drivers/gpu/drm/gma500/psb_intel_drv.h
> @@ -80,7 +80,7 @@ struct psb_intel_mode_device {
>   struct gma_i2c_chan {
>   	struct i2c_adapter base;
>   	struct i2c_algo_bit_data algo;
> -	u8 slave_addr;
> +	u8 target_addr;
>   
>   	/* for getting at dev. private (mmio etc.) */
>   	struct drm_device *drm_dev;
> diff --git a/drivers/gpu/drm/gma500/psb_intel_lvds.c b/drivers/gpu/drm/gma500/psb_intel_lvds.c
> index 8486de230ec9..d1cd9a940395 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_lvds.c
> +++ b/drivers/gpu/drm/gma500/psb_intel_lvds.c
> @@ -97,7 +97,7 @@ static int psb_lvds_i2c_set_brightness(struct drm_device *dev,
>   
>   	struct i2c_msg msgs[] = {
>   		{
> -			.addr = lvds_i2c_bus->slave_addr,
> +			.addr = lvds_i2c_bus->target_addr,
>   			.flags = 0,
>   			.len = 2,
>   			.buf = out_buf,
> @@ -707,7 +707,7 @@ void psb_intel_lvds_init(struct drm_device *dev,
>   			dev->dev, "I2C bus registration failed.\n");
>   		goto err_encoder_cleanup;
>   	}
> -	lvds_priv->i2c_bus->slave_addr = 0x2C;
> +	lvds_priv->i2c_bus->target_addr = 0x2C;
>   	dev_priv->lvds_i2c_bus =  lvds_priv->i2c_bus;
>   
>   	/*
> diff --git a/drivers/gpu/drm/gma500/psb_intel_sdvo.c b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
> index e4f914deceba..8dafff963ca8 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_sdvo.c
> +++ b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
> @@ -70,7 +70,7 @@ struct psb_intel_sdvo {
>   	struct gma_encoder base;
>   
>   	struct i2c_adapter *i2c;
> -	u8 slave_addr;
> +	u8 target_addr;
>   
>   	struct i2c_adapter ddc;
>   
> @@ -259,13 +259,13 @@ static bool psb_intel_sdvo_read_byte(struct psb_intel_sdvo *psb_intel_sdvo, u8 a
>   {
>   	struct i2c_msg msgs[] = {
>   		{
> -			.addr = psb_intel_sdvo->slave_addr,
> +			.addr = psb_intel_sdvo->target_addr,
>   			.flags = 0,
>   			.len = 1,
>   			.buf = &addr,
>   		},
>   		{
> -			.addr = psb_intel_sdvo->slave_addr,
> +			.addr = psb_intel_sdvo->target_addr,
>   			.flags = I2C_M_RD,
>   			.len = 1,
>   			.buf = ch,
> @@ -463,14 +463,14 @@ static bool psb_intel_sdvo_write_cmd(struct psb_intel_sdvo *psb_intel_sdvo, u8 c
>   	psb_intel_sdvo_debug_write(psb_intel_sdvo, cmd, args, args_len);
>   
>   	for (i = 0; i < args_len; i++) {
> -		msgs[i].addr = psb_intel_sdvo->slave_addr;
> +		msgs[i].addr = psb_intel_sdvo->target_addr;
>   		msgs[i].flags = 0;
>   		msgs[i].len = 2;
>   		msgs[i].buf = buf + 2 *i;
>   		buf[2*i + 0] = SDVO_I2C_ARG_0 - i;
>   		buf[2*i + 1] = ((u8*)args)[i];
>   	}
> -	msgs[i].addr = psb_intel_sdvo->slave_addr;
> +	msgs[i].addr = psb_intel_sdvo->target_addr;
>   	msgs[i].flags = 0;
>   	msgs[i].len = 2;
>   	msgs[i].buf = buf + 2*i;
> @@ -479,12 +479,12 @@ static bool psb_intel_sdvo_write_cmd(struct psb_intel_sdvo *psb_intel_sdvo, u8 c
>   
>   	/* the following two are to read the response */
>   	status = SDVO_I2C_CMD_STATUS;
> -	msgs[i+1].addr = psb_intel_sdvo->slave_addr;
> +	msgs[i+1].addr = psb_intel_sdvo->target_addr;
>   	msgs[i+1].flags = 0;
>   	msgs[i+1].len = 1;
>   	msgs[i+1].buf = &status;
>   
> -	msgs[i+2].addr = psb_intel_sdvo->slave_addr;
> +	msgs[i+2].addr = psb_intel_sdvo->target_addr;
>   	msgs[i+2].flags = I2C_M_RD;
>   	msgs[i+2].len = 1;
>   	msgs[i+2].buf = &status;
> @@ -1899,7 +1899,7 @@ psb_intel_sdvo_is_hdmi_connector(struct psb_intel_sdvo *psb_intel_sdvo, int devi
>   }
>   
>   static u8
> -psb_intel_sdvo_get_slave_addr(struct drm_device *dev, int sdvo_reg)
> +psb_intel_sdvo_get_target_addr(struct drm_device *dev, int sdvo_reg)
>   {
>   	struct drm_psb_private *dev_priv = to_drm_psb_private(dev);
>   	struct sdvo_device_mapping *my_mapping, *other_mapping;
> @@ -1913,14 +1913,14 @@ psb_intel_sdvo_get_slave_addr(struct drm_device *dev, int sdvo_reg)
>   	}
>   
>   	/* If the BIOS described our SDVO device, take advantage of it. */
> -	if (my_mapping->slave_addr)
> -		return my_mapping->slave_addr;
> +	if (my_mapping->target_addr)
> +		return my_mapping->target_addr;
>   
>   	/* If the BIOS only described a different SDVO device, use the
>   	 * address that it isn't using.
>   	 */
> -	if (other_mapping->slave_addr) {
> -		if (other_mapping->slave_addr == 0x70)
> +	if (other_mapping->target_addr) {
> +		if (other_mapping->target_addr == 0x70)
>   			return 0x72;
>   		else
>   			return 0x70;
> @@ -2446,7 +2446,7 @@ bool psb_intel_sdvo_init(struct drm_device *dev, int sdvo_reg)
>   		return false;
>   
>   	psb_intel_sdvo->sdvo_reg = sdvo_reg;
> -	psb_intel_sdvo->slave_addr = psb_intel_sdvo_get_slave_addr(dev, sdvo_reg) >> 1;
> +	psb_intel_sdvo->target_addr = psb_intel_sdvo_get_target_addr(dev, sdvo_reg) >> 1;
>   	psb_intel_sdvo_select_i2c_bus(dev_priv, psb_intel_sdvo, sdvo_reg);
>   	if (!psb_intel_sdvo_init_ddc_proxy(psb_intel_sdvo, dev)) {
>   		kfree(psb_intel_sdvo);

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

