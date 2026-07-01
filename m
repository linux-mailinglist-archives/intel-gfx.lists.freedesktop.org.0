Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /0kjJv47RWoN9AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:10:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125456EF8B8
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:10:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=XkiCTJN6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DD810ED62;
	Wed,  1 Jul 2026 16:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D7A10E1DD;
 Wed,  1 Jul 2026 16:10:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782922228; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=D+DgbiLr5kexcx+lrub8/HrLRUgxgKUhBJDeeapRywpp7TFyGKClfXuuspUUN+mXBjxfFZ2Pcn6voS8py0L+fvBDY9KM6YVv8g6h6GZZpXA6mWo0viisyrIYF6HaQhLigmTYAxlSzrFh+xSLGg1rSUHK1xL6EkEliifobmA/UIg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782922228;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=KDVZueUcLft5Z4nd96BM/LR5QgkNIeejRUglXYj5hQI=; 
 b=Cbza1F6zd4b8eNrJm6QQZnWbaXGROnXNwZE4X/KUxnMKjdmJ6T6TkOejYrBCzrWWvIlOUu54Ydz/4xgWeLqxSMF/yooELkyr78xPmfuwJvKgV7vO2CBt1ICyW7ytNIjzsUEwf2/uTyk4dRMnsPANa/i2aeG4VvTmkJUOR8lKGkk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782922228; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=KDVZueUcLft5Z4nd96BM/LR5QgkNIeejRUglXYj5hQI=;
 b=XkiCTJN6wZKvA/ALm8VS69i5BEgdDsDd6ybgh5VgMYpBWF2gc6f6h4hAo6gnff5E
 0XEvNcWLyFO1ZU1NHpR4NwtQ02jfo0K+29nSOp+Mge7+9gEDVyyHgOeStZfvdmhkxtM
 gjeL3fFmTfFQMeAebRZi22D3qFJ10DKK+8RXNZj8=
Received: by mx.zohomail.com with SMTPS id 1782922226555993.1991732003413;
 Wed, 1 Jul 2026 09:10:26 -0700 (PDT)
Message-ID: <52afa800-5b29-45d1-9418-19ae30122a30@collabora.com>
Date: Wed, 1 Jul 2026 18:10:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
 behind driver feature
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org
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
 <853a147c-6565-4286-ba4f-60decd3b23e0@linux.intel.com>
Content-Language: en-US, de-DE
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <853a147c-6565-4286-ba4f-60decd3b23e0@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:mid,collabora.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 125456EF8B8

Hey Maarten,

On 01.07.26 16:26, Maarten Lankhorst wrote:
> Hey,
>
>
> On 7/1/26 15:32, Robert Mader wrote:
>> Hi Maarten,
>>
>> On 01.07.26 12:41, Maarten Lankhorst wrote:
>>> Hello,
>>>
>>> All you have to do is iterate over all planes at runtime until
>>> one is found that has the pipeline property attached, it's not
>>> a performance sensitive area and no locking is required for
>>> testing if plane->color_pipeline_property is NULL.
>> that's correct - I checked that before and while the amount of code changes necessary to support such a "check-planes-with-cap-enabled-and-reinitialize-without-cap-otherwise" is not big (AFAICS it should be possible with under 100 lines in Weston), it would need to be replicated in various Wayland compositors and lots of apps with native DRM backend (drm_info, Gstreamer KMS sink, MPV, Kodi etc.). The small change proposed here seems like a more elegant solution to me.
>>
>> In a previous chat Pekka and Simon seemed to agree, quoting: "< emersion> pq, you mean the cap is advertised regardless of driver support? that sounds like a bug".
> You misunderstand my comment, I meant this from the kernel side.

Ouch, you are right - and iterating over all planes in 
`drm_setclientcap()` with `drm_for_each_plane()` indeed looks like the 
much easier and cleaner solution. Will send out a v2 doing that and 
ditching the new cap again.

Thanks!

-- 
Robert Mader
Consultant Software Developer

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales, no. 5513718

