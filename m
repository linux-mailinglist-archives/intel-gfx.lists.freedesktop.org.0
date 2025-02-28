Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B181A4A55E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 22:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D70E10E2AE;
	Fri, 28 Feb 2025 21:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="H9mIWyL3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D7110E0E3;
 Fri, 28 Feb 2025 21:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oCDXtCW5o4O6IdQSa491PzOZb8jjQJcoikIvha8SEEw=; b=H9mIWyL31odPjG/yzhOB80yR/c
 tUYrQwkvz7Sd6QrKAYFJguI/OzL6+F2j7CPH1D5hx5SNNq+WZYiwoWOwdHQe+NY1CiOVaQXyC6Sm4
 GrqddEJAK9/qUG9zLIWj6iGKbTHhG+16PQ96/x5MaKQFKKkynDbXPjwP8bcoBTxRlLuw8H18D/m4i
 SdSurqIfKz6Zb9DwEuiR8pOg0IPVrIopPR2LrvHcyZSUdaaZ0LCoRuLNgjni9rTLYLHAoVCy0BbN2
 1c/1efvGy1j7Tj06PrferLx7/83hcm8sMCWbuPT4EOcpFa7Ef24qiMFivnrx7bsRfv9KtUzZVzCqT
 EF9HcNaQ==;
Received: from [179.106.178.202] (helo=[192.168.5.235])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1to8Ev-002H2Z-Ju; Fri, 28 Feb 2025 22:49:55 +0100
Message-ID: <38b9cc8b-2a55-4815-a19f-f5bdf0f7687c@igalia.com>
Date: Fri, 28 Feb 2025 18:49:43 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/amdgpu: Make use of drm_wedge_app_info
To: Raag Jadav <raag.jadav@intel.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel-dev@igalia.com, amd-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?B?J0NocmlzdGlhbiBLw7ZuaWcn?= <christian.koenig@amd.com>,
 siqueira@igalia.com, airlied@gmail.com, simona@ffwll.ch,
 rodrigo.vivi@intel.com, jani.nikula@linux.intel.com
References: <20250228121353.1442591-1-andrealmeid@igalia.com>
 <20250228121353.1442591-3-andrealmeid@igalia.com>
 <Z8HO-s_otb2u44V7@black.fi.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>
In-Reply-To: <Z8HO-s_otb2u44V7@black.fi.intel.com>
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

Hi Raag,

On 2/28/25 11:58, Raag Jadav wrote:
> On Fri, Feb 28, 2025 at 09:13:53AM -0300, André Almeida wrote:
>> To notify userspace about which app (if any) made the device get in a
>> wedge state, make use of drm_wedge_app_info parameter, filling it with
>> the app PID and name.
>>
>> Signed-off-by: André Almeida <andrealmeid@igalia.com>
>> ---
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 19 +++++++++++++++++--
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_job.c    |  6 +++++-
>>   2 files changed, 22 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
>> index 00b9b87dafd8..e06adf6f34fd 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
>> @@ -6123,8 +6123,23 @@ int amdgpu_device_gpu_recover(struct amdgpu_device *adev,
>>   
>>   	atomic_set(&adev->reset_domain->reset_res, r);
>>   
>> -	if (!r)
>> -		drm_dev_wedged_event(adev_to_drm(adev), DRM_WEDGE_RECOVERY_NONE, NULL);
>> +	if (!r) {
>> +		struct drm_wedge_app_info aux, *info = NULL;
>> +
>> +		if (job) {
>> +			struct amdgpu_task_info *ti;
>> +
>> +			ti = amdgpu_vm_get_task_info_pasid(adev, job->pasid);
>> +			if (ti) {
>> +				aux.pid = ti->pid;
>> +				aux.comm = ti->process_name;
>> +				info = &aux;
>> +				amdgpu_vm_put_task_info(ti);
>> +			}
>> +		}
> Is this guaranteed to be guilty app and not some scheduled worker?

This is how amdgpu decides which app is the guilty one earlier in the 
code as in the print:

     ti = amdgpu_vm_get_task_info_pasid(ring->adev, job->pasid);

     "Process information: process %s pid %d thread %s pid %d\n"

So I think it's consistent with what the driver thinks it's the guilty 
process.

> Raag
>
