Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFijON7FFWo5bAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 18:10:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A7A5D95FC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 18:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E663610E4B2;
	Tue, 26 May 2026 16:10:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Cfp3jBb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4DF10E1B7;
 Tue, 26 May 2026 16:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVQM7BLJHLhYOoEkHmhcc4JzD44t4ayT0gYW6wGZvM8=; b=Cfp3jBb3IptkOfKHa1BABv6j/+
 YKng3/sOJCVjqe/8w/BxORBpdqVOQVLI23YS2wSdtyYm3IFk3iFNsA9vFwALePv9cn0G3zV8qjGKZ
 iTJ2tIfRbT59Pbk5HFeWisp+nVIAmdUX2rK5qS62o5VSU9DZhWtaJEIHTHjjvYUAnfLlA9eE+zNdj
 wfvOgsQufXC8Uxqnh+KG7S4PyxbSQvK06BbMDsBxQOr2dyH4Xnvs5Ymp+7QZbN0nvWYmVVPmPh1QX
 ykaU+DvJnmOqVMpicrVy1XZemmh/wxrERU/+PT4z/sHcgkxoIifVukzMKHTwuVW7ozjRHjtLqDZcR
 An595ZJQ==;
Received: from [79.117.146.159] (helo=[192.168.1.135])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wRuLR-008VeX-Vv; Tue, 26 May 2026 18:09:30 +0200
Message-ID: <9d30ef2d-cea8-44dc-9669-492ddaa02108@igalia.com>
Date: Tue, 26 May 2026 18:09:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/4] drm/amd/display: use plane color_mgmt_changed to
 track colorop changes
To: Alex Hung <alex.hung@amd.com>, airlied@gmail.com,
 alexander.deucher@amd.com, christian.koenig@amd.com, harry.wentland@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch,
 siqueira@igalia.com, sunpeng.li@amd.com, tzimmermann@suse.de
Cc: Simon Ser <contact@emersion.fr>, Uma Shankar <uma.shankar@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Xaver Hugl <xaver.hugl@kde.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 amd-gfx@lists.freedesktop.org, kernel-dev@igalia.com,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20260525100524.304263-1-mwen@igalia.com>
 <20260525100524.304263-5-mwen@igalia.com>
 <85aad1b1-3ac8-464a-ab5a-69c92a491925@amd.com>
Content-Language: en-US
From: Melissa Wen <mwen@igalia.com>
In-Reply-To: <85aad1b1-3ac8-464a-ab5a-69c92a491925@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,linux.intel.com,kernel.org,ffwll.ch,igalia.com,suse.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FREEMAIL_CC(0.00)[emersion.fr,intel.com,kde.org,collabora.com,bootlin.com,linux.dev,lists.freedesktop.org,igalia.com,oss.qualcomm.com,kernel.org,gmail.com,poorly.run,somainline.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: 98A7A5D95FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 26/05/2026 05:29, Alex Hung wrote:
> Reviewed-by: Alex Hung <alex.hung@amd.com>

Hi Alex,

Thanks for the reviews.
As this last patch depends on the previous one, I think the entire 
series should go via AMD's branch, instead of drm-misc.
WDYT?

Melissa

>
> On 5/25/26 03:50, Melissa Wen wrote:
>> Ensure the driver tracks changes in any colorop property of a plane
>> color pipeline by using the same mechanism of CRTC color management and
>> update plane color blocks when any colorop property changes. It fixes an
>> issue observed on gamescope settings for night mode which is done via
>> shaper/3D-LUT updates.
>>
>> Reviewed-by: Harry Wentland <harry.wentland@amd.com>
>> Signed-off-by: Melissa Wen <mwen@igalia.com>
>> ---
>>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c 
>> b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>> index d590f0df6abd..36425d9c2a67 100644
>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>> @@ -10198,7 +10198,7 @@ static void amdgpu_dm_commit_planes(struct 
>> drm_atomic_commit *state,
>>               continue;
>>             bundle->surface_updates[planes_count].surface = dc_plane;
>> -        if (new_pcrtc_state->color_mgmt_changed) {
>> +        if (new_pcrtc_state->color_mgmt_changed || 
>> new_plane_state->color_mgmt_changed) {
>>               bundle->surface_updates[planes_count].gamma = 
>> &dc_plane->gamma_correction;
>> bundle->surface_updates[planes_count].in_transfer_func = 
>> &dc_plane->in_transfer_func;
>> bundle->surface_updates[planes_count].gamut_remap_matrix = 
>> &dc_plane->gamut_remap_matrix;
>> @@ -12024,6 +12024,10 @@ static bool should_reset_plane(struct 
>> drm_atomic_commit *state,
>>       if (new_crtc_state->color_mgmt_changed)
>>           return true;
>>   +    /* Plane color pipeline or its colorop changes. */
>> +    if (new_plane_state->color_mgmt_changed)
>> +        return true;
>> +
>>       /*
>>        * On zpos change, planes need to be reordered by removing and 
>> re-adding
>>        * them one by one to the dc state, in order of descending zpos.
>

