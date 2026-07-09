Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Xm7DDsSKT2rijAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:49:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1A7730968
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:49:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TseJUZSE;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D6D10F523;
	Thu,  9 Jul 2026 11:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BD810F522;
 Thu,  9 Jul 2026 11:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783597761; x=1815133761;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=u9WyhBwJWwZWKBFfj/tzgZqVEyLcVYZZsKrHDL6kEMo=;
 b=TseJUZSEtjSFyzKmvxBS1hkH80Lqq60Ug+GJPDh6WhJye/6vayrw2HHe
 0OBVXJQc6XyaMRVjrl2QQpXLSRYuGDzOqJMrIviw7DQGn6uYPOt2cLrBw
 l+oKqc48yWwGPc5MGF80IaH0yxqGY21Dp5pEkoq6d7nA8yORQhicPNqj9
 ERqkNctw+/uHHPum1W/qshgzYH8IfcjYh3psiyJLCSv5bTbBW3YtZi5t1
 jmZTlgQtya24SvIbhJ2Eblua3J3llxNUjxEgnAyccNkBKb6e+GW4HzAye
 83ESObosvHSvGwNpDEObX3zaBqETmV4l6P4gyYpymmBpN14IexZgxSGK5 g==;
X-CSE-ConnectionGUID: wWRy4RcMSzqZn0V2eKLQsQ==
X-CSE-MsgGUID: 6q3nsBVIS5WT42dcs6Bcwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="71795498"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="71795498"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 04:49:21 -0700
X-CSE-ConnectionGUID: aes+foP4Sz6c7WdwoA6vYA==
X-CSE-MsgGUID: F0RgrAboReG4T9CWPFB8zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="250166295"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO [10.245.244.49])
 ([10.245.244.49])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 04:49:17 -0700
Message-ID: <a7887776-c26c-4f6d-a662-2d8ef005ff4c@linux.intel.com>
Date: Thu, 9 Jul 2026 13:49:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
To: Robert Mader <robert.mader@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>, Daniel Stone
 <daniels@collabora.com>, Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
References: <20260703073230.19982-1-robert.mader@collabora.com>
 <6d8806b8-fc71-4699-82c4-7189a0ea2284@intel.com>
 <bb5918f5-a6da-4908-9332-18e0df39c005@linux.intel.com>
 <7d58b289-eabe-4d68-9080-c7202b0f60a0@intel.com>
 <d42d5750-f3c5-4e2b-baa3-514b87e59e86@linux.intel.com>
 <361dfc91-94e8-4289-9b3e-5280803d9257@collabora.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <361dfc91-94e8-4289-9b3e-5280803d9257@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7B1A7730968

Hey,

On 7/9/26 13:14, Robert Mader wrote:
> Hi,
> 
> On 09.07.26 12:02, Maarten Lankhorst wrote:
>> Hey,
>>
>> On 7/9/26 08:44, Borah, Chaitanya Kumar wrote:
>>>
>>> On 7/7/2026 6:31 PM, Maarten Lankhorst wrote:
>>>> Hey,
>>>>
>>>> On 7/7/26 10:03, Borah, Chaitanya Kumar wrote:
>>>>> On 7/3/2026 1:02 PM, Robert Mader wrote:
>>>>>> The client cap is currently advertised unconditionally, even for drivers
>>>>>> that do not support plane color pipelines. If clients supporting the later,
>>>>> s/later/latter
>>>>>
>>>>>> like Wayland compositors or tools like drm_info, enable the client cap on
>>>>>> such drivers they will be left without both color pipeline and the legacy
>>>>>> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
>>>>>> conversion support.
>>>>>>
>>>>>> Prevent that by only marking the cap supported if there are actually planes
>>>>>> with color pipelines.
>>>>>>
>>>>>> Note: while the color pipeline replacement for the legacy properties is
>>>>>> still under review (1), we can assume that it will work as a drop-in
>>>>>> replacement.
>>>>> This change will but a driver can also choose to export colorops like programmable CTM_3x4 to achieve the same.
>>>>>
>>>>> We should also perhaps document this somewhere that if a driver supports LEGACY properties, it is imperative to implement some version of it with the color pipeline line property.
>>>> Would this be doable inside drm core? Implement the color pipeline properties, get the fixed pipeline for free?
>>> Right now, the Bypass(default) pipeline is automatically created when we call drm_plane_create_color_pipeline_property(), we could come up with a similar helper that could also create a pipeline that replaces the legacy properties.
>>>
>>> But this can't replace the existing helper entirely because some HW (though unlikely) might not support YUV buffers.
>> No need to do this for free, but a cheaper way for drivers to implement legacy
>> properties by only implementing the pipeline would be nice, similar to how
>> atomic also implements legacy modesetting and universal planes.
> 
> I really like this idea - should we take it to the corresponding series, https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/ so the initial implementations for AMD and VKMS directly do so?

That would be great!

Kind regards,
~Maarten Lankhorst
