Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id chPQDrQjRWrA7goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:27:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D06706EEB7D
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:26:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=U1uHbPDN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7EF10E469;
	Wed,  1 Jul 2026 14:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09E410E3A2;
 Wed,  1 Jul 2026 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782916014; x=1814452014;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LeJ4Etb/bs+mMpVgZ7+XfiR2eSv6eMXWa+iNgsnuWZs=;
 b=U1uHbPDNr3bOc575KKRyvexuthKtNR0I3/F+u4357wFCqcp5m/fCr3Uy
 gkph2v3ljqmvBft9D++FuyamcGsuJQAxzey2Ej1AL/7anC8tQVqaB1j50
 dsTzjXdoDqembHGEoIRJgbe+B03qqQS/7YT3lkJD0jN3abqkJZQdGAenP
 CVIX/4zQ+GLFFGKTOn+4EVn0HhR6g9feMDLeYdceuByBLOWOSye03Cu19
 l8xZx/5lGDTSmwUl/AESXbVm0492v9PvRG3/TRISCDe+RjdF2fjNq1ein
 pvhA+E4+qG0EyDdFgyno1hB/zkHQiHpQxTVfEitvgfmXGwjbPaVDWl9eW w==;
X-CSE-ConnectionGUID: e3j28ry/Tt2ajIPcHYo3uw==
X-CSE-MsgGUID: VJLz7q3oSlWKJXtlZnmL+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83426283"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83426283"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 07:26:53 -0700
X-CSE-ConnectionGUID: z2oPJFEWTwmjm8Ns9riNdA==
X-CSE-MsgGUID: yWS2qhZITMeQi1FbaIgtCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="256162220"
Received: from abityuts-desk1.ger.corp.intel.com (HELO [10.245.244.143])
 ([10.245.244.143])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 07:26:47 -0700
Message-ID: <853a147c-6565-4286-ba4f-60decd3b23e0@linux.intel.com>
Date: Wed, 1 Jul 2026 16:26:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
 behind driver feature
To: Robert Mader <robert.mader@collabora.com>, dri-devel@lists.freedesktop.org
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>, Daniel Stone
 <daniels@collabora.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
References: <20260630084229.529682-1-robert.mader@collabora.com>
 <3bc9d27b-2886-48df-a897-7e73f14a88a2@linux.intel.com>
 <11792a51-aeeb-428f-a793-607ff09558f3@collabora.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <11792a51-aeeb-428f-a793-607ff09558f3@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:url,lists.freedesktop.org:from_smtp,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D06706EEB7D

Hey,


On 7/1/26 15:32, Robert Mader wrote:
> Hi Maarten,
> 
> On 01.07.26 12:41, Maarten Lankhorst wrote:
>> Hello,
>>
>> All you have to do is iterate over all planes at runtime until
>> one is found that has the pipeline property attached, it's not
>> a performance sensitive area and no locking is required for
>> testing if plane->color_pipeline_property is NULL.
> 
> that's correct - I checked that before and while the amount of code changes necessary to support such a "check-planes-with-cap-enabled-and-reinitialize-without-cap-otherwise" is not big (AFAICS it should be possible with under 100 lines in Weston), it would need to be replicated in various Wayland compositors and lots of apps with native DRM backend (drm_info, Gstreamer KMS sink, MPV, Kodi etc.). The small change proposed here seems like a more elegant solution to me.
> 
> In a previous chat Pekka and Simon seemed to agree, quoting: "< emersion> pq, you mean the cap is advertised regardless of driver support? that sounds like a bug".

You misunderstand my comment, I meant this from the kernel side.

>> You can also make drm_plane_create_color_pipeline_property set
>> the flag in drm_device::driver_features that the cap is supported.
> Automatically enabling the driver feature sounds like a reasonable improvement - I'll try that, thanks!
>>
>> But the cap setting code's not really performance sensitive, it will
>> be called only a few times during boot at most. Perhaps check whether
>> the first crtc->primary plane has the cap is also sufficient.
>>
>> If you want to continue with a special driver cap, then please set
>> the flag for the xe driver too.
> Indeed, will do in case the approach mentioned above doesn't work out for some reason.
>> Kind regards,
>> ~Maarten Lankhorst
> 
> Regards and thanks for the feedback!e
>>
>> On 6/30/26 10:42, Robert Mader wrote:
>>>  From the main commit:
>>>
>>> The client cap is currently advertised unconditionally, even for drivers that do
>>> not support plane color pipelines. If clients supporting the later, like Wayland
>>> compositors and drm_info, enable the client cap on sich drivers they will be
>>> left without both color pipeline and the legacy properties COLOR_ENCODING and
>>> COLOR_RANGE, effectively breaking YUV->RGB conversion support.
>>>
>>> Add a new driver feature and guard the client cap behind it, allowing
>>> plane color pipeline and legacy YUV->RGB support to co-exist.
>>>
>>> In case of VKMS make the client cap depend on the enable_plane_pipeline.
>>>
>>> The series can be easily tested with drm_info >= v2.10.0 and VKMS. Without the
>>> enable_plane_pipeline option - currently the default - the legacy flags
>>> COLOR_ENCODING and COLOR_RANGE should be advertised, just like older drm_info
>>> versions.
>>>
>>> ---
>>>
>>> Related series actually implementing the color pipeline replacement for the
>>> legacy flags:
>>> https://lists.freedesktop.org/archives/dri-devel/2026-June/575655.html
>>>
>>>
>>> Robert Mader (4):
>>>    drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE behind driver feature
>>>    drm/amdgpu: Add DRIVER_PLANE_COLOR_PIPELINE driver feature
>>>    drm/i915: Add DRIVER_PLANE_COLOR_PIPELINE driver feature
>>>    drm/vkms: Add DRIVER_PLANE_COLOR_PIPELINE driver feature
>>>
>>>   drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 2 +-
>>>   drivers/gpu/drm/drm_ioctl.c             | 2 ++
>>>   drivers/gpu/drm/i915/i915_driver.c      | 2 +-
>>>   drivers/gpu/drm/vkms/vkms_drv.c         | 6 +++++-
>>>   include/drm/drm_drv.h                   | 6 ++++++
>>>   5 files changed, 15 insertions(+), 3 deletions(-)
>>>

