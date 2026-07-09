Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nC2ZH5mCT2qwiQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:14:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE947301A8
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:14:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=NUb4xyuv;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FBD910E6B8;
	Thu,  9 Jul 2026 11:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com
 [136.143.188.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2079D10E013;
 Thu,  9 Jul 2026 11:14:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783595660; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=KNcqOPV908wS/IFidXvtJ3W/tTwK9fEQk92s28HHlHQyVPJ8vDqnkBYevag7hL2mCUbN0HeSoxqCrlc6AWQlXlhACfmcnuTWJfcIYps42HGmGt/KSbihAj77Yq3JIQvSF9BGEMeCh7ERj84qPNZJmZShpWNX+F15hqH4BW3xfxI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1783595660;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=9aocsOpowH+ZsBOhN77TCgYYBcPmRbX7RXXs+joV1Gw=; 
 b=VL4p18jXQIzw3KeXR9ZUuUT0xbLzz3Jzubs4+7S6g87rQlwsToXdMhcsDqcBjlqWdA40HlyKcWidbnABbv26knP8fCgVs3T/2u+D62reMEKr31OBQZPE+B/SepqJ92KkC8DcWpCr2J3EFfO8aOxI2pZDAWyO5NH74sPjJCoF1ns=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783595660; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=9aocsOpowH+ZsBOhN77TCgYYBcPmRbX7RXXs+joV1Gw=;
 b=NUb4xyuvRJ1x3cCc1/J0Uv8Lv2bWQwyPXIoYviH9KlZCnqxVnp9Q75FkV5AV+gvZ
 AS9mlmIcSujlIhxzOVdiydiDrN2DRRd7ZvuGpAnpMmJ5eW9mDcFgQzDnCltNZ8WsAMi
 fkmG998SA/g41RNWDZuRPchLWCdqI3aUO1qArUZs=
Received: by mx.zohomail.com with SMTPS id 17835956579351020.4396036820058;
 Thu, 9 Jul 2026 04:14:17 -0700 (PDT)
Message-ID: <361dfc91-94e8-4289-9b3e-5280803d9257@collabora.com>
Date: Thu, 9 Jul 2026 13:14:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Content-Language: en-US, de-DE
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <d42d5750-f3c5-4e2b-baa3-514b87e59e86@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.mader@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:dkim,collabora.com:mid,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DE947301A8

Hi,

On 09.07.26 12:02, Maarten Lankhorst wrote:
> Hey,
>
> On 7/9/26 08:44, Borah, Chaitanya Kumar wrote:
>>
>> On 7/7/2026 6:31 PM, Maarten Lankhorst wrote:
>>> Hey,
>>>
>>> On 7/7/26 10:03, Borah, Chaitanya Kumar wrote:
>>>> On 7/3/2026 1:02 PM, Robert Mader wrote:
>>>>> The client cap is currently advertised unconditionally, even for drivers
>>>>> that do not support plane color pipelines. If clients supporting the later,
>>>> s/later/latter
>>>>
>>>>> like Wayland compositors or tools like drm_info, enable the client cap on
>>>>> such drivers they will be left without both color pipeline and the legacy
>>>>> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
>>>>> conversion support.
>>>>>
>>>>> Prevent that by only marking the cap supported if there are actually planes
>>>>> with color pipelines.
>>>>>
>>>>> Note: while the color pipeline replacement for the legacy properties is
>>>>> still under review (1), we can assume that it will work as a drop-in
>>>>> replacement.
>>>> This change will but a driver can also choose to export colorops like programmable CTM_3x4 to achieve the same.
>>>>
>>>> We should also perhaps document this somewhere that if a driver supports LEGACY properties, it is imperative to implement some version of it with the color pipeline line property.
>>> Would this be doable inside drm core? Implement the color pipeline properties, get the fixed pipeline for free?
>> Right now, the Bypass(default) pipeline is automatically created when we call drm_plane_create_color_pipeline_property(), we could come up with a similar helper that could also create a pipeline that replaces the legacy properties.
>>
>> But this can't replace the existing helper entirely because some HW (though unlikely) might not support YUV buffers.
> No need to do this for free, but a cheaper way for drivers to implement legacy
> properties by only implementing the pipeline would be nice, similar to how
> atomic also implements legacy modesetting and universal planes.

I really like this idea - should we take it to the corresponding series, 
https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/ 
so the initial implementations for AMD and VKMS directly do so?

Regards

>
> Kind regards,
> ~Maarten Lankhorst

-- 
Robert Mader
Consultant Software Developer

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales, no. 5513718

