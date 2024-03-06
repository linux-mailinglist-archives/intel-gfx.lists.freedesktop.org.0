Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EF5873C77
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 17:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CC1113338;
	Wed,  6 Mar 2024 16:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="BaWXHL4u";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="C2sezJqN";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="BaWXHL4u";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="C2sezJqN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57630113338
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 16:42:38 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 9F0F133C85
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 16:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1709743356; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=qfFRdqu+piCMp0JvtgM58010/cFLg1q6aYbPfL4I+rk=;
 b=BaWXHL4um2pIzikAO7nPMVW35rDx3dd7/37rDKjU5S9A9RhqCpkztl/ox1gTZBrLjeTeAK
 gpPPSPZmwBYJR4biZtfpzM+I8qunk9eGavEb99y0gWCcbohVw9bl9sg+pKD7Bk0jtrR9GY
 bA0cuQ1dFskFF7tQZEg59/PBk4uKp40=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1709743356;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=qfFRdqu+piCMp0JvtgM58010/cFLg1q6aYbPfL4I+rk=;
 b=C2sezJqNpD8/zUTj0CUQMn37IwEPifkDx3jJn5jGdOCQXqlZ2bUWsQhixBOmLuERilFnJD
 e5nembFQPunRSbBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1709743356; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=qfFRdqu+piCMp0JvtgM58010/cFLg1q6aYbPfL4I+rk=;
 b=BaWXHL4um2pIzikAO7nPMVW35rDx3dd7/37rDKjU5S9A9RhqCpkztl/ox1gTZBrLjeTeAK
 gpPPSPZmwBYJR4biZtfpzM+I8qunk9eGavEb99y0gWCcbohVw9bl9sg+pKD7Bk0jtrR9GY
 bA0cuQ1dFskFF7tQZEg59/PBk4uKp40=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1709743356;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=qfFRdqu+piCMp0JvtgM58010/cFLg1q6aYbPfL4I+rk=;
 b=C2sezJqNpD8/zUTj0CUQMn37IwEPifkDx3jJn5jGdOCQXqlZ2bUWsQhixBOmLuERilFnJD
 e5nembFQPunRSbBg==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 8C8A21377D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 16:42:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap2.dmz-prg2.suse.org with ESMTPSA id 21ezIPyc6GX+DAAAn2gu4w
 (envelope-from <tzimmermann@suse.de>)
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Mar 2024 16:42:36 +0000
Message-ID: <2dd360ea-9f47-4b5a-9bc8-9deb55b5acd6@suse.de>
Date: Wed, 6 Mar 2024 17:42:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBD?=
 =?UTF-8?Q?onvert_fbdev_to_DRM_client_=28rev7=29?=
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20240301134448.31289-1-tzimmermann@suse.de>
 <170931494393.452921.14428659117330493781@8e613ede5ea5>
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
In-Reply-To: <170931494393.452921.14428659117330493781@8e613ede5ea5>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: smtp-out1.suse.de;
	none
X-Spamd-Result: default: False [-3.09 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; XM_UA_NO_VERSION(0.01)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 BAYES_HAM(-3.00)[100.00%]; MIME_GOOD(-0.10)[text/plain];
 PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
 TO_DN_NONE(0.00)[]; RCPT_COUNT_ONE(0.00)[1];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; RCVD_TLS_ALL(0.00)[];
 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -3.09
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

FYI, there's a possible regression reported here. I was not able to 
reproduce this bug locally with neither i915 nor xe.

Am 01.03.24 um 18:42 schrieb Patchwork:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Convert fbdev to DRM client (rev7)
> *URL:* 	https://patchwork.freedesktop.org/series/115714/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/index.html
>
>
>   CI Bug Log - changes from CI_DRM_14378 -> Patchwork_115714v7
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_115714v7 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_115714v7, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/index.html
>
>
>     Participating hosts (41 -> 40)
>
> Missing (1): fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_115714v7:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@gt_timelines:
>       o bat-arls-2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/bat-arls-2/igt@i915_selftest@live@gt_timelines.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-arls-2/igt@i915_selftest@live@gt_timelines.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_115714v7 that come from known 
> issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/fi-cfl-8109u/boot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/fi-cfl-8109u/boot.html>
>         (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>  *
>
>     igt@kms_psr@psr-sprite-plane-onoff:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html>
>         (i915#9673
>         <https://gitlab.freedesktop.org/drm/intel/issues/9673> /
>         i915#9732
>         <https://gitlab.freedesktop.org/drm/intel/issues/9732>) +3
>         other tests skip
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@prime_vgem@basic-fence-mmap:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         other test skip
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_selftest@live@gt_lrc:
>
>       o bat-adln-1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/bat-adln-1/igt@i915_selftest@live@gt_lrc.html>
>         (i915#10241
>         <https://gitlab.freedesktop.org/drm/intel/issues/10241> /
>         i915#9413
>         <https://gitlab.freedesktop.org/drm/intel/issues/9413>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-adln-1/igt@i915_selftest@live@gt_lrc.html>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o {bat-adls-6}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/bat-adls-6/igt@i915_selftest@live@hangcheck.html>
>         (i915#5591
>         <https://gitlab.freedesktop.org/drm/intel/issues/5591>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-adls-6/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@i915_selftest@live@perf:
>
>       o bat-dg2-14: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/bat-dg2-14/igt@i915_selftest@live@perf.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-14/igt@i915_selftest@live@perf.html>
>  *
>
>     igt@kms_pm_rpm@basic-pci-d3-state:
>
>       o bat-dg2-9: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v7/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_14378 -> Patchwork_115714v7
>
> CI-20190529: 20190529
> CI_DRM_14378: 5f60548dd58e2ad93005c933fd2633d98db60de4 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7742: 7742
> Patchwork_115714v7: 5f60548dd58e2ad93005c933fd2633d98db60de4 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 2a2bc7f22f82 drm/i915: Implement fbdev emulation as in-kernel client
> 3aa489abc35d drm/i915: Implement fbdev client callbacks
> 56032934e1c0 drm/i915: Initialize fbdev DRM client with callback functions
> 325f2c9f3e4b drm/i915: Move fbdev functions
> 9b9c75375fd5 drm/i915: Unregister in-kernel clients
> 8a5735e7de8a drm/client: Export drm_client_dev_unregister()
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

