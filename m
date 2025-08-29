Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB190B3BD3D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 16:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFA410EBD7;
	Fri, 29 Aug 2025 14:12:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="g1w/PdQF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D1310EB47
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Aug 2025 06:18:16 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-7720b23a49fso1980942b3a.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 23:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756448295; x=1757053095; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fyIWN60k8dYCbXXXMxmihVbQlVwII/BvZdY4wtkRha8=;
 b=g1w/PdQFbyJmXcK4pRhII3ecsSNPPRGMXJ328oXAB7dbtEIcbLMGEiF1o6mUnLuZd5
 SQ/8p0s/lbo7iL5bu3VdUttGneOGDMDYUsA6Qu9ifyHNJ+wgh2vwwmtzl0cYSJO/6oYt
 tQ3z7WzcIToYqa92RfIrBwaoL8RD95jbvt91VPqJXja/psLFK1VhaDuFDtmDmzgmsQg9
 mpf7jr5M+SONzE5Udlo8/ChuLas/ivn3TR8NYt4q1hNSW6LRJuUtUywftcVY0Z/rowyw
 otiySiQs2J2d6j1CQnVq++tf6uYrPibQj9x7YZbRXQrh7spMzazrCaO/lJ9cByszQThI
 XzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756448295; x=1757053095;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fyIWN60k8dYCbXXXMxmihVbQlVwII/BvZdY4wtkRha8=;
 b=D7xU5vY6CGvf20eAhedAmWZKp4WK8N7cqGmtku6BuaxfnP3qph6qC0UMixEOt6LPJz
 ILbQ/l+6i6WlUVQtOnDkgxBOvY5LSXYrCvwUdK0XSa9SNsQ9fIQPGCi0Bofb/d3sNQR3
 mj7Is4jHY7jSGcEZlrVq8g8FxkRczTafK1fMGl6qi/70hOr7ZVZlxbdhLCAlfBXrFEkK
 iIvGVM8H1H64Oc8kJHFYn7/H+HD8uN4EbXSepCIOyg80q8pIuAyNMKiGcKOu1tDUFHTX
 PbU1bvKrXykn7u0s9Z0A3fSP+0HzT69JNlKMwgsXFcZnC8HIuzAtPo2pXoqbVWWKHvHc
 a0SQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJipcPGWSDE4e9rs781gWlgVduHqCoba65wcF0IoFZfXYTzNrW8ynyHzYpDrYBCgnPpWZbGyGzfEA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+gu8Lz7Gto+X9Dql43JHzNVbLXyash12i4qUoOFy5nc5W1Tih
 qaHZEIOc47ZWVYYcGOEajybsETz6HdVibAmuvn6XCbptumBj/5JhPjUf0GbRII4KplU=
X-Gm-Gg: ASbGncs8aOhoSpLWMUplVjbDmBPw6Y9vrweUT8ryfj1tsI8vScrl74hgcs/DuwaFyMU
 bqA2066YvqJ95UQDWxSFL07Z4O5QzfDiEb4hFPjo8S613z/01zTDRYnw8nv5mBaBsaNBnEyuLic
 W22e7zrbvPSoH2OPHPeucpwm1es+5zuPdzelWjZI/vRxcgpS4O+Kw+8enVKc4JFocK3eY8rFURN
 uxAy7kD0YWOvC6O1loXxGRH00CCX29BG23zwbjddjJmVWl+GKchl2U9h603+CUcr+Hvdah1jxuz
 yWdpsi2UICLpxlyFKr2teW4GY7fU28BfoJPlWY3+jHsZB4NahBGeq2FkUS8WFNwMlBr4wAJxYLZ
 HRnnRLYQjyB4b1VFJAs9qSlDDP6l5OQD26EE=
