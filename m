Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9tL8BfUvRmqCLQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 11:31:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3C06F546E
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 11:31:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=jwyULO8r;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3779E10F25A;
	Thu,  2 Jul 2026 09:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF4F10E48C;
 Thu,  2 Jul 2026 09:31:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782984682; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=PfKFG9RhyxZ/Be5OuN+QqF3/BpbnmA1csy44z/dMcd+YIjvJgwvmOHOiJ+2KRMKxIOoQur2T9f+dCn79aiGf3rgs9pzZr/ieS/mvwK9ldHDTosm8k6kLHgd9ZEmlWkBnbQVFNBuhOybf15R8spj3zeYcFN+FZfz3YHoCfLe2aJE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782984682;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=RDz1VrwgVY8/yTgdWqaKJKdhG6xDvuE7IeCeMPv1hQs=; 
 b=HKOyBhxVPEBNIYCvY/Bipj1MqKUWcdyEq8GnntQKERrMfWcXg2ssZowkS2zK7JmVaooGdCka67TEXs9BjIuxT/LkSuJAjjeXngQEITJzTzXKcAjzUuN/eDLjjD0Tjl0E+AdBiRIVaC64WS6USM3mvCEZZS4VOBMUN5TEDnCSs/s=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782984681; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=RDz1VrwgVY8/yTgdWqaKJKdhG6xDvuE7IeCeMPv1hQs=;
 b=jwyULO8rOuk48YoiNDxc+VCzbqUHPa1j1hZ0oj9GR9HkLwLwJf6lKsn7fiuFgCUg
 zCEtXPryDIhrGcXJOeO7hG/GTDwB2SYMuML5kDKujK2SPmgHJZGEdT0zzTmzsWX4yX1
 qzq44EBPrqgeGC1FAcPx4qxVjHnw72bHee+88p0s=
Received: by mx.zohomail.com with SMTPS id 1782984679497750.7953951953009;
 Thu, 2 Jul 2026 02:31:19 -0700 (PDT)
Message-ID: <0f495406-a3c9-4c72-8419-a647a864e0fb@collabora.com>
Date: Thu, 2 Jul 2026 11:31:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
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
References: <20260702081641.22990-1-robert.mader@collabora.com>
 <83f324a2-abe1-4b32-8782-439569f651d2@linux.intel.com>
Content-Language: en-US, de-DE
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <83f324a2-abe1-4b32-8782-439569f651d2@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:mid,collabora.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF3C06F546E

Hi,

On 02.07.26 10:34, Maarten Lankhorst wrote:
> Hello,
<snip>
> On 7/2/26 10:16, Robert Mader wrote:
>> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
>> index e2df4becce62..b2c0234eaf14 100644
>> --- a/drivers/gpu/drm/drm_ioctl.c
>> +++ b/drivers/gpu/drm/drm_ioctl.c
>> @@ -373,13 +373,26 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
>>   			return -EINVAL;
>>   		file_priv->supports_virtualized_cursor_plane = req->value;
>>   		break;
>> -	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
>> +	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE: {
>> +		struct drm_plane *plane;
>> +		bool has_plane_with_color_pipeline = false;
>> +
>> +		drm_for_each_plane(plane, dev) {
>> +			if (plane->color_pipeline_property) {
>> +				has_plane_with_color_pipeline = true;
>> +				break;
>> +			}
>> +		}
>> +		if (!has_plane_with_color_pipeline)
>> +			return -EOPNOTSUPP;
>> +
>>   		if (!file_priv->atomic)
>>   			return -EINVAL;
>>   		if (req->value > 1)
>>   			return -EINVAL;
>>   		file_priv->plane_color_pipeline = req->value;
>>   		break;
>> +	}
> Perhaps put the most specific check (is there a plane with color pipeline?)
> last, and return -EINVAL, as that is the default before
> DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE was added.
>
> Kind regards,
> ~Maarten Lankhorst
Thanks, will do so in v3. Will wait a bit more for further feedback and 
send it out tomorrow.

-- 
Robert Mader
Consultant Software Developer

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales, no. 5513718

