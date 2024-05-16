Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654B38C7518
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 13:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677A110EC6F;
	Thu, 16 May 2024 11:20:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="iIRbeLil";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="oXOsWUho";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="E4awbo6u";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="N3sraCpv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F8F10EC6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 11:20:28 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 206BD3484B;
 Thu, 16 May 2024 11:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715858427; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=jZoGA7sJcsdCbz3wvMwkBVOWr3qPJX3xI58PfUBfIuA=;
 b=iIRbeLile3CgW0+94yXaLUZetbsO4QtRJH1Rn8mLygI9/AfusMOZOZKHDObzrvMoZo5C3E
 ByDAMqNbakbj5rJu7mvKqfpyVy3wxvRib3IbAJjW1CZULuhg7B7At7a1fKDTsalF8L/owG
 1Az+WTIcTvxcaIVrp3sPefTFRzXl1ag=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715858427;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=jZoGA7sJcsdCbz3wvMwkBVOWr3qPJX3xI58PfUBfIuA=;
 b=oXOsWUho4VduuYLF1SDuUOW6HDf+leQoGqSkcWPYyNm9HmwyTH8nc6xJ5F6kmbZ+jnSIZW
 6d2n9QjLiWkTsLBQ==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=E4awbo6u;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=N3sraCpv
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715858426; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=jZoGA7sJcsdCbz3wvMwkBVOWr3qPJX3xI58PfUBfIuA=;
 b=E4awbo6uqFI5F7vY0z6PgT3S9k9u981BXGCkMFU1kOOCWRDcUTX20l5LXCjd77VCX41sb/
 0kk5zhsV9C/gHRhw91lC6Vx576Sq0iaC0qKBz9DhfIRtxloEIWIerqO7IB22vomD58/NS5
 C3/3gb+L7IPrzL/02f+7jgDwqqTkyJQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715858426;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=jZoGA7sJcsdCbz3wvMwkBVOWr3qPJX3xI58PfUBfIuA=;
 b=N3sraCpv6dksM2jw/wRgrbevyZr3hKkKcmwNDGBE9JGZD+agRcFvxE3z/WvT/+IZ7ohM7A
 ZV7OM5pamr64+6CQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E262D13991;
 Thu, 16 May 2024 11:20:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id GS4RNvnrRWZEZgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 16 May 2024 11:20:25 +0000
Message-ID: <9dcac6e9-a3bf-4ace-bbdc-f697f767f9e0@suse.de>
Date: Thu, 16 May 2024 13:20:25 +0200
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
 <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
 <SJ1PR11MB61298B3FBE1CD57BB6DCD0C9B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <32d604d3-49a8-4a77-b2d4-766895cfe625@suse.de>
 <SJ1PR11MB612947EF5AD68ED8FFDD7AF6B9ED2@SJ1PR11MB6129.namprd11.prod.outlook.com>
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
In-Reply-To: <SJ1PR11MB612947EF5AD68ED8FFDD7AF6B9ED2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -6.50
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 206BD3484B
X-Spam-Level: 
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-6.50 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 DWL_DNSWL_MED(-2.00)[suse.de:dkim];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 MIME_GOOD(-0.10)[text/plain]; MX_GOOD(-0.01)[];
 XM_UA_NO_VERSION(0.01)[];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 MIME_TRACE(0.00)[0:+]; TO_DN_SOME(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 FUZZY_BLOCKED(0.00)[rspamd.com]; ARC_NA(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; RCVD_TLS_ALL(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_FIVE(0.00)[5];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 DKIM_TRACE(0.00)[suse.de:+];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim, suse.de:email,
 imap1.dmz-prg2.suse.org:helo, imap1.dmz-prg2.suse.org:rdns, intel.com:email]
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

Am 16.05.24 um 13:04 schrieb Borah, Chaitanya Kumar:
> Hi Thomas,
>
>> -----Original Message-----
>> From: Thomas Zimmermann <tzimmermann@suse.de>
>> Sent: Wednesday, May 15, 2024 6:06 PM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
>> Nikula, Jani <jani.nikula@intel.com>
>> Subject: Re: Regression on linux-next (next-20240506)
>>
>> Hi
>>
>> Am 15.05.24 um 13:38 schrieb Borah, Chaitanya Kumar:
>> [...]
>>>> Sorry, I didn't notice the report before. The commit is not related to ACPI.
>>>> There's now asm/video.h and acpi/video.h. Maybe there's a conflict
>>>> among included files.
>>>>
>>>> Do you have a kernel config to build with?
>>>>
>>> ~Sorry my email client messed up my previous reply. So sending again~
>>>
>>> I could not find a public link for the linux-next config we use but this should
>> be close enough.
>>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14764/kconfig.txt
>> Builds without problems.
>>
>> But I think there's a name collision between the video module in drivers/acpi
>> and the new video module in arch/*/video. The attached patch renames the
>> ACPI module. Could you please try it and report back the results?
>>
> The patch is fixing the regression for us 😊 Will you be floating it?

Great! I'll send it out for review.

Best regards
Thomas

>
> Regards
>
> Chaitanya
>
>> Best regards
>> Thomas
>>
>>
>>> Regards
>>> Chaitanya
>>>
>>>
>>>> Best regards
>>>> Thomas
>>>>
>>>>>> Thank you.
>>>>>>
>>>>>> Regards
>>>>>>
>>>>>> Chaitanya
>>>>>>
>>>>>> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>>>>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>>>>>> next.git/commit/?h=next-20240506
>>>>>> [3]
>>>>>> https://intel-gfx-ci.01.org/tree/linux-next/next-20240506/bat-mtlp-
>>>>>> 9/igt@i915_selftest@live@gt_contexts.html
>>>>>> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>>>>>> next.git/commit/?h=next-
>>>>>> 20240506&id=2fd001cd36005846caa6456fff1008c6f5bae9d4
>>>> --
>>>> --
>>>> Thomas Zimmermann
>>>> Graphics Driver Developer
>>>> SUSE Software Solutions Germany GmbH
>>>> Frankenstrasse 146, 90461 Nuernberg, Germany
>>>> GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman HRB
>>>> 36809 (AG Nuernberg)
>> --
>> --
>> Thomas Zimmermann
>> Graphics Driver Developer
>> SUSE Software Solutions Germany GmbH
>> Frankenstrasse 146, 90461 Nuernberg, Germany
>> GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman HRB
>> 36809 (AG Nuernberg)

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

