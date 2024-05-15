Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9066A8C6664
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 14:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396B210E31A;
	Wed, 15 May 2024 12:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="HU1Yl/nc";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Zq2o0eNJ";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="kbS3ND1k";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="PxopBDK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F3F10E31A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 12:36:24 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id D8A012066A;
 Wed, 15 May 2024 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715776583; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8Lpm0YVAx6wanZ+YCFpwhI49IM8vKoAX997VVwUI8YE=;
 b=HU1Yl/ncrMbTz6ExH2D5qfbtXLZqhsvcIaR9LVOxt367djkTPVYbaQvrFIqa+NmYyR38/q
 gQUVvwqo6XXZKW9idBr+Towdi/P6L/Zn93IFDhzsGK1/d446OgkeJj78iEaKLyUUdcmjQk
 hO0rwknc7myKTak7OB66bI9vqG4s+AU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715776583;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8Lpm0YVAx6wanZ+YCFpwhI49IM8vKoAX997VVwUI8YE=;
 b=Zq2o0eNJE/1LekphlxlhfVMMTSotRwXlpOwHUhiR2lJORTpMx1j242euHvxpCFAltitXGo
 QVmQWhO4GgVSwABg==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=kbS3ND1k;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=PxopBDK+
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715776582; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8Lpm0YVAx6wanZ+YCFpwhI49IM8vKoAX997VVwUI8YE=;
 b=kbS3ND1kCfXKtCw+AontA54JGaKVqC3nKg8Yvw5cQbY9N3XNfiXxYVaKsHUW6VzFvcJkel
 Tykd4993sgyubblboBM2RGm/0q4GYKby8jwFthk2KxhfuBwIb8YkagXVn6YjQbp5SQWGfO
 VTBudazZ04rS2O1IoxeEyTDdDymorQ8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715776582;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8Lpm0YVAx6wanZ+YCFpwhI49IM8vKoAX997VVwUI8YE=;
 b=PxopBDK+L0YBTFu9hazcTc01UQZeVhSHxRtUbUE/h24W1kIRrQNQZHP6uhWF8llAKlBRVJ
 hJ9u4o/0aq3x4fDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AE453136A8;
 Wed, 15 May 2024 12:36:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 6xk6KUasRGa0WQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 15 May 2024 12:36:22 +0000
