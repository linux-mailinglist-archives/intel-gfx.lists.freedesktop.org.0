Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E19A446CB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51D510E762;
	Tue, 25 Feb 2025 16:49:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="eoRX8dAK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9083B10E756
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 16:49:39 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-548878c6a5aso787137e87.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 08:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1740502178; x=1741106978; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0mgWZibQMuHj44S/S8PoDTRgBr00ghmQvGRAk6+vKs4=;
 b=eoRX8dAKzZZXlynfyIAwCHv7NDiGxATa1HbDJ0Cf7qm7qDe1AdRjOEt3+PT6xz8ROX
 tVEPpXq7AK7diZFRjebygpSLc59tLee0smwdRtKYMqEiS6sW//RjPtgvRpOOkvEhY3mW
 +EGKy4cDvAxASbAnrM4SpjV31YlH/USmnS+yPJbqvwaW6Ki6TwmxsFv3+NMGY54nlKCd
 zbGBL6B674Y7WwgL1v7miwocs3aP3n4p/892tg/p2G2C01Di8Ghzf0+Ifq3mjA9ScDGI
 g/LQU5T1rijBQan5nfnMWj9agdAjuTpgsrDsd8OtS7/h8RK0xhbAH6AvvLy0/igjXaz1
 qBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740502178; x=1741106978;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0mgWZibQMuHj44S/S8PoDTRgBr00ghmQvGRAk6+vKs4=;
 b=TLwaHaPeh20roVYyNIFqG6vp6f21F8kbXGS4MNL5AB4kdrm38idy9Rr+jEtW4g8sjS
 G4ypY5IK6Vy5w1H1JSwD8o612+WzHhQJ2fYMW6rWFa6k7z6t0bpXxGnIzcWYOweefvMQ
 7FQQWhr9UcgPMc9bN5z75kAVL5uk+RVKxAE5ArdNh8pl1KDRWR04acqxnyDA2gJFTfq2
 knNiak04rxuzsILZ459yEaucexopA+9kNd8Br0IyoLg8pEF22iaIXiF+ZOOM2oMgLRvj
 nTMNUySjiF1/eVg9scbo19zAKPqme23QvIxH0eaTgO9bxaaIcxKRSFgZrxHmhN2EMhyk
 drWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsi/RmSB4VNWMJVqeIZEjV93o4eEmFQS2mOgUE0elRP4omttLzTUTH5QKInoHxj/2QBQ6/L0kNS2s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz+qqk3CGtU+MpclbtS2cd7gVoeTRC/P1ZG6Zh+3hELi/46oWWQ
 NWa5cBMfSrMcSojqi9ELMG/qW4Fr49O97ac9kCY2AD1P/X6PuStR3dH79Wiclvc=
X-Gm-Gg: ASbGnctdfCCctX+sYf2h+KizKrE+4NVx8mjNHp1DP+esRmibGXrvtFUEBzTAQeLWcEt
 SJfkRy5L+0G46ZCScn6PQQ1wcYlqRBB1pF/SyUYEA1dxyrsWY/wl5fmnSMdlru5nQMWEJ5dwlSn
 RAfQYtKHVtVE7ArmOw9ofpmA02AT+5EbSBAXGcMzC8QUyjBTBLXBFqmWu7VSyIFLVwfpRz9VU3B
 W5IJnSDmC6P7jfva1p/U2MIWyMJafB5UAy0fRyb0ARYtyF0EUG4TtHESXPh0DTbfTWMmY/lgKt+
 4aU/fVPm9T19t+PoPdmj7e5EzmsS9O7e76UxS4Jphvr050A7PRH8v/PcuwSH/lfN31dPvw==
X-Google-Smtp-Source: AGHT+IFORbfzYSemq6WfOCUglMYdhzTg71XD6K2L6XeaH8kQIvUGNHFObPzSD2MUJfic2yxCajAruA==
X-Received: by 2002:a05:6512:b0a:b0:545:1d96:d701 with SMTP id
 2adb3069b0e04-548392598eamr7478215e87.36.1740502177754; 
 Tue, 25 Feb 2025 08:49:37 -0800 (PST)
Received: from eriador.lan (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00::7a1]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-548514b25e6sm220407e87.7.2025.02.25.08.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2025 08:49:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Johan Hovold <johan+linaro@kernel.org>,
 Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH v5 0/4] drm/dp: Rework LTTPR transparent mode handling and
 add support to msm driver
Date: Tue, 25 Feb 2025 18:49:35 +0200
Message-ID: <174050217098.2377948.2211237197268827323.b4-ty@linaro.org>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250203-drm-dp-msm-add-lttpr-transparent-mode-set-v5-0-c865d0e56d6e@linaro.org>
References: <20250203-drm-dp-msm-add-lttpr-transparent-mode-set-v5-0-c865d0e56d6e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Mon, 03 Feb 2025 12:57:55 +0200, Abel Vesa wrote:
> Looking at both i915 and nouveau DP drivers, both are setting the first
> LTTPR (if found) in transparent mode first and then in non-transparent
> mode, just like the DP v2.0 specification mentions in section 3.6.6.1.
> 
> Being part of the standard, setting the LTTPR in a specific operation mode
> can be easily moved in the generic framework. So do that by adding a new
> helper.
> 
> [...]

Applied to drm-misc-next, thanks!

[1/4] drm/dp: Add helper to set LTTPRs in transparent mode
      commit: 5e7715478c273e5b17b08942182bc0350b7ef3a6
[2/4] drm/nouveau/dp: Use the generic helper to control LTTPR transparent mode
      commit: 226a0baf9098841ceb92ab7804a07426540663c7
[3/4] drm/i915/dp: Use the generic helper to control LTTPR transparent mode
      commit: 6dcc3c5121b72c3633592db761e76083cf7623a3
[4/4] drm/msm/dp: Add support for LTTPR handling
      commit: 72d0af4accd965dc32f504440d74d0a4d18bf781

Best regards,
-- 
With best wishes
Dmitry

