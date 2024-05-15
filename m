Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7778C6315
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 10:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD9410E03D;
	Wed, 15 May 2024 08:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="bUm+OgO7";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="PuvB2+43";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="bUm+OgO7";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="PuvB2+43";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192DA10E03D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 08:54:49 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1CFBA3399C;
 Wed, 15 May 2024 08:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715763287; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=D7T+QGZ2uT6cNmb3kxKgjftfQGmCr/5mZxePEbSluBc=;
 b=bUm+OgO7qEL6FUCiEJX9Y67cjvVJ17Lk9TDR7SEwdaD4YUY5pu4JT3cDODo+6AbcwLh1rr
 ubIO4sqSimx7LV7gAdsnzILks0zeVq2qzvOL7L+dxSBzKhUduL/VP8VgRzn+oMJxuVaO61
 7w3AqPJbloEPugSFT1u+RwlxG0m/bOA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715763287;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=D7T+QGZ2uT6cNmb3kxKgjftfQGmCr/5mZxePEbSluBc=;
 b=PuvB2+432M0Dqm1+4AOd+ddDBpsolAGC1k9rkMhBBBVha4fKO3CdVbPgGWkrReBiQVQ/tA
 1dwIdbtn+ieJVKDA==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=bUm+OgO7;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=PuvB2+43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715763287; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=D7T+QGZ2uT6cNmb3kxKgjftfQGmCr/5mZxePEbSluBc=;
 b=bUm+OgO7qEL6FUCiEJX9Y67cjvVJ17Lk9TDR7SEwdaD4YUY5pu4JT3cDODo+6AbcwLh1rr
 ubIO4sqSimx7LV7gAdsnzILks0zeVq2qzvOL7L+dxSBzKhUduL/VP8VgRzn+oMJxuVaO61
 7w3AqPJbloEPugSFT1u+RwlxG0m/bOA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715763287;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=D7T+QGZ2uT6cNmb3kxKgjftfQGmCr/5mZxePEbSluBc=;
 b=PuvB2+432M0Dqm1+4AOd+ddDBpsolAGC1k9rkMhBBBVha4fKO3CdVbPgGWkrReBiQVQ/tA
 1dwIdbtn+ieJVKDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E7E931372E;
 Wed, 15 May 2024 08:54:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id wp2CN1Z4RGbUaAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 15 May 2024 08:54:46 +0000
Message-ID: <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
Date: Wed, 15 May 2024 10:54:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20240506)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
References: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129AF1E3865F993278B7047B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
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
In-Reply-To: <SJ1PR11MB6129AF1E3865F993278B7047B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spamd-Result: default: False [-4.50 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 XM_UA_NO_VERSION(0.01)[]; MX_GOOD(-0.01)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 MIME_TRACE(0.00)[0:+]; TO_DN_EQ_ADDR_SOME(0.00)[];
 TO_DN_SOME(0.00)[]; MID_RHS_MATCH_FROM(0.00)[];
 RCVD_TLS_ALL(0.00)[]; RCPT_COUNT_FIVE(0.00)[5];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:email,intel.com:email];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 1CFBA3399C
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Score: -4.50
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

Am 15.05.24 um 10:16 schrieb Borah, Chaitanya Kumar:
>
>> -----Original Message-----
>> From: Borah, Chaitanya Kumar
>> Sent: Wednesday, May 8, 2024 3:05 PM
>> To: tzimmermann@suse.de
>> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
>> Subject: Regression on linux-next (next-20240506)
>>
>> Hello Thomas,
>>
>> Hope you are doing well.
>>
>> This mail is regarding a regression we are seeing in our CI runs[1] on linux-
>> next repository.
>>
>> Since the version next-20240506 [2], we are seeing the following regression
>>
>> `````````````````````````````````````````````````````````````````````````````````
>> Starting dynamic subtest: gt_contexts
>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>> acpi_video_unregister (err -2)
>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>> acpi_video_register_backlight (err -2)
>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>> __acpi_video_get_backlight_type (err -2)
>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>> acpi_video_register (err -2)
>> (i915_selftest:1107) igt_kmod-CRITICAL: Test assertion failure function
>> igt_kselftest_execute, file ../../../usr/src/igt-gpu-tools/lib/igt_kmod.c:1594:
>> (i915_selftest:1107) igt_kmod-CRITICAL: Failed assertion: err == 0
>> (i915_selftest:1107) igt_kmod-CRITICAL: kselftest "i915
>> igt__23__live_gt_contexts=1 live_selftests=-1 disable_display=1 st_filter="
>> failed: No such file or directory [2] Dynamic subtest gt_contexts failed.
>> `````````````````````````````````````````````````````````````````````````````````
>> Details log can be found in [3].
>>
>> After bisecting the tree, the following patch [4] seems to be the first "bad"
>> commit
>>
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>> 2fd001cd36005846caa6456fff1008c6f5bae9d4 is the first bad commit commit
>> 2fd001cd36005846caa6456fff1008c6f5bae9d4
>> Author: Thomas Zimmermann tzimmermann@suse.de
>> Date:   Fri Mar 29 21:32:12 2024 +0100
>>
>>      arch: Rename fbdev header and source files
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>
>> We also verified that if we revert the patch the issue is not seen.
>>
>> Could you please check why the patch causes this regression and provide a fix
>> if necessary?
>>
> +Jani N
>
> Gentle Reminder 😊

Sorry, I didn't notice the report before. The commit is not related to 
ACPI. There's now asm/video.h and acpi/video.h. Maybe there's a conflict 
among included files.

Do you have a kernel config to build with?

Best regards
Thomas

>
>> Thank you.
>>
>> Regards
>>
>> Chaitanya
>>
>> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>> next.git/commit/?h=next-20240506
>> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20240506/bat-mtlp-
>> 9/igt@i915_selftest@live@gt_contexts.html
>> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>> next.git/commit/?h=next-
>> 20240506&id=2fd001cd36005846caa6456fff1008c6f5bae9d4

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

