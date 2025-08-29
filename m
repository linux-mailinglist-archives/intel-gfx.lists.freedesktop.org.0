Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96631B3BD3A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 16:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFF710EBD4;
	Fri, 29 Aug 2025 14:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="DARvNZB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1543510EB48
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Aug 2025 06:29:55 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-248a638dbbeso15830845ad.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 23:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756448994; x=1757053794; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CokGLX1/yeX4DJMWAz1LmKt9I3G7o4FsQeoqSBuvVPY=;
 b=DARvNZB971d7DkZjj7IYIkedXVM6735izRo0hh1B6xysWChc1jNATTN43de1yZNQIg
 FURRPObKv317ltqlS3VGKQBVewPVjmlAcLD6/S4C3Hp8o19v/uFZVtR+IfgCv87moaLu
 0/QhDtOENWDh6UBvggUf9D0v0L4OLBIcB3YEt0TMXHjd+2ttZ/yl3+xNmbYV2qT+s9HI
 fZHQvzOAevYnRXp4xA00Hoc6n1DWH7+3L2LRkn5cwHoPCs7oiUgdPEGVk5MzRrchtCjI
 525ajjSE0K8xrsjyHFGdQb4EaNPKY+TYCPkWOyjKw0v9NBTg5l44ncDh/Z5KPkRbvgpu
 TYPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756448994; x=1757053794;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CokGLX1/yeX4DJMWAz1LmKt9I3G7o4FsQeoqSBuvVPY=;
 b=lgFtcIwkvVoMfVcAX11rMF6waK26kCjJtDPyKzY/pyCyuVN815SVTm8MpkA+xI4LXd
 TsELfHPyl+DbeaktcKaEvwOwHwCqr96f50tcCTJgSRe8XuZSRko9Zrpe3iAUAKTVrLz5
 wagByr85gCtkvPz9e0Hunmj+8DRFZBLLR2wGhiQYxnoi334HultjMBvh2fOHIVr2PpPr
 rcHMjKj8CvoyduyLqxW/58sRweojZDTq/BLo+CSYIybEMtqAD3WKzKoNac+1TbZsQyKY
 9QDP0nrQ3MWg/mMY8RvFTOYdQ1f/K8fqDJiokR27mf3MV2WhxlRFgI60/8zkCmKTC/ir
 YxtA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMyu3YmJeOL0qEQ1voNYWm4kZLuHHlJiqXnasbk4a0AdfW11swo3SxEZ4/16ggcqguu4lvuxaS/Z4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzblnevWANRvl1lk+RhPLhwJU2W2xNLkNrDeNemPKZHFmCNaxXG
 nAGT7ICXfWvTBPXp4qmKr23jNYKKy2dkGnF3IlK+9XB6KfZIexHlUv+TpbKrT5Z564Y=
X-Gm-Gg: ASbGncvvTsOUzl1ApJd88GrfCy8f82q4Oy4DoO2+uktiUu4Svv0whOwLiqGAEWSXKZs
 N+Bltfk6dj5CU6oqr+R3p5HRG6J9r3KCDp4kO5rQpt+Y4X5DBSIopjasLUBuv3v31cY50xcp2vu
 +TFlg2smbPtvz7qWLzWUFFImMfRaAq/WLfQ9zBePrY0ZYD5rA6TSxNknkvphc0cq0T5QSnpqGS4
 VZg6xRBgjLOYA7hmeIeWQ0hYH8yUZgBQV4ffrWQjsAubsWzlKMZXyZO0UCMsrDZqWKJaXc050Pu
 txbQLBK+Yc1Ld6NXjIxYX3ZW2heWZUaLVZg6f63gB5JVM2YKoNP3DsBDJHKbCIwT0+CVPQaHmI2
 o4ZZItIoUvFTFOb21La1xjwuF
X-Google-Smtp-Source: AGHT+IFbX3s0aoe3pqEivfWfaakWxvchfFFbfgXfyIlcOqslqMMZIBk7FeaK/V2UaSwtVV106XuK4Q==
X-Received: by 2002:a17:902:ec89:b0:245:fa00:6e25 with SMTP id
 d9443c01a7336-2462ef1ea0bmr386065885ad.28.1756448994426; 
 Thu, 28 Aug 2025 23:29:54 -0700 (PDT)
Received: from localhost ([122.172.87.165]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-24903705be3sm14571325ad.18.2025.08.28.23.29.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 23:29:53 -0700 (PDT)
Date: Fri, 29 Aug 2025 11:59:51 +0530
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
Subject: Re: [PATCH v2 11/18] cpufreq: tegra186: Use
 __free(put_cpufreq_policy) for policy reference
Message-ID: <20250829062951.ximauv2so442q4gv@vireshk-i7>
References: <20250827023202.10310-1-zhangzihuan@kylinos.cn>
 <20250827023202.10310-12-zhangzihuan@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827023202.10310-12-zhangzihuan@kylinos.cn>
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
>  drivers/cpufreq/tegra186-cpufreq.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/tegra186-cpufreq.c b/drivers/cpufreq/tegra186-cpufreq.c
> index cbabb726c664..4d71e262a729 100644
> --- a/drivers/cpufreq/tegra186-cpufreq.c
> +++ b/drivers/cpufreq/tegra186-cpufreq.c
> @@ -105,7 +105,7 @@ static unsigned int tegra186_cpufreq_get(unsigned int cpu)
>  {
>  	struct tegra186_cpufreq_data *data = cpufreq_get_driver_data();
>  	struct tegra186_cpufreq_cluster *cluster;
> -	struct cpufreq_policy *policy;
> +	struct cpufreq_policy *policy __free(put_cpufreq_policy);
>  	unsigned int edvd_offset, cluster_id;
>  	u32 ndiv;
>  
> @@ -117,7 +117,6 @@ static unsigned int tegra186_cpufreq_get(unsigned int cpu)
>  	ndiv = readl(data->regs + edvd_offset) & EDVD_CORE_VOLT_FREQ_F_MASK;
>  	cluster_id = data->cpus[policy->cpu].bpmp_cluster_id;
>  	cluster = &data->clusters[cluster_id];
> -	cpufreq_cpu_put(policy);
>  
>  	return (cluster->ref_clk_khz * ndiv) / cluster->div;

Merged with:

diff --git a/drivers/cpufreq/tegra186-cpufreq.c b/drivers/cpufreq/tegra186-cpufreq.c
index 4d71e262a729..4270686fc3e3 100644
--- a/drivers/cpufreq/tegra186-cpufreq.c
+++ b/drivers/cpufreq/tegra186-cpufreq.c
@@ -103,13 +103,12 @@ static int tegra186_cpufreq_set_target(struct cpufreq_policy *policy,
 
 static unsigned int tegra186_cpufreq_get(unsigned int cpu)
 {
+       struct cpufreq_policy *policy __free(put_cpufreq_policy) = cpufreq_cpu_get(cpu);
        struct tegra186_cpufreq_data *data = cpufreq_get_driver_data();
        struct tegra186_cpufreq_cluster *cluster;
-       struct cpufreq_policy *policy __free(put_cpufreq_policy);
        unsigned int edvd_offset, cluster_id;
        u32 ndiv;
 
-       policy = cpufreq_cpu_get(cpu);
        if (!policy)
                return 0;
 

-- 
viresh
