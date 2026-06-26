Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AC5JBHZlPmojFQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 13:41:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC036CC93A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 13:41:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=EGH7Nym7;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=92EogYhD;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=EGH7Nym7;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=92EogYhD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=suse.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB57C10E390;
	Fri, 26 Jun 2026 11:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91AC410E373
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 11:41:38 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 1C8EB759F7;
 Fri, 26 Jun 2026 11:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1782474097; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=/t1+bdLKNhcqmjr79k8QzZS+syMv9xthRahPAS5L7pw=;
 b=EGH7Nym7W2rYb+txOBUyeqkZKVnUzWn+i/CLCvo/Xtl03sXmzZ3Qxx4CPx/tdqjsenPXjZ
 cTetVvfgqOmjN2kgvMYtURkUjA0GZyAzO16bzFUUGOveFUQSmjtL2tuED9s0WtLzUn8d2a
 9PHYak27GiAG0l2l1dhVp/ktwRT/sNI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1782474097;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=/t1+bdLKNhcqmjr79k8QzZS+syMv9xthRahPAS5L7pw=;
 b=92EogYhDqdOWUnf1GEUiS2RqbHBfaacv6q6jgpF35C/+lC1CbFAv7D89iG6BpuDk4s1JTp
 yCZI2AzTKu4VmpDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1782474097; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=/t1+bdLKNhcqmjr79k8QzZS+syMv9xthRahPAS5L7pw=;
 b=EGH7Nym7W2rYb+txOBUyeqkZKVnUzWn+i/CLCvo/Xtl03sXmzZ3Qxx4CPx/tdqjsenPXjZ
 cTetVvfgqOmjN2kgvMYtURkUjA0GZyAzO16bzFUUGOveFUQSmjtL2tuED9s0WtLzUn8d2a
 9PHYak27GiAG0l2l1dhVp/ktwRT/sNI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1782474097;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=/t1+bdLKNhcqmjr79k8QzZS+syMv9xthRahPAS5L7pw=;
 b=92EogYhDqdOWUnf1GEUiS2RqbHBfaacv6q6jgpF35C/+lC1CbFAv7D89iG6BpuDk4s1JTp
 yCZI2AzTKu4VmpDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BE565779A8;
 Fri, 26 Jun 2026 11:41:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id iUpOLXBlPmr6QgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 26 Jun 2026 11:41:36 +0000
Message-ID: <e07d6da4-8199-4fc5-8c48-7fcd4abd6af6@suse.de>
Date: Fri, 26 Jun 2026 13:41:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/10] Revert "backlight: Remove notifier"
To: Mario Limonciello <mario.limonciello@amd.com>,
 dri-devel@lists.freedesktop.org, harry.wentland@amd.com,
 Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>
Cc: Xaver Hugl <xaver.hugl@gmail.com>, amd-gfx@lists.freedesktop.org,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 Simon Ser <contact@emersion.fr>
References: <20260624165751.2014759-1-mario.limonciello@amd.com>
 <20260624165751.2014759-2-mario.limonciello@amd.com>
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
In-Reply-To: <20260624165751.2014759-2-mario.limonciello@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.01
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mario.limonciello@amd.com,m:dri-devel@lists.freedesktop.org,m:harry.wentland@amd.com,m:simona@ffwll.ch,m:alexander.deucher@amd.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:airlied@gmail.com,m:xaver.hugl@gmail.com,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:superm1@kernel.org,m:contact@emersion.fr,m:xaverhugl@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[amd.com,lists.freedesktop.org,ffwll.ch,linux.intel.com,kernel.org,gmail.com];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,kernel.org,emersion.fr];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,emersion.fr:email,lists.freedesktop.org:from_smtp,suse.de:dkim,suse.de:email,suse.de:mid,suse.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5DC036CC93A

Hi

Am 24.06.26 um 18:57 schrieb Mario Limonciello:
> From: "Mario Limonciello (AMD)" <superm1@kernel.org>
>
> This reverts commit 5461f3fd74a89757f95f351eb0bc26aafc2a2e91.
> The backlight notifier support is needed in order to add backlight
> control support into DRM connectors.
>
> Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
> Tested-by: Simon Ser <contact@emersion.fr>

I don't like this, but I don't have a better idea for now. Therefore

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

until a better idea shows up.

