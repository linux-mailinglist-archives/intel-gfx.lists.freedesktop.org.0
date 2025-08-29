Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C11B3BD3C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 16:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453FA10EBD6;
	Fri, 29 Aug 2025 14:12:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="aetfx2Lc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A8D10EB3E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Aug 2025 05:59:48 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id
 d2e1a72fcca58-7704f3c4708so2117089b3a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 22:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756447188; x=1757051988; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Csp0y2UiuYBIoSGq3QglK9zewj1/hbg1F372AFvl94U=;
 b=aetfx2Lcae0RjD9AqGCJoOWVKrxYLFOToM2qWsADM+rnOAwKalBXtUnObnXg4jEpAq
 4Z4TZz5YSEWiGY7/Mk6sQnnsMZPWL23irFB1iEJmMhkgBpopvzPrnQH8JYwHzfRQyCXn
 pwTnMgO0ME37PDqoDm1Ph29Z405akmizwiKoo0RBK+QwiAXbkV/t8UTUW7QhnLLqsC8d
 DHvSbi6GpZQkdw6WELtVsOMCBbKMuCVxoWYMnxEHTyle9HU3Xv8bvZn5e7yS6KR1uWKT
 D5QDI1dE25Lfa7LVT48Y4sw93h/FwREZunkSXfEnj0xeip0Z6EIT0AWj9dqg2rdY2T0I
 gKUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756447188; x=1757051988;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Csp0y2UiuYBIoSGq3QglK9zewj1/hbg1F372AFvl94U=;
 b=wVGpLqeJ8JycTk3KOPnaveJAh0tk00b7zLl+CRBI6ECtD0o2R2HZ0n6sAz/URebeQB
 8mhVowVEVGEvLYGw7PyzfonTpzRAtjELEPwlHS9gdHHak3OpKElQJwbGHujvk7oeGHrU
 4mXqUa6gKEJtF29+1pdnWnnRpyfmC1f33gyJ0Pj0jgR9e17/UCp4o7wszD78j19CCuEh
 c7sWrcdJTz8cgQX28mrrOmI1qiuIEt2fCl3yHW4wWo/dW5fOzCv/gQ649VeDqwHdOkJ2
 jlway8leGofEQ1xaSHm2pGZDyXvs8LY/z2vfRG82PKU516SSPxYBoBf69YewwOSEcluf
 ffrg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNUHgVScRkRIC488sD4LRPMSNcrcqixn/dmuDjzW1stWN9utZwpala2VpOLZPCXO6tfYpZk8yHm00=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyWP0SgU5eUuN8D2rRsL8NUETjH5JqXEkRmgkLFSjCBNNYA6Qv3
 qEGSoFmHO0hCUOlYgZnYE3ZaNur2YtXutpnSkuwuur46FhyYWNlCn7VHa87mV8Mmn0o=
X-Gm-Gg: ASbGncuT2O9sUXjKxV/2ChqPTVZsKvO4P1PquaZ6hZPhKQnpBxp/AXoGf6eIuiWrHzf
 ZflQXUb+7FRXLXQnvi/vgtRnTHvKvPKhpwYQFC9CRiiQeOPZXMyku5XYDZmXuvP0vVq1hAvAcuJ
 FYebX50cGKLxDoQGl2NlY4JD6SUJLrtMSy45X92bHFd639c3Z2BtMxMt1D6zFW25G4AYspbt/1b
 ZJJduXvQcSY+PECitbv8SmTX/VHIHkW96TiigCMsN9H9xcLWAK2Dui1rI5MAjo/LmEApGmz6P/f
 D+MR/Qe9J9wRbYGNgNBuLgFibqllJxQARTPJ5SYmLCtuyd2ODplJ/en2yF4sodi8E2NSD2DvIzm
 eeCdWnBMfIZvczJW8xpprjF5+4loVo+I2fus=
X-Google-Smtp-Source: AGHT+IFsar3WOaSA9RKNM7TPFf9gG0iXTxdUF2CW8raU1SyelgEQswrlDbapLb2rA7PUFkb3M17NCQ==
X-Received: by 2002:a05:6a00:10d5:b0:772:2850:783d with SMTP id
 d2e1a72fcca58-772285079c4mr3285667b3a.22.1756447188084; 
 Thu, 28 Aug 2025 22:59:48 -0700 (PDT)
Received: from localhost ([122.172.87.165]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7722a2b14c1sm1263485b3a.31.2025.08.28.22.59.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 22:59:47 -0700 (PDT)
Date: Fri, 29 Aug 2025 11:29:44 +0530
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
Subject: Re: [PATCH v2 04/18] cpufreq: brcmstb-avs-cpufreq: Use
 __free(put_cpufreq_policy) for policy reference
Message-ID: <20250829055944.ragfnh62q2cuew3e@vireshk-i7>
References: <20250827023202.10310-1-zhangzihuan@kylinos.cn>
 <20250827023202.10310-5-zhangzihuan@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827023202.10310-5-zhangzihuan@kylinos.cn>
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
>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied. Thanks.

-- 
viresh
