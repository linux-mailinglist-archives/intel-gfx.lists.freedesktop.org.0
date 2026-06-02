Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGajECq9HmrZJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 13:23:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE0A62D617
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 13:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F5910EF7D;
	Tue,  2 Jun 2026 11:23:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="sEVO3Ijn";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="C2aliXHX";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="sEVO3Ijn";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="C2aliXHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD4410EF7B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 11:23:15 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 32D646A8A7;
 Tue,  2 Jun 2026 11:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780399394; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=cof2ipM+x0CWa/f1vOlZ/iw2a5IthrZAjRvKs+9jnTk=;
 b=sEVO3IjnLEHwuBD311nyOQcAu5mJpBfGeCc+25IeNYtY6OOzgT44OAbUVRvXJjTk2npbmo
 mYXDZx5QpOcIBh8L4kFr7xZZ2W5b9hH9jd3a0tjGYCQLcZwhQr+QID0j5Py/WUIaEa488r
 jIHYlhtiw2utvlhcZQDCbFEzu00CZl8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780399394;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=cof2ipM+x0CWa/f1vOlZ/iw2a5IthrZAjRvKs+9jnTk=;
 b=C2aliXHXCbujCwIy6eTPZp8OjA92tWwvAQYTUluvMRf9v+3J/dTQYVr39RovBpI+T1JYyQ
 3AJtQqqMZOSpbbCA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780399394; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=cof2ipM+x0CWa/f1vOlZ/iw2a5IthrZAjRvKs+9jnTk=;
 b=sEVO3IjnLEHwuBD311nyOQcAu5mJpBfGeCc+25IeNYtY6OOzgT44OAbUVRvXJjTk2npbmo
 mYXDZx5QpOcIBh8L4kFr7xZZ2W5b9hH9jd3a0tjGYCQLcZwhQr+QID0j5Py/WUIaEa488r
 jIHYlhtiw2utvlhcZQDCbFEzu00CZl8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780399394;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=cof2ipM+x0CWa/f1vOlZ/iw2a5IthrZAjRvKs+9jnTk=;
 b=C2aliXHXCbujCwIy6eTPZp8OjA92tWwvAQYTUluvMRf9v+3J/dTQYVr39RovBpI+T1JYyQ
 3AJtQqqMZOSpbbCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id DBADB779A7;
 Tue,  2 Jun 2026 11:23:13 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id B4JuNCG9HmrKPgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 02 Jun 2026 11:23:13 +0000
Message-ID: <bec1d275-8c6e-48d9-8611-137dfaf52acf@suse.de>
Date: Tue, 2 Jun 2026 13:23:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/dumb-buffers: Increase size limits to match current
 devices
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "rajat.gupta@oss.qualcomm.com" <rajat.gupta@oss.qualcomm.com>,
 "simona@ffwll.ch" <simona@ffwll.ch>, "airlied@gmail.com"
 <airlied@gmail.com>, "mripard@kernel.org" <mripard@kernel.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
