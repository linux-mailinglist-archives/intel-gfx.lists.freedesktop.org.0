Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756EDCA3A66
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 13:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A6510E93E;
	Thu,  4 Dec 2025 12:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="ysPPezDC";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Sad8jnQa";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="iEiZa/uQ";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="9DXudUXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5BEA10E93E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 12:46:18 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 70A77338FD;
 Thu,  4 Dec 2025 12:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1764852377; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=JhXkzsIB094mE4Hlt8XqVfsuLfb/67He7Fricpz+iFg=;
 b=ysPPezDCIi3VHcz/cl/SJPhbYCgxhNd13JZYE/jQrKAyvPPKbC6fTjvVIQq8eeF5cMB2f6
 hh+FoGPi9+1PcquuOq15EWggO753swq0Wsxd0orAFVnt0t0cNJUxOvasi0Kwe40ynNuB3L
 3A2EFJW+5sxBfzMQoAuUhaZ8kRt0Z8Y=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1764852377;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=JhXkzsIB094mE4Hlt8XqVfsuLfb/67He7Fricpz+iFg=;
 b=Sad8jnQadRI8hcNxeC0ItrOlVTJiJ8a8JpuqmdtM2wo9MQwB3s7lu403J2/5D6aKP5sweS
 v8NIQ56+zBe/70Ag==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b="iEiZa/uQ";
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=9DXudUXR
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1764852376; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=JhXkzsIB094mE4Hlt8XqVfsuLfb/67He7Fricpz+iFg=;
 b=iEiZa/uQzfCK8vp4ZKUiaBWMPCoTnHAY7PQkW7Dtmp9nVyEIQUi6JzAISSI42/wlkMuz/l
 VB4O1EczJdS+uKHtixaVNIIYpkKToh1foIhmJUqWWi68o5RnDlo2FMdQnbEBNnBXEWoFxx
 E4jboMkZsUkqJEBWGDGzdTUGvXXsTMI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1764852376;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=JhXkzsIB094mE4Hlt8XqVfsuLfb/67He7Fricpz+iFg=;
 b=9DXudUXRMWv9uYUsgjTUNPKk7p2pZ7YWMqWQiesHrIRPmVP6E4vS2HQcqFQu5DO8ueVgQ/
 YVLamhTVAizdCSDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4F49D3EA63;
 Thu,  4 Dec 2025 12:46:16 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id jEwnEpiCMWnDBgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 04 Dec 2025 12:46:16 +0000
Message-ID: <9bcf199f-f83b-4ffe-8498-315b13e52d4c@suse.de>
Date: Thu, 4 Dec 2025 13:46:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/25] drm/vblank: refactoring and cleanups
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
References: <cover.1764845757.git.jani.nikula@intel.com>
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
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -4.51
X-Rspamd-Queue-Id: 70A77338FD
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-0.999]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; ARC_NA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 FUZZY_RATELIMITED(0.00)[rspamd.com];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 TO_DN_SOME(0.00)[]; MIME_TRACE(0.00)[0:+];
 RCVD_TLS_ALL(0.00)[]; RCPT_COUNT_THREE(0.00)[4];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,suse.de:dkim,suse.de:mid];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Level: 
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

Hi

Am 04.12.25 um 11:57 schrieb Jani Nikula:
> v2 of [1], hopefully addressing all review comments.

I gave an r-b to most of the patches in v1 of this series. Why didn't 
you keep those?

Best regards
Thomas

>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/cover.1762791343.git.jani.nikula@intel.com
>
>
> Jani Nikula (24):
>    drm/vblank: remove drm_wait_one_vblank() completely
>    drm/vblank: remove superfluous pipe check
>    drm/vblank: add return value to drm_crtc_wait_one_vblank()
>    drm/vblank: limit vblank variable scope to atomic
>    drm/vblank: use the drm_vblank_crtc() and drm_crtc_vblank_crtc()
>      helpers more
>    drm/vblank: prefer drm_crtc_vblank_crtc() over drm_vblank_crtc()
>    drm/vblank: pass vlank to drm_vblank_get()/_put()/_count()
>    drm/vblank: pass vblank to drm_update_vblank_count()
>    drm/vblank: pass vblank to drm_handle_vblank_events()
>    drm/vblank: use the vblank based interfaces more
>    drm/vblank: pass vblank to drm_queue_vblank_event()
>    drm/vblank: pass vblank to drm_wait_vblank_reply()
>    drm/vblank: pass vblank to drm_vblank_count_and_time()
>    drm/vblank: pass vblank to drm_reset_vblank_timestamp()
>    drm/vblank: pass vblank to store_vblank()
>    drm/vblank: pass vblank to drm_vblank_enable()
>    drm/vblank: merge drm_vblank_restore() into drm_crtc_vblank_restore()
>    drm/vblank: add drm_crtc_from_vblank() helper
>    drm/vblank: pass vblank to __get_vblank_counter() and
>      drm_max_vblank_count()
>    drm/vblank: pass vblank to __{enable,disable}_vblank()
>    drm/vblank: pass vblank to drm_get_last_vbltimestamp()
>    drm/vblank: pass vblank to drm_vblank_disable_and_save(), make static
>    drm/vblank: reduce pipe checks
>    drm/vblank: clean up debug logging
>
> Thomas Zimmermann (1):
>    drm/vblank: Unexport drm_wait_one_vblank()
>
>   drivers/gpu/drm/drm_internal.h    |   7 +-
>   drivers/gpu/drm/drm_vblank.c      | 533 ++++++++++++++----------------
>   drivers/gpu/drm/drm_vblank_work.c |  12 +-
>   include/drm/drm_vblank.h          |   3 +-
>   4 files changed, 257 insertions(+), 298 deletions(-)
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


