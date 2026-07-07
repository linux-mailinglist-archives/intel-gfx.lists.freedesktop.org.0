Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /ZnIDRT8TGoLtAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:16:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E8971BC41
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:16:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="ASeBTo/0";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261F710ECED;
	Tue,  7 Jul 2026 13:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com
 [136.143.188.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E3C10ECEB;
 Tue,  7 Jul 2026 13:16:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783430152; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=cpB50S59VRu/EKC48+ikzc9YvMgOjb8U5Ft9BR+34AcvftHQpubdQBUO8Kp4Tnii0393/df63cZZWxlNSwXV4v0ADaursX12DTXLdDvztPK3+WDFhKLayAGs93KKU7mTe+BhEHRKybK8GyB/oCR0BQ3XtAoMXHQDJooynakP84I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1783430152;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=AjiMAH+aUOZ1T5Y6Winl/yzirQDCF30FfDqJLLs3nI0=; 
 b=XoWvc7PgKPbRe4euzkb03O8L74Ui6RFjRRTnMIVj5k8XLyU5cC08klbz52cMlKejV/iRE57KxNzWliZ8uZU+4BYdLqxOiD3QiDORLVPkWlLFGsMY+mHa9xAFOh3OOZJIcPr67eK/rLI4OR2Juo29HJNFJAPBerrU9I+YVUEUak8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783430152; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=AjiMAH+aUOZ1T5Y6Winl/yzirQDCF30FfDqJLLs3nI0=;
 b=ASeBTo/0jYpDQViBrlxcZh+DVqaQYOejqc0HosMJJCUeUhh3KnToXBT9njL+QcZS
 2EviRqwfOu3LymyGLKAQA/8h/xP46I0WIfn73TyYz9z4eTcF8Em/cStE2RdpKaAQ7+I
 sibf1iY/kf4kvEOvgoO763I/JthTOnYTbiTppsmc=
Received: by mx.zohomail.com with SMTPS id 1783430149837990.5307558137384;
 Tue, 7 Jul 2026 06:15:49 -0700 (PDT)
Message-ID: <d3e954dd-381f-480b-8f48-698d8aead017@collabora.com>
Date: Tue, 7 Jul 2026 15:15:44 +0200
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
Content-Language: en-US, de-DE
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <bb5918f5-a6da-4908-9332-18e0df39c005@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1E8971BC41

Hi,

On 07.07.26 15:01, Maarten Lankhorst wrote:
> Hey,
>
> On 7/7/26 10:03, Borah, Chaitanya Kumar wrote:
>>
>> On 7/3/2026 1:02 PM, Robert Mader wrote:
>>> The client cap is currently advertised unconditionally, even for drivers
>>> that do not support plane color pipelines. If clients supporting the later,
>> s/later/latter
>>
>>> like Wayland compositors or tools like drm_info, enable the client cap on
>>> such drivers they will be left without both color pipeline and the legacy
>>> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
>>> conversion support.
>>>
>>> Prevent that by only marking the cap supported if there are actually planes
>>> with color pipelines.
>>>
>>> Note: while the color pipeline replacement for the legacy properties is
>>> still under review (1), we can assume that it will work as a drop-in
>>> replacement.
>> This change will but a driver can also choose to export colorops like programmable CTM_3x4 to achieve the same.
>>
>> We should also perhaps document this somewhere that if a driver supports LEGACY properties, it is imperative to implement some version of it with the color pipeline line property.
> Would this be doable inside drm core? Implement the color pipeline properties, get the fixed pipeline for free?
>
> But thanks for all feedback, as I was about to push this patch, I noticed it still uses -EOPNOTSUPP, can it be changed to -EINVAL?

For existing users it shouldn't make a difference. drm_info and Weston 
just check for "drmSetClientCap() == 0" - and old kernels without the 
cap will also return -EINVAL AFAICS.

I personally find -EOPNOTSUPP more appropriate and more in line with 
other return values in that function - but no strong opinion, thus feel 
free to change while applying (or I can resend the patch accordingly if 
you prefer).

Robert

>
> ~Maarten

-- 
Robert Mader
Consultant Software Developer

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales, no. 5513718