References: <20260602073027.192758-1-tzimmermann@suse.de>
 <PH3PPFAB42632359128CE02EC820D17E137E0122@PH3PPFAB4263235.namprd11.prod.outlook.com>
 <577c2e6c08b96844a5144bee0d5a0536b4ab939e@intel.com>
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
In-Reply-To: <577c2e6c08b96844a5144bee0d5a0536b4ab939e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -4.30
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
X-Rspamd-Queue-Id: BCE0A62D617
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:jani.saarinen@intel.com,m:rajat.gupta@oss.qualcomm.com,m:simona@ffwll.ch,m:airlied@gmail.com,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:ville.syrjala@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,oss.qualcomm.com,ffwll.ch,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[suse.de:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[]
X-Rspamd-Action: no action

Hi

Am 02.06.26 um 12:53 schrieb Jani Nikula:
> On Tue, 02 Jun 2026, "Saarinen, Jani" <jani.saarinen@intel.com> wrote:
>> Hi,
>>> -----Original Message-----
>>> From: Thomas Zimmermann <tzimmermann@suse.de>
>>> Sent: Tuesday, 2 June 2026 10.30
>>> To: rajat.gupta@oss.qualcomm.com; jani.nikula@linux.intel.com; Saarinen,
>>> Jani <jani.saarinen@intel.com>; simona@ffwll.ch; airlied@gmail.com;
>>> mripard@kernel.org; maarten.lankhorst@linux.intel.com
>>> Cc: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; intel-
>>> xe@lists.freedesktop.org; Thomas Zimmermann <tzimmermann@suse.de>
>>> Subject: [PATCH] drm/dumb-buffers: Increase size limits to match current
>>> devices
>>>
>>> Increase the limits for dumb-buffer arguments to sizes of 16384x16384 at 64
>>> bpp. Such buffer sizes are still within 32-bit unsigned limits.
>>> Fixes CI and high-end devices.
>>>
>>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>>> Fixes: 5ab62dd3687b ("drm: prevent integer overflows in dumb buffer
>>> creation helpers")
>>> Reported-by: Jani Nikula <jani.nikula@linux.intel.com>
>>> Closes: https://lore.kernel.org/dri-
>>> devel/ddf0233e50044059c85279f928661563ef6a55bf@intel.com/
>> Seems not helping on i915 CI BAT issue https://lore.kernel.org/intel-gfx/178038951063.34290.3796875109342598028@6beec6c84f66/T/#u
>> => https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167719v1/index.html?
> Right, so vgem_basic has this, among other things:
>
> 	bo.width = 1<<15;
> 	bo.height = 1<<15;
> 	bo.bpp = 16;
> 	vgem_create(fd, &bo);
>
> i.e. 32768x32768.
>
> Not so sure about this one.
>
> Anyone else care to chime in?

I give up. I'll send out a patch to remove the size limits in a bit. The 
rest of the overflow fixes in the broken patch should not be a problem, 
I think.

But TBH allocating a dumb buffer of that size makes no sense. Who uses a 
2-GiB buffer for software rendering?

And as I mentioned elsewhere, there are reports about devices with GiBs 
of VRAM but only a few hundered MiB of PCI-BAR ranges. As we don't have 
DMA here, there will be some size limits required to make mmap work 
correctly.

Best regards
Thomas

>
>
> BR,
> Jani.
>
>>> Cc: Rajat Gupta <rajat.gupta@oss.qualcomm.com>
>>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Cc: Maxime Ripard <mripard@kernel.org>
>> Br,
>> Jani
>>
>>> ---
>>>   drivers/gpu/drm/drm_dumb_buffers.c | 9 +++++----
>>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/drm_dumb_buffers.c
>>> b/drivers/gpu/drm/drm_dumb_buffers.c
>>> index e60130b2bb0c..9c4cfb3210aa 100644
>>> --- a/drivers/gpu/drm/drm_dumb_buffers.c
>>> +++ b/drivers/gpu/drm/drm_dumb_buffers.c
>>> @@ -201,11 +201,12 @@ int drm_mode_create_dumb(struct drm_device
>>> *dev,
>>>   	if (!args->width || !args->height || !args->bpp)
>>>   		return -EINVAL;
>>>
>>> -	/* Reject unreasonable inputs early.  Dumb buffers are for software
>>> -	 * rendering; nothing legitimate needs more than 8192x8192 at
>>> 32bpp.
>>> -	 * This prevents overflows in downstream alignment helpers.
>>> +	/*
>>> +	 * Reject unreasonable inputs early. Dumb buffers are for software
>>> +	 * rendering; nothing legitimate needs more than 16384x16384 at
>>> +	 * 64 bpp. This prevents overflows in downstream alignment helpers.
>>>   	 */
>>> -	if (args->width >= 8192 || args->height >= 8192 || args->bpp > 32)
>>> +	if (args->width > 16384 || args->height > 16384 || args->bpp > 64)
>>>   		return -EINVAL;
>>>
>>>   	/* overflow checks for 32bit size calculations */
>>>
>>> base-commit: a980196655477a8f5067112946401fe52e510664
>>> --
>>> 2.54.0

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


