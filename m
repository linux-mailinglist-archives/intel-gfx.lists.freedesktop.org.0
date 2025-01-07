Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7E2A03AB3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 10:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835D710E3AE;
	Tue,  7 Jan 2025 09:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="HM3TElKx";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="zl7PgVGh";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="HM3TElKx";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="zl7PgVGh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC9910E228;
 Tue,  7 Jan 2025 09:07:58 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id AEBBB1F37E;
 Tue,  7 Jan 2025 09:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1736240875; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=uqb5QlSNGK+kINMlRN8ZkHzd0OA5ZsxYV83Hdkzz5Pw=;
 b=HM3TElKxiK+kuxkilbhpw/X2mvmnBHnht0sSv4IjGpADF+T1h0TPKBkYuYRVRg7rE65ciQ
 9lie+UGerWUmybinivvvtPqX+rNPTHqLSiHAdZv4oN42I4juZkYvtZycE17w3ZgebFUBhX
 nw4D+UtX1MIr8C13SHHglp64qS61ZJM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1736240875;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=uqb5QlSNGK+kINMlRN8ZkHzd0OA5ZsxYV83Hdkzz5Pw=;
 b=zl7PgVGh4OFFaoiKb0I01UNsVL22yqcoWEZ89eGFU6Abxr6TehKQTC6Khr2LsrkFZJV615
 oQA1tt2VHPUnTeBQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=HM3TElKx;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=zl7PgVGh
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1736240875; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=uqb5QlSNGK+kINMlRN8ZkHzd0OA5ZsxYV83Hdkzz5Pw=;
 b=HM3TElKxiK+kuxkilbhpw/X2mvmnBHnht0sSv4IjGpADF+T1h0TPKBkYuYRVRg7rE65ciQ
 9lie+UGerWUmybinivvvtPqX+rNPTHqLSiHAdZv4oN42I4juZkYvtZycE17w3ZgebFUBhX
 nw4D+UtX1MIr8C13SHHglp64qS61ZJM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1736240875;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=uqb5QlSNGK+kINMlRN8ZkHzd0OA5ZsxYV83Hdkzz5Pw=;
 b=zl7PgVGh4OFFaoiKb0I01UNsVL22yqcoWEZ89eGFU6Abxr6TehKQTC6Khr2LsrkFZJV615
 oQA1tt2VHPUnTeBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 50C9813763;
 Tue,  7 Jan 2025 09:07:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id cVxbEuvufGc7SQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 07 Jan 2025 09:07:55 +0000
Message-ID: <fab81fb1-9602-4063-a7be-485e2b4063a3@suse.de>
Date: Tue, 7 Jan 2025 10:07:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] drm/{i915,xe}: Convert to DRM client setup
To: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 jfalempe@redhat.com, javierm@redhat.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20241212170913.185939-1-tzimmermann@suse.de>
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
In-Reply-To: <20241212170913.185939-1-tzimmermann@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: AEBBB1F37E
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; MIME_TRACE(0.00)[0:+];
 FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,ffwll.ch,gmail.com,kernel.org,redhat.com];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 ARC_NA(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; RCVD_TLS_ALL(0.00)[];
 DKIM_TRACE(0.00)[suse.de:+]; RCVD_COUNT_TWO(0.00)[2];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[15]; TO_DN_NONE(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid, suse.de:dkim,
 imap1.dmz-prg2.suse.org:rdns, imap1.dmz-prg2.suse.org:helo]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
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

ping


Am 12.12.24 um 18:08 schrieb Thomas Zimmermann:
> i915 and xe are the last remaining drivers that still implement their
> own fbdev client. All other clients have been mass converted to DRM's
> client setup in in the series at [1]. As Intel drivers require more
> effort than others, their changes have been moved into this separate
> series.
>
> With DRM's client setup, DRM picks the in-kernel client from the
> kernel's config and parameters. Besides fbdev there's also drm_log
> available. For fbdev support, the driver only has to implement struct
> drm_driver.fbdev_probe, a callback that allocates a compatible
> framebuffer.
>
> At first, some details of the Intel implementation have to be rebuild
> for the generic client and fbdev handling. Patches 1 to 6 do that.
> Hotplugging and suspend/resume are then hidden behind callbacks. Some
> Intel-specifics in the restore and suspend code get their own hooks.
>
> Patches 7 to 9 prepare Intel's fbdev implementation ot get things
> out of the way.
>
> Patch 10 converts i915 and xe to DRM's client setup. Patches 11 and
> 12 clean up the remaining code.
>
> Tested with i915 and xe hardware.
>
> [1] https://patchwork.freedesktop.org/series/137391/
>
> Thomas Zimmermann (12):
>    drm/{i915,xe}: Suspend/resume fbdev emulation via client interfaces
>    drm/client: Add client-hotplug helper
>    drm/client: Send pending hotplug events after resume
>    drm/i915/display: Remove fbdev suspend and hotplug tracking
>    drm/i915/display: fbdev: Move custom restore code to new callback
>    drm/i915/display: fbdev: Move custom suspend code to new callback
>    drm/i915/display: Remove preferred_bpp from struct intel_fbdev
>    drm/i915/display: Remove struct drm_fb_helper from struct intel_fbdev
>    drm/i915/display: Move fbdev code around
>    drm/{i915,xe}: Run DRM default client setup
>    drm/i915/display: Remove compile guard around fbdev debugfs output
>    drm/fb-helper: Remove struct drm_fb_helper.fb_probe
>
>   drivers/gpu/drm/drm_client_event.c            |  41 ++-
>   drivers/gpu/drm/drm_fb_helper.c               |  20 +-
>   .../gpu/drm/i915/display/intel_display_core.h |   1 -
>   .../drm/i915/display/intel_display_debugfs.c  |   2 -
>   drivers/gpu/drm/i915/display/intel_fbdev.c    | 338 ++++--------------
>   drivers/gpu/drm/i915/display/intel_fbdev.h    |  17 +-
>   drivers/gpu/drm/i915/i915_driver.c            |  10 +-
>   drivers/gpu/drm/xe/display/xe_display.c       |  12 +-
>   include/drm/drm_client.h                      |   8 +
>   include/drm/drm_fb_helper.h                   |  44 ++-
>   10 files changed, 176 insertions(+), 317 deletions(-)
>
>
> base-commit: 7bbcd7df9387f0d9004f997df33f7a9472d9c080

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

