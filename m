Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D329773C3E8
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jun 2023 00:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5A410E040;
	Fri, 23 Jun 2023 22:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE64410E040
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 22:19:20 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-666e3b15370so786357b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 15:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20221208.gappssmtp.com; s=20221208; t=1687558760; x=1690150760;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mD+HWl2aEG73j6Ak2J3eZjmDfUV1ZAzR4FiFGaQDP6g=;
 b=lhK6GKfDyI3S2QEkidlKI9Ek7fIdf8s37/5sqH0oYikZjcY7jput4UDyCpFr2NTdT8
 zVyRwANCpkSqZtLXi737KASfNRL8jzfb+T40RkB84q+J2KMVe792KQuGyG75zUe1uU9/
 y8KvlnU3EwX/2kXOOlbwtshnDERQlNsq270xMVedNytpu7Z+d6cUbBidgJ6X6DjHIzPN
 7j8fd31lnOvF/aMkMY7bUu4o0IY8LUCtjYfDI1XbfU7cyMWriXOuApAvFBa9TAUUYDHZ
 fQEMipnVJ6GJpcYxmPtjY5bvv9Ob+7MwsmiucWVnjVO5xA+M617znVGuQZS0X5eWOQ0u
 zyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687558760; x=1690150760;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mD+HWl2aEG73j6Ak2J3eZjmDfUV1ZAzR4FiFGaQDP6g=;
 b=dWxk7gutPTzZ4FJ1NBC6pl/ynvcOw/Aq+8iEXCGGjTTbcJEQvbzZzRGFv680/j5S+j
 u3F8hC1uR4sUSFUW/RXaYTdnidm6vcJVo9Chc1UcFeg1zuiJBP+hTPrUtm+/0M2Lc4Xn
 21vWnc92rPI8yv2A+4jBCsdIuQscSP/hkYAq4xN64zCdnhMA7WmsxqDC4gWeBmPSQ25Y
 fAXQIZcMREDBUvAsm2OLEM1OTAPwBIU3oNtTqnXxTLMy7o9mDVJtH9JzwD/GTyHK0Iyt
 TaYw4Klyhi7mF/zaPlOOPIAjiKAuvl94mzI7ohUMMJ6U3cS+1u8yAkfkEhVOks04MrkZ
 Yixg==
X-Gm-Message-State: AC+VfDwE7bnbORoME2Xa+YIQeizBPvtluVHYwe04Vfc5AqAj6nmRk1kv
 FPyX/fSef1LUL6ZHYVD76FzI0Q==
X-Google-Smtp-Source: ACHHUZ6Wu9ky21UYgtgHUmTHayjznwHVfcTzLH8QgkKVoWewOSRi12/4tLQSsphqEkidSt1h32qo3g==
X-Received: by 2002:a05:6a20:4410:b0:121:7454:be2a with SMTP id
 ce16-20020a056a20441000b001217454be2amr17133223pzb.45.1687558759759; 
 Fri, 23 Jun 2023 15:19:19 -0700 (PDT)
Received: from dread.disaster.area (pa49-186-94-37.pa.vic.optusnet.com.au.
 [49.186.94.37]) by smtp.gmail.com with ESMTPSA id
 b17-20020a170902b61100b001ab0672fc1fsm58552pls.105.2023.06.23.15.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jun 2023 15:19:19 -0700 (PDT)
Received: from dave by dread.disaster.area with local (Exim 4.96)
 (envelope-from <david@fromorbit.com>) id 1qCp7a-00FP7U-2k;
 Sat, 24 Jun 2023 08:19:14 +1000
Date: Sat, 24 Jun 2023 08:19:14 +1000
From: Dave Chinner <david@fromorbit.com>
To: Qi Zheng <zhengqi.arch@bytedance.com>
Message-ID: <ZJYaYv4pACmCaBoT@dread.disaster.area>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
 <20230622085335.77010-25-zhengqi.arch@bytedance.com>
 <cf0d9b12-6491-bf23-b464-9d01e5781203@suse.cz>
 <ZJU708VIyJ/3StAX@dread.disaster.area>
 <a21047bb-3b87-a50a-94a7-f3fa4847bc08@bytedance.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a21047bb-3b87-a50a-94a7-f3fa4847bc08@bytedance.com>
Subject: Re: [Intel-gfx] [PATCH 24/29] mm: vmscan: make global slab shrink
 lockless
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
Cc: djwong@kernel.org, roman.gushchin@linux.dev,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, dm-devel@redhat.com, linux-ext4@vger.kernel.org,
 paulmck@kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 Vlastimil Babka <vbabka@suse.cz>, brauner@kernel.org, tytso@mit.edu,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 linux-btrfs@vger.kernel.org, tkhai@ya.ru
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 23, 2023 at 09:10:57PM +0800, Qi Zheng wrote:
> On 2023/6/23 14:29, Dave Chinner wrote:
> > On Thu, Jun 22, 2023 at 05:12:02PM +0200, Vlastimil Babka wrote:
> > > On 6/22/23 10:53, Qi Zheng wrote:
> > Yes, I suggested the IDR route because radix tree lookups under RCU
> > with reference counted objects are a known safe pattern that we can
> > easily confirm is correct or not.  Hence I suggested the unification
> > + IDR route because it makes the life of reviewers so, so much
> > easier...
> 
> In fact, I originally planned to try the unification + IDR method you
> suggested at the beginning. But in the case of CONFIG_MEMCG disabled,
> the struct mem_cgroup is not even defined, and root_mem_cgroup and
> shrinker_info will not be allocated.  This required more code changes, so
> I ended up keeping the shrinker_list and implementing the above pattern.

Yes. Go back and read what I originally said needed to be done
first. In the case of CONFIG_MEMCG=n, a dummy root memcg still needs
to exist that holds all of the global shrinkers. Then shrink_slab()
is only ever passed a memcg that should be iterated.

Yes, it needs changes external to the shrinker code itself to be
made to work. And even if memcg's are not enabled, we can still use
the memcg structures to ensure a common abstraction is used for the
shrinker tracking infrastructure....

> If the above pattern is not safe, I will go back to the unification +
> IDR method.

And that is exactly how we got into this mess in the first place....

-Dave
-- 
Dave Chinner
david@fromorbit.com