Content-Type: multipart/mixed; boundary="------------S579z9E0aWpHktEBVSxgQj9x"
Message-ID: <32d604d3-49a8-4a77-b2d4-766895cfe625@suse.de>
Date: Wed, 15 May 2024 14:36:22 +0200
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
In-Reply-To: <SJ1PR11MB61298B3FBE1CD57BB6DCD0C9B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-Spam-Level: 
X-Spamd-Result: default: False [-5.40 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 DWL_DNSWL_MED(-2.00)[suse.de:dkim];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MIME_BASE64_TEXT_BOGUS(1.00)[];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_BASE64_TEXT(0.10)[];
 MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
 XM_UA_NO_VERSION(0.01)[]; MX_GOOD(-0.01)[];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 ARC_NA(0.00)[]; TO_DN_SOME(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 MIME_TRACE(0.00)[0:+,1:+,2:+]; TO_DN_EQ_ADDR_SOME(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RCVD_TLS_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 FROM_EQ_ENVFROM(0.00)[]; RCPT_COUNT_FIVE(0.00)[5];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 HAS_ATTACHMENT(0.00)[]; DKIM_TRACE(0.00)[suse.de:+];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim, suse.de:email,
 imap1.dmz-prg2.suse.org:helo, imap1.dmz-prg2.suse.org:rdns]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: D8A012066A
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Score: -5.40
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

This is a multi-part message in MIME format.
--------------S579z9E0aWpHktEBVSxgQj9x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

Am 15.05.24 um 13:38 schrieb Borah, Chaitanya Kumar:
[...]
>> Sorry, I didn't notice the report before. The commit is not related to ACPI.
>> There's now asm/video.h and acpi/video.h. Maybe there's a conflict among
>> included files.
>>
>> Do you have a kernel config to build with?
>>
> ~Sorry my email client messed up my previous reply. So sending again~
>
> I could not find a public link for the linux-next config we use but this should be close enough.
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14764/kconfig.txt

Builds without problems.

But I think there's a name collision between the video module in 
drivers/acpi and the new video module in arch/*/video. The attached 
patch renames the ACPI module. Could you please try it and report back 
the results?

Best regards
Thomas


>
> Regards
> Chaitanya
>
>
>> Best regards
>> Thomas
>>
>>>> Thank you.
>>>>
>>>> Regards
>>>>
>>>> Chaitanya
>>>>
>>>> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>>>> next.git/commit/?h=next-20240506
>>>> [3]
>>>> https://intel-gfx-ci.01.org/tree/linux-next/next-20240506/bat-mtlp-
>>>> 9/igt@i915_selftest@live@gt_contexts.html
>>>> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>>>> next.git/commit/?h=next-
>>>> 20240506&id=2fd001cd36005846caa6456fff1008c6f5bae9d4
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

--------------S579z9E0aWpHktEBVSxgQj9x
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-acpi-video-Fix-name-collision-with-architecture-vide.patch"
Content-Disposition: attachment;
 filename*0="0001-acpi-video-Fix-name-collision-with-architecture-vide.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSBjNDJmMWU0NGZkYzEzMzU4YjIyMGYyN2JlMGMzMTc2ZTI3NWViMTg4IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KRGF0ZTogV2VkLCAxNSBNYXkgMjAyNCAxNDozMTo1MyArMDIwMApTdWJqZWN0
OiBbUEFUQ0hdIGFjcGkvdmlkZW86IEZpeCBuYW1lIGNvbGxpc2lvbiB3aXRoIGFyY2hpdGVj
dHVyZSB2aWRlbyBtb2R1bGUKClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0
emltbWVybWFubkBzdXNlLmRlPgotLS0KIGRyaXZlcnMvYWNwaS9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDUgKysrLS0KIGRyaXZlcnMvYWNwaS97YWNwaV92aWRl
by5jID0+IGFjcGlfdmlkZW9fY29yZS5jfSB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQogcmVuYW1lIGRyaXZlcnMvYWNwaS97YWNw
aV92aWRlby5jID0+IGFjcGlfdmlkZW9fY29yZS5jfSAoOTklKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvYWNwaS9NYWtlZmlsZSBiL2RyaXZlcnMvYWNwaS9NYWtlZmlsZQppbmRleCAzOWVh
NWNmYTgzMjY5Li5iMmMyNDcxZWU5MzVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2FjcGkvTWFr
ZWZpbGUKKysrIGIvZHJpdmVycy9hY3BpL01ha2VmaWxlCkBAIC03OCw3ICs3OCw5IEBAIG9i
ai0kKENPTkZJR19BQ1BJX0ZBTikJCSs9IGZhbi5vCiBmYW4tb2JqcwkJCTo9IGZhbl9jb3Jl
Lm8KIGZhbi1vYmpzCQkJKz0gZmFuX2F0dHIubwogCi1vYmotJChDT05GSUdfQUNQSV9WSURF
TykJKz0gdmlkZW8ubworb2JqLSQoQ09ORklHX0FDUElfVklERU8pCSs9IGFjcGlfdmlkZW8u
bworYWNwaV92aWRlby1vYmpzCQkJKz0gYWNwaV92aWRlb19jb3JlLm8gdmlkZW9fZGV0ZWN0
Lm8KKwogb2JqLSQoQ09ORklHX0FDUElfVEFEKQkJKz0gYWNwaV90YWQubwogb2JqLSQoQ09O
RklHX0FDUElfUENJX1NMT1QpCSs9IHBjaV9zbG90Lm8KIG9iai0kKENPTkZJR19BQ1BJX1BS
T0NFU1NPUikJKz0gcHJvY2Vzc29yLm8KQEAgLTExOSw3ICsxMjEsNiBAQCBvYmotJChDT05G
SUdfQUNQSV9DT05GSUdGUykJKz0gYWNwaV9jb25maWdmcy5vCiAKIG9iai15CQkJCSs9IHBt
aWMvCiAKLXZpZGVvLW9ianMJCQkrPSBhY3BpX3ZpZGVvLm8gdmlkZW9fZGV0ZWN0Lm8KIG9i
ai15CQkJCSs9IGRwdGYvCiAKIG9iai0kKENPTkZJR19BUk02NCkJCSs9IGFybTY0LwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9hY3BpL2FjcGlfdmlkZW8uYyBiL2RyaXZlcnMvYWNwaS9hY3Bp
X3ZpZGVvX2NvcmUuYwpzaW1pbGFyaXR5IGluZGV4IDk5JQpyZW5hbWUgZnJvbSBkcml2ZXJz
L2FjcGkvYWNwaV92aWRlby5jCnJlbmFtZSB0byBkcml2ZXJzL2FjcGkvYWNwaV92aWRlb19j
b3JlLmMKaW5kZXggMWZkYTMwMzg4Mjk3My4uMzJiZjgxYzU3NzNhNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9hY3BpL2FjcGlfdmlkZW8uYworKysgYi9kcml2ZXJzL2FjcGkvYWNwaV92aWRl
b19jb3JlLmMKQEAgLTEsNiArMSw2IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vci1sYXRlcgogLyoKLSAqICB2aWRlby5jIC0gQUNQSSBWaWRlbyBEcml2ZXIK
KyAqICBhY3BpX3ZpZGVvX2NvcmUuYyAtIEFDUEkgVmlkZW8gRHJpdmVyCiAgKgogICogIENv
cHlyaWdodCAoQykgMjAwNCBMdW1pbmcgWXUgPGx1bWluZy55dUBpbnRlbC5jb20+CiAgKiAg
Q29weXJpZ2h0IChDKSAyMDA0IEJydW5vIER1Y3JvdCA8ZHVjcm90QHBvdXBpbm91Lm9yZz4K
LS0gCjIuNDUuMAoK

--------------S579z9E0aWpHktEBVSxgQj9x--
