Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC77B092FD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC7710E87E;
	Thu, 17 Jul 2025 17:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="HNam0GTR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com
 [209.85.161.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9243610E173
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 17:18:41 +0000 (UTC)
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-6159430bdb2so311764eaf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 10:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1752772721; x=1753377521; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qHoXfjWQC8TVVYzDPkvOiGuoldc5PZrjcgFvoXK/PqM=;
 b=HNam0GTRyvR5QOPWm4jwn3gdkXxmIidU38kUybn2Sc0PKnNoSBUzOn8f0c7lYOUkHh
 r7jR7QsT0aD1qPo+QPT5mGxJ3q/gTNWs3ANIoL8PyqlT3Nc8eDmYdStV5YHUT/HQpLMY
 EbbIP2So4cchdC3S6fvWM0PB/chxaohywHWwS0fw1K1eZc2ol6nZrLSSWkJDyVH2ytf8
 fXA/u3znUPKnUupkSh5vr5OJ2CnTz6i0XKplq3m4Xsjtjob/89Qnw5XNwoeA8tw622Th
 Zv/Yzp7f4x1ODuwKhNzRXEqqg1T46lgtQmNnlznpSuKk9iz2PP0+OmGJ1C1z6F0XkB4l
 Q2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752772721; x=1753377521;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qHoXfjWQC8TVVYzDPkvOiGuoldc5PZrjcgFvoXK/PqM=;
 b=c+dGzqSdHzM4CWdkWTnI8gX/ow6MhkR6gH57u1DKg4l6bZKpnQphKTqYcNLcWDcNF/
 BnukY2age+1QBYFDFwQmNne6YtrKz9yn7gCsOFFnBJOWVVUSCWwSr9gG0j1/r5rnFHrV
 VAd8pAydtMoYOw51MjSjM0noXzu45Q4VGITj3b9B7Rz0IRHsJ9F1suCsD78X02vN/63i
 2o3Yz8NVSITkW2H+sD+vx8xrz/9sysw2ywARZ1KGcfCozuKABGdQU3bc6NOZg4/GNk9k
 VnWoYgNM5F2ciu7euIx9o5kx/lrb1YASfqt/+5NRIwguHbI+2YROMgGIAiiHhQe0L6SL
 Mzzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSnUJdkW8vkjSJphp+r74StkcuCI9+nvUG5NepGm1vitoYKomEhOyVYIydDWIIsILjXbYy439c17A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx1mXZCDxaGBDfnIP0VvwJ886LvkufbZarqUnQw2Xrm18WlwUAp
 5b4D/mBACgAXvFD/Aqnew0EEyqoh76CYo5b8QyxZM8ke0qwp1l1VrqVGSRoWMHaNqoQ=
X-Gm-Gg: ASbGncuC7xmukvYu7Rb4ZeqVkhlJto8PJOfgeyAEELb3oHGORVsnAQsl94cPysd7eEx
 gGxISfQYEyq/XR+tXzQC8/YrBOqHVqzHPL4UcHJkfYAyahnLpZlswuQrKxIyNJssKycmmAbS/OT
 7N4Zoh7ZM4d6F6CSC9ZXQRa6KRBo5MEotgi8rnoiNxBklUaGryQOcYoDzJ0PKfdMT6adWpEpnvf
 gIf1vE5pOCfpsIo/c8DoiAKgapJP2iHtY52IqU7coRr4wmRnxg74cZFPnvtxDemCm+HT/vKtwVh
 /3ZBW1oeol6B6+r/32zHvLMckfY/Tx0k01oXJIGOrlqCSKBQAXXf4O/NeFLu7C+INwQShYcLmol
 km1LXkPcdMtxib8u5jCgnzV1p+gt5
X-Google-Smtp-Source: AGHT+IGELhiK4hjfMobIpMIU2UtOIBfYoT9/LyPnaEBZIlbG1PXXxwBIK9SN4nNubEMnnT7fY/jmQQ==
X-Received: by 2002:a05:6820:2981:b0:613:c922:32c6 with SMTP id
 006d021491bc7-6159fe1c1b2mr5601644eaf.2.1752772720691; 
 Thu, 17 Jul 2025 10:18:40 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:2c38:70d4:43e:b901])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-613d9f14472sm2868014eaf.29.2025.07.17.10.18.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jul 2025 10:18:40 -0700 (PDT)
Date: Thu, 17 Jul 2025 20:18:38 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Thierry Reding <treding@nvidia.com>
Cc: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>,
 intel-gfx@lists.freedesktop.org, jeevaka.badrappan@intel.com,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
Message-ID: <cfd7f381-24e6-44fa-9d60-3423a180c52a@suswa.mountain>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <8cc6e279-2c5a-43f1-81aa-cdd73b32ffa9@suswa.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8cc6e279-2c5a-43f1-81aa-cdd73b32ffa9@suswa.mountain>
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

I did this but it's hard to know which places return LONG_MAX and
are problematic.  This from an allyesconfig but on arm64 so it doesn't
warn about the i915 driver.

drivers/gpu/drm/tegra/submit.c:541 tegra_drm_ioctl_channel_submit() warn: save dma_fence_wait_timeout() returns to signed long
drivers/gpu/drm/etnaviv/etnaviv_gpu.c:1291 etnaviv_gpu_wait_fence_interruptible() warn: save dma_fence_wait_timeout() returns to signed long
drivers/gpu/drm/amd/amdgpu/amdgpu_userq.c:94 amdgpu_userq_wait_for_last_fence() warn: save dma_fence_wait_timeout() returns to signed long
drivers/gpu/drm/amd/amdgpu/amdgpu_userq.c:772 amdgpu_userq_wait_for_signal() warn: save dma_fence_wait_timeout() returns to signed long
drivers/gpu/drm/amd/amdgpu/amdgpu_vpe.c:828 vpe_ring_test_ib() warn: save dma_fence_wait_timeout() returns to signed long
drivers/gpu/drm/msm/msm_drv.c:687 wait_fence() warn: save dma_fence_wait_timeout() returns to signed long

The code in tegra_drm_ioctl_channel_submit() is reversed:

drivers/gpu/drm/tegra/submit.c
   541                  err = dma_fence_wait_timeout(fence, true, msecs_to_jiffies(10000));
   542                  dma_fence_put(fence);
   543                  if (err) {
                            ^^^
This should be:
		if (err <= 0) {
			err = err ?: -ETIMEDOUT;
			SUBMIT_ERR(context, "wait for syncobj_in timed out");

It's a bit of a headache to return 0 or negavite on failure.

regards,
dan carpenter

   544                          SUBMIT_ERR(context, "wait for syncobj_in timed out");
   545                          goto unlock;
   546                  }

