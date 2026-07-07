Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6oO1CIi5TGoDowEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:32:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E0F719222
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:32:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="LQK+/f4U";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A4210EBE5;
	Tue,  7 Jul 2026 08:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com
 [136.143.188.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F2010EBE2;
 Tue,  7 Jul 2026 08:32:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783413118; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=V4gYb7A3o1r/fFfzojvNy8u0/ppoQJ90AqzY1DwDIt1Y7SkTxX/mrFXg2t/D3VwaijCDk4mbIHCoT+zEBwGHSXUltmgJ3YrnRgq0bCAjt3P/8u5iek/bv0v7Hkidkwk78z0Q4kZohOYrBO0kWwXzDB/+lLrdiEMWbpckkCz6roc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1783413118;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=anpLiGeSvRsdlXNJRpFP5O/x+/fyL2CxxAyNwmMmqB4=; 
 b=XHjQ4vG+Zj/8t6FM+fUGaRKMmd5c+rSsXC08orWQXv1l/a3gUrA6tetmozTB756KmEU2Aio3HpOgKOdIN/eYpgA9ANyGpnrzVShZdos/DTDUlGnPCq36e1AaD2qdVkOYXbvpQUtbZxj8sJkqsGKIRChJKpLuA8lmws2syJgF+Vc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783413118; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=anpLiGeSvRsdlXNJRpFP5O/x+/fyL2CxxAyNwmMmqB4=;
 b=LQK+/f4UMZ4AWlUSWpIa1woLUnOlX4FQic6nPt+xRioiEJyfZlyNRuIS0mlW7DPG
 wYWuZxEswhsfONGfzCyG60FnC4JCD3WRj8PHAQOluEkW7RQOZTTtPhwM+wNzOS9ws/A
 0bgHGgS2i7Qn1xSvrwLXq3IfXFuA9q6TV1jVyCLs=
Received: by mx.zohomail.com with SMTPS id 178341311694473.32983461955064;
 Tue, 7 Jul 2026 01:31:56 -0700 (PDT)
Message-ID: <270321d6-9ff5-443a-ab5a-5690adb04241@collabora.com>
Date: Tue, 7 Jul 2026 10:31:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
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
References: <20260703073230.19982-1-robert.mader@collabora.com>
 <a346493c-047f-4b3b-b344-39b0266348ad@linux.intel.com>
Content-Language: en-US, de-DE
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <a346493c-047f-4b3b-b344-39b0266348ad@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1E0F719222

Hey,

On 07.07.26 10:26, Maarten Lankhorst wrote:
> Hey,
>
> This probably would be useful to backport to stable, can I add those tags and merge it?

yes, also please feel free to apply any suggestions by Chaitanyaand.

Thanks!

>
> Fixes: 179ab8e7d7b3 ("drm/colorop: Introduce DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE")
> Cc: <stable@vger.kernel.org> # v6.19+
>
> Kind regards,
> ~Maarten Lankhorst
>
> On 7/3/26 09:32, Robert Mader wrote:
>> The client cap is currently advertised unconditionally, even for drivers
>> that do not support plane color pipelines. If clients supporting the later,
>> like Wayland compositors or tools like drm_info, enable the client cap on
>> such drivers they will be left without both color pipeline and the legacy
>> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
>> conversion support.
>>
>> Prevent that by only marking the cap supported if there are actually planes
>> with color pipelines.
>>
>> Note: while the color pipeline replacement for the legacy properties is
>> still under review (1), we can assume that it will work as a drop-in
>> replacement. That means any plane on any hardware currently supporting
>> the legacy properties will be able to offer a functionally equal color
>> pipeline and there will be no technical reason keep using the legacy
>> properties if both the driver and the client support the new API.
>>
>> 1: https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/
>>
>> Signed-off-by: Robert Mader <robert.mader@collabora.com>
>>
>> ---
>>
>> Changes in v3:
>>   - Move the new check behind the existing EINVAL ones
>>   - Rebase on latest drm-misc-next
>>
>> Changes in v2:
>>   - Replace the driver feature with a simple check (suggested by Maarten
>>     Lankhorst <maarten.lankhorst@linux.intel.com>)
>>   - Expand the commit message slightly and change the title
>> ---
>>   drivers/gpu/drm/drm_ioctl.c | 14 +++++++++++++-
>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
>> index e2df4becce62..9039a39c4324 100644
>> --- a/drivers/gpu/drm/drm_ioctl.c
>> +++ b/drivers/gpu/drm/drm_ioctl.c
>> @@ -373,13 +373,25 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
>>   			return -EINVAL;
>>   		file_priv->supports_virtualized_cursor_plane = req->value;
>>   		break;
>> -	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
>> +	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE: {
>> +		struct drm_plane *plane;
>> +		bool has_plane_with_color_pipeline = false;
>> +
>>   		if (!file_priv->atomic)
>>   			return -EINVAL;
>>   		if (req->value > 1)
>>   			return -EINVAL;
>> +		drm_for_each_plane(plane, dev) {
>> +			if (plane->color_pipeline_property) {
>> +				has_plane_with_color_pipeline = true;
>> +				break;
>> +			}
>> +		}
>> +		if (!has_plane_with_color_pipeline)
>> +			return -EOPNOTSUPP;
>>   		file_priv->plane_color_pipeline = req->value;
>>   		break;
>> +	}
>>   	default:
>>   		return -EINVAL;
>>   	}

-- 
Robert Mader
Consultant Software Developer

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales, no. 5513718