X-Google-Smtp-Source: AGHT+IEdwrBA8fEPouruiBjmjO1y+VLHrsJ6SO97Twxy5LbO1fb87iKCtpWKSDsewOGX8ikCQhJ2gQ==
X-Received: by 2002:a05:6a00:3907:b0:749:472:d3a7 with SMTP id
 d2e1a72fcca58-7702faaf2acmr35042659b3a.18.1756448295215; 
 Thu, 28 Aug 2025 23:18:15 -0700 (PDT)
Received: from localhost ([122.172.87.165]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7722a4e1b21sm1307488b3a.69.2025.08.28.23.18.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 23:18:14 -0700 (PDT)
Date: Fri, 29 Aug 2025 11:48:12 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Zihuan Zhang <zhangzihuan@kylinos.cn>
Cc: "Rafael J . wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Markus Mayer <mmayer@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Daniel Lezcano <daniel.lezcano@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 zhenglifeng <zhenglifeng1@huawei.com>,
 "H . Peter Anvin" <hpa@zytor.com>, Zhang Rui <rui.zhang@intel.com>,
 Len Brown <lenb@kernel.org>, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Beata Michalska <beata.michalska@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Pavel Machek <pavel@kernel.org>,
 Sumit Gupta <sumitg@nvidia.com>,
 Prasanna Kumar T S M <ptsm@linux.microsoft.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Yicong Yang <yangyicong@hisilicon.com>, linux-pm@vger.kernel.org,
 x86@kernel.org, kvm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/18] cpufreq: mediatek: Use
 __free(put_cpufreq_policy) for policy reference
Message-ID: <20250829061812.fziokvashujzbtth@vireshk-i7>
References: <20250827023202.10310-1-zhangzihuan@kylinos.cn>
 <20250827023202.10310-9-zhangzihuan@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827023202.10310-9-zhangzihuan@kylinos.cn>
X-Mailman-Approved-At: Fri, 29 Aug 2025 14:12:32 +0000
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

On 27-08-25, 10:31, Zihuan Zhang wrote:
> Replace the manual cpufreq_cpu_put() with __free(put_cpufreq_policy)
> annotation for policy references. This reduces the risk of reference
> counting mistakes and aligns the code with the latest kernel style.
> 
> No functional change intended.
> 
> Signed-off-by: Zihuan Zhang <zhangzihuan@kylinos.cn>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index f3f02c4b6888..1fae060e16d9 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -320,7 +320,7 @@ static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
>  	struct dev_pm_opp *new_opp;
>  	struct mtk_cpu_dvfs_info *info;
>  	unsigned long freq, volt;
> -	struct cpufreq_policy *policy;
> +	struct cpufreq_policy *policy __free(put_cpufreq_policy);
>  	int ret = 0;
>  
>  	info = container_of(nb, struct mtk_cpu_dvfs_info, opp_nb);
> @@ -354,11 +354,9 @@ static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
>  
>  			dev_pm_opp_put(new_opp);
>  			policy = cpufreq_cpu_get(info->opp_cpu);
> -			if (policy) {
> +			if (policy)
>  				cpufreq_driver_target(policy, freq / 1000,
>  						      CPUFREQ_RELATION_L);
> -				cpufreq_cpu_put(policy);
> -			}
>  		}
>  	}

Merged with:

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index 1fae060e16d9..fae062a6431f 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -320,7 +320,6 @@ static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
        struct dev_pm_opp *new_opp;
        struct mtk_cpu_dvfs_info *info;
        unsigned long freq, volt;
-       struct cpufreq_policy *policy __free(put_cpufreq_policy);
        int ret = 0;

        info = container_of(nb, struct mtk_cpu_dvfs_info, opp_nb);
@@ -353,7 +352,9 @@ static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
                        }

                        dev_pm_opp_put(new_opp);
-                       policy = cpufreq_cpu_get(info->opp_cpu);
+
+                       struct cpufreq_policy *policy __free(put_cpufreq_policy)
+                               = cpufreq_cpu_get(info->opp_cpu);
                        if (policy)
                                cpufreq_driver_target(policy, freq / 1000,
                                                      CPUFREQ_RELATION_L);

-- 
viresh
