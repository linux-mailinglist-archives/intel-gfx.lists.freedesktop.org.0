Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68578B3BD33
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 16:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252B710EBCD;
	Fri, 29 Aug 2025 14:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="ljMQi516";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CDD10EB48
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Aug 2025 06:26:27 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id
 98e67ed59e1d1-327ae052173so958261a91.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 23:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756448787; x=1757053587; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=FcWNphyv+aV6VigruYXsycpBhyL4rRdrU3NDODM9P5A=;
 b=ljMQi516JYBrdkhOEJECm+OO9kwBDxKfW8wQziLThuL18NDgPk6YD9Z/XGpuzIUeFa
 wFf6tjNIT2rVzdfeqYa6BkkrOjA10nnN+/2Yr++7tBECg214tneYjD26oJgicu/dLTio
 BGYRI5iuY2mi3vBXubWT+NytN5liks884i1cJj3Ondn5V/1ZKQ+SLJ0MgRpXCkJOZdkD
 uQWFeD9kSaUCpN3OiVvfjmeBWVq9r1HAYVyjaGvT4PIWHQUgekHpvU/6Oz7X6/mHGXtI
 HjAozgsVsIkjTowwFbgA72nanlvMSWM5Y7jVUMWHuGqDfTa9+P1HM7ZG3tf0PNHlQf6v
 9keA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756448787; x=1757053587;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FcWNphyv+aV6VigruYXsycpBhyL4rRdrU3NDODM9P5A=;
 b=jseVWFdxlBeloGY1UBSrppUBTdhsl85oIcTnH1948u1CxgkmeRUZ1emDERRn6XwbEo
 FLwC8DCdX0JfctlUKeyDkP9V81HR1c06OJi9gfcIoW13HwRUHd8NLY9V1boojmjCZmBM
 Iq5IgkL0/khVftetIbyoB3CfC10KxgKVD+Z1OZjKbKf3Oa5ViWLYdlE+83vgjtW29Isk
 +T5KrEbHF1/Y+kWkpZKK/Em9xFgZgtWC7fZsTrNPvsIQ8OPMBrEXIsk69ld06tTu/GRb
 0lgWOdYAmLQ9yGRiEk1rfXFNNcbGyolMtnKIkPsteFt7VUC7EfkWlTvuYS7YdXb71DSZ
 UWfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4J3OtufDNcpayt3LWgxJ6m8a4Wdebg+/6Q3yErGggtrz6QowExxDVdL4ZQk7PQJdNOadIey+lT1Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx1tgl7d8r8cuzSBVoMfn3UBpgWwGIB45+Yyt6I3CacL6Vptq/4
 L3GQsQ20/O3Int2YzbF7SBp/xEqL4Jx45zPUUVF1IJZvu61+M4uJlt2xfHtz9YFNPrY=
X-Gm-Gg: ASbGncvB3V3JLGaal8HfCaIUoOt0+NNdm+ntq65oJCYTCTjmLna4e6cMW7GhMcCNc8b
 lKLz0B0bGsa5SwEJAzxbQ7WgKiSOqPgj+3zY3z46ISoeaw7KQ6EYJBLYTrnKXiEpGBZABf5KZ4n
 3iomxEQACR8vDXUNLgEOHAhKpmri/rvupB8Q+MbsQIFmQcJ/t73CSHWINNP79XjoKkFf66JeOFF
 hM7qUNTnwYYN1lb7sdl3g3mpAPNaPmummDplTKsj9K4Csk9NuUyGPJBNhP6E+RvrLG/IU/ZtpLE
 EtyU59bI/IL2PQZm2c0NLd3dA8s/whCDPGZd4W6n7R+bImSP+xClHzcBoTTYlpveglfMvfHq3jB
 A+wxzA8u4xjEMl5fWadIAUvsr
X-Google-Smtp-Source: AGHT+IFHYb22k9tJefksk8Ol8WzLcbkUpFNWBPL7w5JQ2Y92t38N6cXrTs0utCYM4huh3xQWCdkxbA==
X-Received: by 2002:a17:90b:57ce:b0:31f:210e:e34a with SMTP id
 98e67ed59e1d1-32515eacfddmr32147827a91.8.1756448787009; 
 Thu, 28 Aug 2025 23:26:27 -0700 (PDT)
Received: from localhost ([122.172.87.165]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3276fcd4bd6sm6984417a91.15.2025.08.28.23.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 23:26:26 -0700 (PDT)
Date: Fri, 29 Aug 2025 11:56:24 +0530
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
Message-ID: <20250829062624.jalqqsigs7hanf7i@vireshk-i7>
References: <20250827023202.10310-1-zhangzihuan@kylinos.cn>
 <20250827023202.10310-5-zhangzihuan@kylinos.cn>
 <20250829055944.ragfnh62q2cuew3e@vireshk-i7>
 <4bd55a08-62bb-46c4-bfb6-a3375ce37e79@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4bd55a08-62bb-46c4-bfb6-a3375ce37e79@kylinos.cn>
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

On 29-08-25, 14:16, Zihuan Zhang wrote:
> Thanks for applying the patch!
> 
> I’ve been thinking further — instead of using __free directly, maybe we
> could introduce a small macro wrapper around it to make the release scope
> more controllable and consistent.
> 
> Link:
> https://lore.kernel.org/all/6174bcc8-30f5-479b-bac6-f42eb1232b4d@kylinos.cn/
> 
> Do you think this would be a better approach, or should we just stick with
> the current use of __free?

Lets keep it simple for now and use __free directly. And keep this
similar with other parts of the kernel.

-- 
viresh
