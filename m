Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4DA5E886D
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Sep 2022 06:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248E410EBC5;
	Sat, 24 Sep 2022 04:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB5010EBC4
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Sep 2022 04:57:50 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id f193so2031986pgc.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 21:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=v7kWrPbPEQnUozxdNS5JdmbVNWJ4CHYPrZUZ4V2zRBs=;
 b=enyqEF6ygA7V87gDWotsh10kd6fPVz5rTFRXsc8xm7ENhXrESwtah2QDneBSLsG1Ix
 KzZUA+2b81cD+ep20K1LmiSzAQxvp65GCkZaCzRv6RENRU5LRCtVo+aecNTwn/7ZguoZ
 z4ogI8vGaQeq1Bk+y2dUEOMuIwJpIpR7h4BSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=v7kWrPbPEQnUozxdNS5JdmbVNWJ4CHYPrZUZ4V2zRBs=;
 b=vYbc3NnqW+UfxZqTm38aH2PB+LvESw1/iLgp05d5KgVztxGt6C89cFdbt4i2EBnrCN
 qUlAEtidsMrtfAi4QblbgUi+kHg7Y1rEVNiSKi7WiB1lCIYqRhigquHopDP6jozLLgva
 5fq49HVmq20a50MAwqHkVLG7RRhazCk+5YAHbJv9QrSmbwx9IEeLRP3/X9Obzv0NORd9
 y9vdkTBJkmaRMezc7vBhPSDpeosPBYyXSH+ZAjMjvKrGjyfGsFUXVl5WgVoM++Kdsu9B
 CXIRXNCwrayOTvw13n0hBMMkd3DLQhNMaSy95VMqcrmaPFxvaod0IyyJ1Bb/WIAkhLs1
 KjHg==
X-Gm-Message-State: ACrzQf2owRyvRvRAKMHPUYRf1D41ujkgeSQD39ylHMLgWOm01MiIsrQU
 KoYC2HRNa9PHrRPXnb4hkG2+EA==
X-Google-Smtp-Source: AMsMyM5ALGEW52BP/WsgdiSVqzxe8HxFAHDE8Rb8WicdYa03ISm4MLjN1PxlV8W1MXz8rEfQ7pygUw==
X-Received: by 2002:a63:1546:0:b0:42c:50dc:2115 with SMTP id
 6-20020a631546000000b0042c50dc2115mr10662678pgv.613.1663995469373; 
 Fri, 23 Sep 2022 21:57:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 z8-20020a62d108000000b0053e984a887csm7497176pfg.96.2022.09.23.21.57.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 21:57:48 -0700 (PDT)
Date: Fri, 23 Sep 2022 21:57:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <202209232143.172BCCDC4@keescook>
References: <20220922195127.2607496-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220922195127.2607496-1-nathan@kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix CFI violations in gt_sysfs
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
Cc: llvm@lists.linux.dev, Tom Rix <trix@redhat.com>,
 intel-gfx@lists.freedesktop.org, Nick Desaulniers <ndesaulniers@google.com>,
 patches@lists.linux.dev, dri-devel@lists.freedesktop.org,
 Sami Tolvanen <samitolvanen@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 22, 2022 at 12:51:27PM -0700, Nathan Chancellor wrote:
> [...]
> To make everything work properly, adjust certain functions to match the
> type of the ->show() and ->store() members in 'struct kobj_attribute'.
> Add a macro to generate functions for that can be called via both
> dev_attr_{show,store}() or kobj_attr_{show,store}() so that they can be
> called through both kobject locations without violating kCFI and adjust
> the attribute groups to account for this.

This was quite a roller coaster! I think the solution looks good, even
if I'm suspicious of the original design that has the same stuff
available twice in different places. (I have a dim memory of rdma
needing a refactoring like this too?)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook
