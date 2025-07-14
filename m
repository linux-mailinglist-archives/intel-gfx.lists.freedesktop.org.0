Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5762FB0461A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 19:06:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5419E10E2A3;
	Mon, 14 Jul 2025 17:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="qwFScVYB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3112E10E4D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Jul 2025 17:06:53 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-40aef72f252so1274241b6e.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Jul 2025 10:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1752512812; x=1753117612; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=G40SjHSVprOwaj+4e0T4Xd6RJbqPEulyg2Sv+pNb55s=;
 b=qwFScVYBq0/kCBK8eFKmf7wKVp9/DlQaGcQCr92cutwnSBUFBpG8l8niIaxFQDH9ZC
 C9pmsG/2TRuh5BlJV061CPCo4zHEFe/yVW0YpLkpV1PcN6OQ6VQqVx8Tm0OjLVqFyCJx
 SWMrk8TH8Hg7WE4CtdBNLxM0glc1f20uL/17pbSBS6wBbJyR/1wdAi/XE3kk6C1X6W3v
 bc59fnWzYqhkFmtIr+C+i4hkU5zkvCYBKacn9MOeBo34NdRQXgNcPNqHCTgZkpwX66/D
 QsuhPiikET7/KA5qGmg68r8c7OQP071X8NyrSd/+MMY8yufD1ANNIZQNX/R6r4l1bLrD
 PMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752512812; x=1753117612;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G40SjHSVprOwaj+4e0T4Xd6RJbqPEulyg2Sv+pNb55s=;
 b=JD5Pxmqc3rkCx5LHshWrPIMj+lXBTPmsRuCvcOC7f5dO2R57CMnp7qgbP52ipSSFb9
 lbxJghYZdEjbad3gAwTww8+sy0+9trWSOF8RXHuIps6gWtZp48dsHg1efHH3Deo45nds
 6K5gbYhbnbB2W4hyemwNYM8mxR2j9CZsU71zF0hOT8d4Jo+O3R3s4xJAohIZaO6Yjhlf
 YVozophlarUeUZvXTNbm7NDPMjXpCZMS96YbBqSy/xCDV/yVKTOR90uUky2ZX+UJmhHo
 LVXYK+A9DVxceTzBD2bQzeGuoTp9qOdGuzLaUE7xHmpnJhPWLlQTqcWCkVtiQHmeJjMU
 itRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUW6QGifQs8P42v3y6N2/K0GjYKPqCLQeGnEkxZ7wYkF1NgdARmqrMtdJbwp1LPmzrg3Xsmr80nDs4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzc05RCBfDKb4vu7Suu3aVfwjPjW94rb9R1FItA3u+mtCc3hQsh
 9FkRY5ekZnpqtGfMtVqIWBBjBuMyR5qh7JKa7uq+ZpOM4fuBgTQPm37Z2ksvGqRb3i0=
X-Gm-Gg: ASbGncvgDLgvLV0isCoiPKqur0O6egqN0OQOT7DTBGWLSfVE80n5cNP/jvS2BbmPJAJ
 EOpZ2dJNhTGdc3lAznIOrmUjavnYmF8pFusdZqvJc84ZVMLNgYa2Qf0gEFury6foBwgZ4ZzeEP1
 J5od3md1qc2g+UCBZrhZTPca1x2DkOoZGKpivN8/rONBEazt3FLY4I1cJak0wpVx3zwjr5SfiXC
 pk/lDsG3fHscQD2rh0XLVfXZqsP3bjBuETnK5lW6e+pY04Lx876fjZCTRVUyF4ZsLclyr5wtsBv
 bokI/8U7W6kwTYiy7ztzs3dOHSVhNXb+79GQT8i2enIk8Zoe2zz0SYaZVjTkbA0S3zHrfkOo3fJ
 r0lZGaeKkb30U44yzYfsgq5+25UUb3g==
X-Google-Smtp-Source: AGHT+IH2lLDgpBS3/vvn8/RemIauG+7iF5T6bbknqqnFZcums86xH17ULVfcEFTYjQM8bipZ06r+Ug==
X-Received: by 2002:a05:6808:1202:b0:408:fbed:c3ab with SMTP id
 5614622812f47-41510184766mr9661029b6e.38.1752512812222; 
 Mon, 14 Jul 2025 10:06:52 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6bb2:d90f:e5da:befc])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-414196c9b24sm1546270b6e.17.2025.07.14.10.06.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jul 2025 10:06:50 -0700 (PDT)
Date: Mon, 14 Jul 2025 20:06:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>,
 intel-gfx@lists.freedesktop.org, jeevaka.badrappan@intel.com,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
Message-ID: <8cc6e279-2c5a-43f1-81aa-cdd73b32ffa9@suswa.mountain>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
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

On Fri, Jul 04, 2025 at 03:00:55PM +0300, Jani Nikula wrote:
> On Fri, 04 Jul 2025, Aakash Deep Sarkar <aakash.deep.sarkar@intel.com> wrote:
> > dma_fence_wait_timeout returns a long type but the driver is
> > only using the lower 32 bits of the retval and discarding the
> > upper 32 bits.
> >
> > This is particularly problematic if there are already signalled
> > or stub fences on some of the hw planes. In this case the
> > dma_fence_wait_timeout function will immediately return with
> > timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
> > the fence is already signalled. If the driver only uses the lower
> > 32 bits of this return value then it'll interpret it as an error
> > code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
> >
> > This issue was first observed with the Android compositor where
> > the GPU composited layer was not properly waited on when there
> > were stub fences in other overlay planes resulting in significant
> > visual artifacts.
> 
> Thanks for the patch, good catch!
> 
> > Test: No graphical artifacts with shadertoy
> 
> We've never used this commit trailer before, please let's not start now.
> 
> The subject should plainly state the "what", and the commit message
> should answer the "why". You do have that here, but I think the subject
> is still a bit too much nuts and bolts.
> 
> For example,
> 
> 	drm/i915/display: Fix dma_fence_wait_timeout() return value handling
> 
> would state the "what" in *much* more helpful terms for anyone looking
> at git logs.
> 
> Presumably this has been an error for some time. You should do a little
> bit of git blame on the offending lines. It'll find commit d59cf7bb73f3
> ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence").
> 
> Based on that, we should add:
> 
> Fixes: d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: <stable@vger.kernel.org> # v6.8+
> 
> Then it occurs to me this looks like a common mistake to make. A little
> bit of git grep on dma_fence_wait_timeout() quickly finds multiple
> similar mistakes in drm, at least amdgpu, etnaviv, msm, and tegra. Cc
> some maintainers FYI. This class of bugs could cause issues elsewhere.
> 
> Let's also Cc Julia and Dan in case they have ideas to improve static
> analysis to catch this class of bugs. Or maybe one exists already, but
> we're just not running them!

It's easy enough to warn about when we have:

	ret = dma_fence_wait_timeout();

and ret is an int.

In Smatch I actually had hardcoded dma_fence_wait_timeout() as only
returning up to INT_MAX because there were enough places which saved it
as an int and it triggered false positives in callers where we knew the
timeout was reasonable.

regards,
dan carpenter

