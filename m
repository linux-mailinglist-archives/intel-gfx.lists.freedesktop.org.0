Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB5273B0BC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 08:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA5F10E0C7;
	Fri, 23 Jun 2023 06:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D4710E0C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 06:29:44 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1b543f7e53aso2126135ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 23:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20221208.gappssmtp.com; s=20221208; t=1687501783; x=1690093783;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zCEqJX5mm9cbUE56OVCDucRVQniQh/jh7QjO1tCYRyw=;
 b=VCN1cKAzYZWGpOm/hUHuPZp8plVnErZlG9G0OlFzhPpXaNGHYvVufkX79JUDsPqJVj
 SxdYAM9A9ivCYhtFxc3SyvMZr6s5SlnDngyF1CSlxpEdm/HUuOSGwHgmJomuuYgedrRX
 aqax0M2Dw9QUTGwitN8bpL0qLseKhs7EVUc6lepS488qyivLAQHSFGtevNE0LyqUhWPi
 NKkNR95/QZWn2OoaLsjXJllgmMFsp0mHDlbo5o60jR1YeUkdYXlMSdAiD7/jZsXdB48G
 reDdzoxXO5mM4WdQ8i9rMsSwtC5huiBFlnlMXvIXzYTlsiTrC5P7Z8F16npWgNIfnf8B
 ShDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687501783; x=1690093783;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zCEqJX5mm9cbUE56OVCDucRVQniQh/jh7QjO1tCYRyw=;
 b=HxwQzl73Sa+FJA8YmRVoiq7PShjdNLT2D61FgkPxeI0ztJUL+Qgy2/CRG7aPnyQQg/
 cd/QqhNok8gnoeH3hijm1mLIM2T0mUPLR2z7dVjDmOIfP6qAsBgwoXMq/In8GgLBNDxL
 5A0mh+PPPTJdjIQSxwABtjF7DErKsctvIgdGvsCfPS0f+5n1jnlNXZ3siZ86nYyjI0cg
 cv1IPu9J1pLHtYwi6jsikHhLayOu03NcDmjBkXYn7LMQ1/9pe+rzYlzA8p50Hh1JpUv+
 OLFsBqo9RnX3EI//lfcgJetjsdPOA1uWiEt9hLZPX6UR4Ki5xKpw9ARFDceZpQrzFGgr
 qTcw==
X-Gm-Message-State: AC+VfDz43CTdde4SyU9VoBI1GqMjLUHdtEO34ifqzQJSEeEFvKcUVOp6
 eSCTMLH4Rw2+bgXtnU0Gs9ELYA==
X-Google-Smtp-Source: ACHHUZ6xCu/M/0AOwG5LVLb8OX3DoTsqyFTeplRrHsUG1u2SLkBGduWAm9ZrSI41Zhf0Zeq1UunMJA==
X-Received: by 2002:a17:902:8214:b0:1aa:d971:4623 with SMTP id
 x20-20020a170902821400b001aad9714623mr18870991pln.38.1687501783228; 
 Thu, 22 Jun 2023 23:29:43 -0700 (PDT)
Received: from dread.disaster.area (pa49-180-13-202.pa.nsw.optusnet.com.au.
 [49.180.13.202]) by smtp.gmail.com with ESMTPSA id
 x5-20020a1709027c0500b001b246dcffb7sm6311389pll.300.2023.06.22.23.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 23:29:42 -0700 (PDT)
Received: from dave by dread.disaster.area with local (Exim 4.96)
 (envelope-from <david@fromorbit.com>) id 1qCaId-00F8x8-0s;
 Fri, 23 Jun 2023 16:29:39 +1000
Date: Fri, 23 Jun 2023 16:29:39 +1000
From: Dave Chinner <david@fromorbit.com>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <ZJU708VIyJ/3StAX@dread.disaster.area>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
 <20230622085335.77010-25-zhengqi.arch@bytedance.com>
 <cf0d9b12-6491-bf23-b464-9d01e5781203@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf0d9b12-6491-bf23-b464-9d01e5781203@suse.cz>
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
 Qi Zheng <zhengqi.arch@bytedance.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 dm-devel@redhat.com, linux-ext4@vger.kernel.org, paulmck@kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-nfs@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, dri-devel@lists.freedesktop.org,
 brauner@kernel.org, tytso@mit.edu, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, linux-btrfs@vger.kernel.org, tkhai@ya.ru
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 22, 2023 at 05:12:02PM +0200, Vlastimil Babka wrote:
> On 6/22/23 10:53, Qi Zheng wrote:
> > @@ -1067,33 +1068,27 @@ static unsigned long shrink_slab(gfp_t gfp_mask, int nid,
> >  	if (!mem_cgroup_disabled() && !mem_cgroup_is_root(memcg))
> >  		return shrink_slab_memcg(gfp_mask, nid, memcg, priority);
> >  
> > -	if (!down_read_trylock(&shrinker_rwsem))
> > -		goto out;
> > -
> > -	list_for_each_entry(shrinker, &shrinker_list, list) {
> > +	rcu_read_lock();
> > +	list_for_each_entry_rcu(shrinker, &shrinker_list, list) {
> >  		struct shrink_control sc = {
> >  			.gfp_mask = gfp_mask,
> >  			.nid = nid,
> >  			.memcg = memcg,
> >  		};
> >  
> > +		if (!shrinker_try_get(shrinker))
> > +			continue;
> > +		rcu_read_unlock();
> 
> I don't think you can do this unlock?
> 
> > +
> >  		ret = do_shrink_slab(&sc, shrinker, priority);
> >  		if (ret == SHRINK_EMPTY)
> >  			ret = 0;
> >  		freed += ret;
> > -		/*
> > -		 * Bail out if someone want to register a new shrinker to
> > -		 * prevent the registration from being stalled for long periods
> > -		 * by parallel ongoing shrinking.
> > -		 */
> > -		if (rwsem_is_contended(&shrinker_rwsem)) {
> > -			freed = freed ? : 1;
> > -			break;
> > -		}
> > -	}
> >  
> > -	up_read(&shrinker_rwsem);
> > -out:
> > +		rcu_read_lock();
> 
> That new rcu_read_lock() won't help AFAIK, the whole
> list_for_each_entry_rcu() needs to be under the single rcu_read_lock() to be
> safe.

Yeah, that's the pattern we've been taught and the one we can look
at and immediately say "this is safe".

This is a different pattern, as has been explained bi Qi, and I
think it *might* be safe.

*However.*

Right now I don't have time to go through a novel RCU list iteration
pattern it one step at to determine the correctness of the
algorithm. I'm mostly worried about list manipulations that can
occur outside rcu_read_lock() section bleeding into the RCU
critical section because rcu_read_lock() by itself is not a memory
barrier.

Maybe Paul has seen this pattern often enough he could simply tell
us what conditions it is safe in. But for me to work that out from
first principles? I just don't have the time to do that right now.

> IIUC this is why Dave in [4] suggests unifying shrink_slab() with
> shrink_slab_memcg(), as the latter doesn't iterate the list but uses IDR.

Yes, I suggested the IDR route because radix tree lookups under RCU
with reference counted objects are a known safe pattern that we can
easily confirm is correct or not.  Hence I suggested the unification
+ IDR route because it makes the life of reviewers so, so much
easier...

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com