> ---
>   drivers/video/backlight/backlight.c | 42 +++++++++++++++++++++++++++++
>   include/linux/backlight.h           | 20 ++++++++++++++
>   2 files changed, 62 insertions(+)
>
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index a22d0bbb6e639..ff2c2084c73a4 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -65,6 +65,7 @@
>   
>   static struct list_head backlight_dev_list;
>   static struct mutex backlight_dev_list_mutex;
> +static struct blocking_notifier_head backlight_notifier;
>   
>   static const char *const backlight_types[] = {
>   	[BACKLIGHT_RAW] = "raw",
> @@ -415,6 +416,9 @@ struct backlight_device *backlight_device_register(const char *name,
>   	list_add(&new_bd->entry, &backlight_dev_list);
>   	mutex_unlock(&backlight_dev_list_mutex);
>   
> +	blocking_notifier_call_chain(&backlight_notifier,
> +				     BACKLIGHT_REGISTERED, new_bd);
> +
>   	return new_bd;
>   }
>   EXPORT_SYMBOL(backlight_device_register);
> @@ -484,6 +488,9 @@ void backlight_device_unregister(struct backlight_device *bd)
>   	mutex_unlock(&pmac_backlight_mutex);
>   #endif
>   
> +	blocking_notifier_call_chain(&backlight_notifier,
> +				     BACKLIGHT_UNREGISTERED, bd);
> +
>   	mutex_lock(&bd->ops_lock);
>   	bd->ops = NULL;
>   	mutex_unlock(&bd->ops_lock);
> @@ -507,6 +514,40 @@ static int devm_backlight_device_match(struct device *dev, void *res,
>   	return *r == data;
>   }
>   
> +/**
> + * backlight_register_notifier - get notified of backlight (un)registration
> + * @nb: notifier block with the notifier to call on backlight (un)registration
> + *
> + * Register a notifier to get notified when backlight devices get registered
> + * or unregistered.
> + *
> + * RETURNS:
> + *
> + * 0 on success, otherwise a negative error code
> + */
> +int backlight_register_notifier(struct notifier_block *nb)
> +{
> +	return blocking_notifier_chain_register(&backlight_notifier, nb);
> +}
> +EXPORT_SYMBOL(backlight_register_notifier);
> +
> +/**
> + * backlight_unregister_notifier - unregister a backlight notifier
> + * @nb: notifier block to unregister
> + *
> + * Register a notifier to get notified when backlight devices get registered
> + * or unregistered.
> + *
> + * RETURNS:
> + *
> + * 0 on success, otherwise a negative error code
> + */
> +int backlight_unregister_notifier(struct notifier_block *nb)
> +{
> +	return blocking_notifier_chain_unregister(&backlight_notifier, nb);
> +}
> +EXPORT_SYMBOL(backlight_unregister_notifier);
> +
>   /**
>    * devm_backlight_device_register - register a new backlight device
>    * @dev: the device to register
> @@ -674,6 +715,7 @@ static int __init backlight_class_init(void)
>   
>   	INIT_LIST_HEAD(&backlight_dev_list);
>   	mutex_init(&backlight_dev_list_mutex);
> +	BLOCKING_INIT_NOTIFIER_HEAD(&backlight_notifier);
>   
>   	return 0;
>   }
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index f29a9ef1052e7..d905173c7f73c 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -64,6 +64,24 @@ enum backlight_type {
>   	BACKLIGHT_TYPE_MAX,
>   };
>   
> +/**
> + * enum backlight_notification - the type of notification
> + *
> + * The notifications that is used for notification sent to the receiver
> + * that registered notifications using backlight_register_notifier().
> + */
> +enum backlight_notification {
> +	/**
> +	 * @BACKLIGHT_REGISTERED: The backlight device is registered.
> +	 */
> +	BACKLIGHT_REGISTERED,
> +
> +	/**
> +	 * @BACKLIGHT_UNREGISTERED: The backlight revice is unregistered.
> +	 */
> +	BACKLIGHT_UNREGISTERED,
> +};
> +
>   /** enum backlight_scale - the type of scale used for brightness values
>    *
>    * The type of scale used for brightness values.
> @@ -388,6 +406,8 @@ void devm_backlight_device_unregister(struct device *dev,
>   				      struct backlight_device *bd);
>   void backlight_force_update(struct backlight_device *bd,
>   			    enum backlight_update_reason reason);
> +int backlight_register_notifier(struct notifier_block *nb);
> +int backlight_unregister_notifier(struct notifier_block *nb);
>   struct backlight_device *backlight_device_get_by_name(const char *name);
>   struct backlight_device *backlight_device_get_by_type(enum backlight_type type);
>   int backlight_device_set_brightness(struct backlight_device *bd,

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


