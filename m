Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FB473FE25
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B4110E2F9;
	Tue, 27 Jun 2023 14:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com
 [IPv6:2001:4860:4864:20::30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9827410E4FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:31:44 +0000 (UTC)
Received: by mail-oa1-x30.google.com with SMTP id
 586e51a60fabf-1aa25c5cf0eso1108869fac.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687422703; x=1690014703;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jRx5u0dIx9qFXm7I93dXe9q/QmQ9W+wUToPS3aLpk1M=;
 b=BLxeO0dy+qXx3mtPibK1S1/Or5zgBKyR+cJ+WdJudKlQtS/Nsabue7QFfygOG9X37C
 JNC/knOS3tjYOQOseW33zi2F030DsgTWZcCvwE6mko6OoqIenxumjcv5Z8/rnxAjBO3/
 xtucKEfCtZqg/VNDj8oOitF8gRCgoGC+eaFgizTMA41zH3SGC3RP8SzsV7WNcZX8qR+q
 6s7WskcQisgXsEcLIkuFshZF5uF8hpqRK404CDzKPS3hFNRImlWGDWKvxDEmNrhw0M34
 cglWSueSHGyZNjK3S6DZy/VJBgyCTc7gX8Qm2fkIbSjNxChukxDTKOPYSzno2UgfFI9l
 y7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687422703; x=1690014703;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jRx5u0dIx9qFXm7I93dXe9q/QmQ9W+wUToPS3aLpk1M=;
 b=U0bidYN83/d3IcmpXRBRT5I6mKrpsc1gPTJIdOVhEmZAsj6W9s8ApejCCpjBETYPao
 TFrcGVN5XXnrIZKfmP9HUyKt+hfO7ylkbs3a3H1q7sczIgO00WAYPxvXxlK1BhD52wMM
 jq6CuYOW6aQhFqel5Y9+4jxDDC7aWstKWktGfJGL9CToeXOwAQU5feH3iNRbkVO+ZkT7
 UXCV2a4Vqse+o6kXjkGWGRbzuoM5V48khJRXcVFU091fAa9gfYHjmtmB2k3WSbptZdz5
 fOUgtyjoH4A1y/Dp3J1pJI/Q47tV6WLm0dmuIIgESIQ19UIBg39YyH3m5+GEWy0cN6+q
 9jtw==
X-Gm-Message-State: AC+VfDxKdb4aq3p8kkiK7RQ4tPGWZf+g6WMGSSdJsYd2SLHPJWwDdbW5
 xNk5shk+LVNjmv8TUv9SCLM4ww==
X-Google-Smtp-Source: ACHHUZ4rJo+IPtTRaPya+U1JdMgc+u3gA3krnJKF3F08hxGt0uoHrxZAqg1izlNZ+SOIkOa4AMphOQ==
X-Received: by 2002:a05:6830:19c1:b0:6b1:6db4:556f with SMTP id
 p1-20020a05683019c100b006b16db4556fmr10609999otp.3.1687422702698; 
 Thu, 22 Jun 2023 01:31:42 -0700 (PDT)
Received: from [10.4.168.167] ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 y17-20020a63e251000000b0050a0227a4bcsm4369684pgj.57.2023.06.22.01.31.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Jun 2023 01:31:42 -0700 (PDT)
Message-ID: <52bf599c-3c3a-7dfc-30b3-f3a2af5f29a8@bytedance.com>
Date: Thu, 22 Jun 2023 16:31:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.12.0
To: Qi Zheng <qi.zheng@linux.dev>, akpm@linux-foundation.org,
 david@fromorbit.com, tkhai@ya.ru, vbabka@suse.cz, roman.gushchin@linux.dev,
 djwong@kernel.org, brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
References: <20230622082454.4090236-1-qi.zheng@linux.dev>
Content-Language: en-US
From: Qi Zheng <zhengqi.arch@bytedance.com>
In-Reply-To: <20230622082454.4090236-1-qi.zheng@linux.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: Re: [Intel-gfx] [External] [PATCH 00/29] use refcount+RCU method to
 implement lockless slab shrink
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
Cc: mst@redhat.com, neilb@suse.de, jasowang@redhat.com,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, song@kernel.org, dm-devel@redhat.com, ray.huang@amd.com,
 namit@vmware.com, marijn.suijten@somainline.org, airlied@gmail.com,
 agk@redhat.com, robh@kernel.org, senozhatsky@chromium.org, david@redhat.com,
 clm@fb.com, steven.price@arm.com, alyssa.rosenzweig@collabora.com,
 josef@toxicpanda.com, linux-ext4@vger.kernel.org, kent.overstreet@gmail.com,
 xuanzhuo@linux.alibaba.com, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, snitzer@kernel.org, quic_abhinavk@quicinc.com,
 colyli@suse.de, linux-raid@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-bcache@vger.kernel.org, viro@zeniv.linux.org.uk, dsterba@suse.com,
 linux-nfs@vger.kernel.org, tomeu.vizoso@collabora.com, kolga@netapp.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, minchan@kernel.org, chuck.lever@oracle.com,
 daniel@ffwll.ch, jack@suse.com, dmitry.baryshkov@linaro.org,
 adilger.kernel@dilger.ca, freedreno@lists.freedesktop.org,
 christian.koenig@amd.com, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch set failed to send due to the following reasons, please ignore.

	4.7.1 Error: too many recipients from 49.7.199.65
