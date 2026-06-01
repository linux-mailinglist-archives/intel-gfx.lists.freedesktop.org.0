Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG6OCOziHWoPfwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 21:52:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8045624C98
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 21:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1663410E8EB;
	Mon,  1 Jun 2026 19:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QyGXJkQa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD1410E8E9;
 Mon,  1 Jun 2026 19:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780343528; x=1811879528;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kcoZ0HqwTkFisxUb4c2CrruoAAmphlVicQ9/aPV60q0=;
 b=QyGXJkQapmqLPNw7SHt0ZhO8fEUuyBmnkeKqshf+dt7s+G5T3Pjg/A8i
 xOUAK2qYGwUjfW8lSYfqN0NwtbA1fCZpZqL6xd/Fr25VQnOhVbQ5XawVY
 oDaB45ojChfXo7nQP+TvAGaWwGRRc7hiH9QfElYDVI+5ZenbAzweHNqf6
 PYYUg8BOahrbUb76HsCX9YzY8Ks2vTqyBJGO2fzwr3plor+/BvqyDHami
 1trzDn3B1hRA1KyhclNt8zrXmDd4UuQ532p0lXrTDvWNWDvn8iMtAy+HZ
 2L09o9BsViE+ZU3/aIZ0SmK4ASN4YYXOFBywD7btEE8x/yQtD+9PI4xPQ Q==;
X-CSE-ConnectionGUID: rcAdHvZfQDKVEs3taAS5OQ==
X-CSE-MsgGUID: kijHQzH9Qvi+w5RHBOS9TQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84968226"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="84968226"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 12:52:07 -0700
X-CSE-ConnectionGUID: kvGwteXORg6nd1ie53dcTg==
X-CSE-MsgGUID: TtHMA+6FTdyHv5xpNzKpvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="245490895"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.121])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 12:52:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie
 <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Oded Gabbay
 <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-misc-fixes
In-Reply-To: <24042986-6ef1-49a2-a060-aabf6e189473@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260529070009.GA313534@linux.fritz.box>
 <ddf0233e50044059c85279f928661563ef6a55bf@intel.com>
 <e1a2cc27fb04a88be23973d3cb7868f3d4471d0d@intel.com>
 <d479f1185cd1ae6eb52a7d44e944408c3447c8e4@intel.com>
 <24042986-6ef1-49a2-a060-aabf6e189473@suse.de>
Date: Mon, 01 Jun 2026 22:52:00 +0300
Message-ID: <7b9794c1b6a948b6d509c6fa885e1c3c1912aa9d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[suse.de,gmail.com,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: B8045624C98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 01 Jun 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Hi
>
> Am 01.06.26 um 17:49 schrieb Jani Nikula:
>> On Mon, 01 Jun 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>> On Mon, 01 Jun 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>> On Fri, 29 May 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>>>>> Rajat Gupta (1):
>>>>>        drm: prevent integer overflows in dumb buffer creation helpers
>>>> Looks like this commit 5ab62dd3687b ("drm: prevent integer overflows in
>>>> dumb buffer creation helpers") regressed in our CI, awaiting
>>>> confirmation.
>
> That CI report is where?

It's currently really thin on details, I'm afraid [1].

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16308

>>> The IGT test kms_big_fb uses max width and height from GetResources, and
>>> i915 and xe use max_width 16384 and max_height 16384 in mode config.
>>>
>>> The regressing commit adds random hard limits not based on anything:
>>>
>>> +       /* Reject unreasonable inputs early.  Dumb buffers are for software
>>> +        * rendering; nothing legitimate needs more than 8192x8192 at 32bpp.
>>> +        * This prevents overflows in downstream alignment helpers.
>>> +        */
>>> +       if (args->width >= 8192 || args->height >= 8192 || args->bpp > 32)
>>> +               return -EINVAL;
>>>
>>> This is now in v7.1-rc6. Please revert ASAP.
>> Ah, missed this clue in the pull request:
>>
>> On Fri, 29 May 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>>> here is this week's PR from drm-misc-fixes. There's one cross-subsys
>>> commit to the dma-buf code. Commit 5ab62dd3687b ("drm: prevent integer
>>> overflows in dumb buffer creation helpers") has not Link tag because
>>> it went through the security list.
>> We have the whole review and CI processes in place to catch silly
>> mistakes, and then we proceed to shoot ourselves in the foot and bypass
>> all of that because "security", and expedite the regressions
>> everywhere. I'll bet this will be in stable kernels in no time too. This
>> is stupid.
>
> Indeed. But that's how this fix got in.
>
> It fixes a possible overflow elsewhere and using dumb buffers with 
> higher values that given here is questionable. Instead of outright 
> reverting this, let's first look what actually broke.

There's the kms_big_fb.c test [2]. It uses drmModeGetResources() to get
the max framebuffer size for the device. It's 16384x16384 for most Intel
devices that aren't ancient [3]. (Ditto for AMD I think.) Now the
CREATE_DUMB ioctl fails, because 5ab62dd3687b introduced new arbitrary
fixed scanout size limits that don't reflect the actual device limits.

Why is it questionable to use dumb buffers that are within the device
limits? Why is it not questionable to add arbitrary fixed limits?

Don't get me wrong, fixing overflows is great, but this part is an
unwarranted UABI change, and they shouldn't be rushed in masqueraded as
security fixes.


BR,
Jani.


[2] https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/tests/intel/kms_big_fb.c?ref_type=heads#L994

[3] https://gitlab.freedesktop.org/drm/i915/kernel/-/blob/drm-intel-next/drivers/gpu/drm/i915/display/intel_display_driver.c?ref_type=heads#L133


-- 
Jani Nikula, Intel
