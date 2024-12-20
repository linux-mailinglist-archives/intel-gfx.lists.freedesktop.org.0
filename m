Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A13D39F8FF7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 11:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4224710EF67;
	Fri, 20 Dec 2024 10:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="XrJ7RdTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADCD10EF67
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 10:15:08 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-385eed29d17so885403f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 02:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1734689707; x=1735294507;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/2BXmEdFFl9JkvSyGGJF+UN3Vbswx2MMIvD1YNGhOpU=;
 b=XrJ7RdTfJo53EK6bTADZL0mDjKDjh4/xCeEt55Pvug34NTMTVojG+KSZ6aUppEMQjF
 iEMACydGjgARMF8xnIwDjN5iRXqHDXVXLeEwssGX6lVNdQ4LJvQ5gkJMeJ+d40InD8WF
 UfdOaQ+t9rWL0x3JlVJ+5lb0XvwZIVKsb57rVPyGDBst6gne9/BqGUuPToofsKwBfzOC
 tm9ImekbyyHaW5cqQAg9xVcM+fVBhjaHX23zrQm49xQ4S1ybzgwHBZaU1FK0u+4e6JIQ
 oOLqJTRz7Jl62BNMf/IuUNlQ/9yC08B5f1SSM5ntBugLrZwKUn50MbR+6cCqEKhZUyL/
 52fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734689707; x=1735294507;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/2BXmEdFFl9JkvSyGGJF+UN3Vbswx2MMIvD1YNGhOpU=;
 b=G7uvrRAVzep+gtPsmpw6q9nz8CGrllBbAXRMjd/BVHpWzPWPF0ZYYwOsaN7drMMjuA
 VL/aTtkNQtQN2b4V0oez0Q7tGW08WOraJao9j4/n9WbsrVVPKu14G488JiA2lwgQsqlx
 zttPLh2PhsfhMuVt4acfKJbqpTH549YAlbPeeCH+t4ujExBL39Kl1nwnzgxsieeLbEg/
 iMKNUhEif60FVDhxJx+7D2LUf7DHWPBMiN6oMHO0x9x9gkVOlsrs8rZ3nuUikxbGAtem
 bGe/sOZW8xlDXPKuwmqyMuR8yR/suwHaAdFFvsVWI6MfuXgpfK+zYyVlkA3YBDLbhX3w
 dPhA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXkA/R/Lf46KFcCLDK079BOePSXcVaOs+WA05P7yuyHb/+IWsHRSpUKJQg2mnhrRbfjG6gltjs+q1I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyiCZLSuhXvRiiqai8nMTyBYivgCxHVG2vGQgg/c4SrcJnj0SeZ
 ARrAwsuUVhBSa6evLugyTw0IHd7f9AH9HeUsvUastpVHKIts3xGenVHN8YyUP4M=
X-Gm-Gg: ASbGncuC0YkTMLZ/LzVnhzo+Z1naua/8/WEl2UURrllRV5ZmRWX/vGGVA1aEj3VsHk8
 M/Upe/FF5sEpWEX7vuYxSxepc9aXvyGPTRX1oCPMn+cQNni2u2+8QmwoOtuui9Ky8HTEixzP+xb
 YS6EWBoF7z/xAak7TGVoln0cqQF6q4/cqmBs/e8Yzf3nrmpGta+iPBFH9mry8nYcMkwH+3xm+QY
 i+tQGthCfhfKmrhzrXWyyEaCsHDWzHnFzlVNynODRKv/amg69yVTJ5/mtEw8PSojHNZq3hq
X-Google-Smtp-Source: AGHT+IEhLs7l4M2iucwP0LBIVLQXErxDIdfGVuE6OiYMUpZspGL2E/zjijIDJYzCJsBJmoPAl5P/Aw==
X-Received: by 2002:a5d:64c8:0:b0:388:c75c:e839 with SMTP id
 ffacd0b85a97d-38a223f7167mr2145163f8f.42.1734689706801; 
 Fri, 20 Dec 2024 02:15:06 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4365c08afcbsm52232025e9.21.2024.12.20.02.15.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2024 02:15:06 -0800 (PST)
Message-ID: <7d77e830-54c1-42c0-9402-16937697d2bb@ursulin.net>
Date: Fri, 20 Dec 2024 10:15:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v2 0/4] tools/gputop: Add PMU stats
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 20/12/2024 00:37, Vinay Belgaumkar wrote:
> Use the PMU support being added in
> https://patchwork.freedesktop.org/series/139121/ to add freq/c6 stats.

Brace yourself for the customary "why". So yes, why?

Gputop so far was a reference showcase for DRM fdinfo, nothing more. Why 
add a _subset_ of PMU stats to it? Any other drivers could be wired up? 
How far do people intend to grow it, considering alternatives with nicer 
UI and more featureful exist?

Or in case the conclusion ends up being "yes", then lets at least share 
some more code between intel_gpu_top and this work. Ie. make it in a way 
gputop completely subsumes and replaces intel_gpu_top might be an idea.

Regards,

Tvrtko

> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> 
> Vinay Belgaumkar (4):
>    tools/gputop: Define data structs for PMU stats
>    lib/igt_drm_clients: Add pdev and driver info
>    lib/igt_perf: Add utils to extract PMU event info
>    tools/gputop: Add GT freq and c6 stats
> 
>   lib/igt_drm_clients.c |   6 ++
>   lib/igt_drm_clients.h |   4 +
>   lib/igt_perf.c        |  68 +++++++++++++
>   lib/igt_perf.h        |   2 +
>   tools/gputop.c        | 225 ++++++++++++++++++++++++++++++++++++++++++
>   tools/meson.build     |   2 +-
>   6 files changed, 306 insertions(+), 1 deletion(-)
> 
