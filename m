Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E87F7AD86D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 14:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEEB10E252;
	Mon, 25 Sep 2023 12:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6580D10E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 06:24:51 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-99c1c66876aso61051366b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 23:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1695277489; x=1695882289;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fvbyf4nOemyFjkTwjJzZnDNxJaEvzpTzZJFCe3Gi+1M=;
 b=tqaLSXYXE2ZeUb9m4jSptGdm7krCQx3U60T50acZ1JM0aGuMk1D/GmrprUN00QC5T9
 1FRZ9+QZpHzS6iPDm15BAe3WBfZ/22jdJ5Tz9OfmWR+ZiqaFj/TAKABIEXtzjiF+vWcb
 eJasVrIEd15COYG6DNDhPUn8+0O4Eb4Nb7UpF+3aI+n6tCJYZ3R/0AtKSAWk/HM3kiAY
 5CL0jbwbRA8rozE1cT0kQ9edjwlgd3sHjDFgVsN0IWGLH9zlxMWotH4Ylk2mnuwLLTIB
 XFlpxbMSEjZfTMY3yGWFFiJhmMake69Cho4meFEHyRHiB+vG1qBuMjhSEmzFYquNxKLY
 EHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695277489; x=1695882289;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fvbyf4nOemyFjkTwjJzZnDNxJaEvzpTzZJFCe3Gi+1M=;
 b=lJw7r+Uedx0ozOuzzbR6UAX3c/Cn9NnfDiu9sMIHX/JNGa8jH3D8MI/2ADa8EEX+aT
 1//4dBCtGW2DWe8S+P0+FVysbUGoRJ9odjKJq51p1dEFVUY21wT+evSeQReZLxy1avet
 mDugoed3b6Q/xD/7uXw9zXMPoeI/VXRYOS7p72uMLOnZJalmeIVOHZc9iJRNIUdLCiPF
 iab7+V18wFGEUJu72iJleZMLCby04og6Je/D3Z7WkDanTMNDwKkTUvB+MR5xO2ZmsSG4
 wWZ/E7XHDWP5G7Psl0IGA3pG+hDDuNRtvpOLuqq5KGRZC7ZhiX8rO1nvbnGhxdC9DjGl
 G+Gg==
X-Gm-Message-State: AOJu0Yz160duO9CI1Rq9QOQDz+u58mzC1OffLy17GH2/nY7LTau/F9wc
 S1DQLWJzETyFQP8lYQVe2VcDrpnjaGFErwIDuHA=
X-Google-Smtp-Source: AGHT+IFuV+GCxUrhBpLCDU+qnBjT2r/m4HG2UD9vDPivvGTBlm9c6acpL0ZpK5gEgDdJpF3U1yYeBg==
X-Received: by 2002:a17:907:75fc:b0:9ae:50e3:7e40 with SMTP id
 jz28-20020a17090775fc00b009ae50e37e40mr2634144ejc.52.1695277489269; 
 Wed, 20 Sep 2023 23:24:49 -0700 (PDT)
Received: from ?IPV6:2003:f6:af0b:f500:9282:fc17:35d3:acf0?
 (p200300f6af0bf5009282fc1735d3acf0.dip0.t-ipconnect.de.
 [2003:f6:af0b:f500:9282:fc17:35d3:acf0])
 by smtp.gmail.com with ESMTPSA id
 h9-20020a17090619c900b009ae54eba5casm542919ejd.102.2023.09.20.23.24.48
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 23:24:48 -0700 (PDT)
Message-ID: <60b80b2d-b96f-f87c-d96b-31650620b2f9@grsecurity.net>
Date: Thu, 21 Sep 2023 08:24:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US, de-DE
To: intel-gfx@lists.freedesktop.org
References: <20230905113921.14071-1-minipli@grsecurity.net>
From: Mathias Krause <minipli@grsecurity.net>
In-Reply-To: <20230905113921.14071-1-minipli@grsecurity.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 25 Sep 2023 12:59:26 +0000
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915: fix rb-tree/llist/list
 confusion
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

On 05.09.23 13:39, Mathias Krause wrote:
> Commit 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine
> map") introduced a bug regarding engine iteration in default_engines()
> as the rb tree isn't set up yet that early during driver initialization.
> This triggered a sanity check we have in our grsecurity kernels, fixed
> by reverting the offending commit (patch 1) and giving the
> type-multiplexed members some more visibility to avoid making a similar
> mistake again in the future (patch 2).
> 
> Please apply!
> 
> Thanks,
> Mathias
> 
> Mathias Krause (2):
>   Revert "drm/i915: Use uabi engines for the default engine map"
>   drm/i915: Clarify type evolution of uabi_node/uabi_engines
> 
>  drivers/gpu/drm/i915/gem/i915_gem_context.c  |  9 +++++----
>  drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
>  drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
>  drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
>  4 files changed, 37 insertions(+), 16 deletions(-)
> 

Ping. Any objections to this series?

- Mathias
