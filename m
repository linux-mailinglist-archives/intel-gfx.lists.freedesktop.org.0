Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D55157122
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 09:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C296E945;
	Mon, 10 Feb 2020 08:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D864F6E945
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 08:50:34 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r11so3244796wrq.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 00:50:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=P4Q+g/PVhY0MThF4GLymzKrixtQjswTHY4okbUu56Ro=;
 b=mAfU96sK2M6kgi584nYBDiLaaJ3ph2gbRkiwDTP+s0BIbUJQvKeSP23DGGLEl/w3CB
 uPIKzCeXbMnd/5plEjr5E/Rx4tgXXVs2P7BcbIPCPIQPXhjhYU7psM4ylIFaJx+uIaJX
 6O4qHmXep+BT6Q3qDr/qh+VmD/om6uavFabOazyw/uhKbuop7N7u9/+76016qGoveNbd
 F2NtbUkYmLuUEK3hb0uy1EHSVoRc5Vv9GFpLwOg560IJvlGw/TMMyN64PJ/KdftMVMZM
 0Ya3QLktv64iKFdAdtvMNOl4aAoryI1XCKgC+3JdA0407Debvy926o0S6BTtRgkGhncB
 w7Cw==
X-Gm-Message-State: APjAAAUoMiqE74QnEBv8B6GR/x2zxLHIxnYcjNE/wbYtyt2S31+JbOwU
 XmE+35l0ctptOO6AIFnyUZU=
X-Google-Smtp-Source: APXvYqz42doGot/f4OhZ6Q9IYXTdGFTJvZeWB8QyDs9NytegU/6hKE5Yv48wnIROibm6ycQbgWM+fg==
X-Received: by 2002:a5d:6709:: with SMTP id o9mr697460wru.82.1581324633469;
 Mon, 10 Feb 2020 00:50:33 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id s65sm15098844wmf.48.2020.02.10.00.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 00:50:32 -0800 (PST)
Date: Mon, 10 Feb 2020 09:50:32 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Chris Edwards <chris.edwards@otago.ac.nz>
Message-ID: <20200210085032.GA10636@dhcp22.suse.cz>
References: <1579844599463.32567@otago.ac.nz>
 <20200124100423.GP29276@dhcp22.suse.cz>
 <20200127100646.GA203985@cmpxchg.org>
 <1580181722920.30551@otago.ac.nz> <1580187538078.61819@otago.ac.nz>
 <1580195997590.47770@otago.ac.nz> <1580297769621.48601@otago.ac.nz>
 <20200129133911.GM24244@dhcp22.suse.cz>
 <20200129163954.GA210679@cmpxchg.org>
 <1580684216453.76614@otago.ac.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580684216453.76614@otago.ac.nz>
Subject: Re: [Intel-gfx] Paging out when free memory is low but not
 exhausted (and available memory remains high)
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, intel-gfx@lists.freedesktop.org,
 Johannes Weiner <hannes@cmpxchg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Let's CC i915 people - the email thread started here:
http://lkml.kernel.org/r/e994b0a76099437b8edbae925e9ccac8@its-mail-p04.registry.otago.ac.nz
Long story short, there is a swap out activity even when there is a
clean page cache available that could be reclaimed and there is a
suspicion that the i915 shrinker might be involved. Could you guys have
a look please?]

On Sun 02-02-20 22:56:56, Chris Edwards wrote:
> ________________________________________
> From: Johannes Weiner <hannes@cmpxchg.org>
> Sent: Thursday, 30 January 2020 05:39
> 
> > Chris, could you trace the i915 shrinker?
> > 
> > Enable the shrinker trace point:
> > 
> > # echo 1 >/sys/kernel/debug/tracing/events/i915/i915_gem_shrink/enable
> > 
> > Then watch for events while the swapping is occuring:
> > 
> > # cat /sys/kernel/debug/tracing/trace
> 
> ________________________________________
> 
> Thanks Johannes - that seems to confirm your suspicion: the kernel trace has a lot of contiguous entries relating to kswapd and the i915 shrinker:
> 
>          kswapd0-90    [001] .... 251812.619380: i915_gem_shrink: dev=0, target=243, flags=17
>          kswapd0-90    [001] .... 251813.194977: i915_gem_shrink: dev=0, target=496, flags=3
>          kswapd0-90    [001] .... 251813.196205: i915_gem_shrink: dev=0, target=850, flags=3
>          kswapd0-90    [001] .... 251813.196207: i915_gem_shrink: dev=0, target=808, flags=17
>          kswapd0-90    [001] .... 251813.399428: i915_gem_shrink: dev=0, target=470, flags=3
>          kswapd0-90    [001] .... 251813.429971: i915_gem_shrink: dev=0, target=666, flags=3
>          kswapd0-90    [001] .... 251813.430039: i915_gem_shrink: dev=0, target=259, flags=17
>          kswapd0-90    [001] .... 251813.905045: i915_gem_shrink: dev=0, target=573, flags=3
>          kswapd0-90    [001] .... 251813.905085: i915_gem_shrink: dev=0, target=174, flags=17
>          kswapd0-90    [001] .N.. 251813.945542: i915_gem_shrink: dev=0, target=670, flags=3
>          kswapd0-90    [001] .... 251813.945569: i915_gem_shrink: dev=0, target=474, flags=17
>          kswapd0-90    [001] .... 251814.734973: i915_gem_shrink: dev=0, target=611, flags=3
>          kswapd0-90    [001] .... 251814.735024: i915_gem_shrink: dev=0, target=417, flags=17
>          kswapd0-90    [001] .... 251814.807983: i915_gem_shrink: dev=0, target=990, flags=3
>          kswapd0-90    [001] .... 251814.807998: i915_gem_shrink: dev=0, target=962, flags=17
>          kswapd0-90    [000] .... 251815.146950: i915_gem_shrink: dev=0, target=860, flags=3
>          kswapd0-90    [000] .... 251815.146970: i915_gem_shrink: dev=0, target=758, flags=17
>          kswapd0-90    [000] .... 251815.257367: i915_gem_shrink: dev=0, target=924, flags=3
>          kswapd0-90    [000] .... 251815.257384: i915_gem_shrink: dev=0, target=832, flags=17
>          kswapd0-90    [000] .... 251816.036147: i915_gem_shrink: dev=0, target=576, flags=3
>          kswapd0-90    [000] .... 251816.036166: i915_gem_shrink: dev=0, target=140, flags=17
>          kswapd0-90    [000] .... 251816.123591: i915_gem_shrink: dev=0, target=403, flags=3
>          kswapd0-90    [000] .... 251816.124549: i915_gem_shrink: dev=0, target=546, flags=3
>          kswapd0-90    [000] .... 251816.125415: i915_gem_shrink: dev=0, target=546, flags=3
>          kswapd0-90    [000] .... 251816.126478: i915_gem_shrink: dev=0, target=546, flags=3
>          kswapd0-90    [000] .... 251816.127380: i915_gem_shrink: dev=0, target=542, flags=3
>          kswapd0-90    [000] .... 251816.128163: i915_gem_shrink: dev=0, target=522, flags=3
>          kswapd0-90    [000] .... 251816.128748: i915_gem_shrink: dev=0, target=522, flags=3
>          kswapd0-90    [000] .... 251816.129303: i915_gem_shrink: dev=0, target=522, flags=3
>          kswapd0-90    [000] .... 251816.131522: i915_gem_shrink: dev=0, target=522, flags=3
>          kswapd0-90    [000] .... 251816.133711: i915_gem_shrink: dev=0, target=522, flags=3
>          kswapd0-90    [000] .... 251816.134317: i915_gem_shrink: dev=0, target=568, flags=3
>          kswapd0-90    [000] .... 251816.134849: i915_gem_shrink: dev=0, target=568, flags=3
>          kswapd0-90    [000] .... 251816.135647: i915_gem_shrink: dev=0, target=568, flags=3
>          kswapd0-90    [000] .... 251816.233664: i915_gem_shrink: dev=0, target=483, flags=3
>          kswapd0-90    [000] .... 251816.234041: i915_gem_shrink: dev=0, target=858, flags=3
>          kswapd0-90    [000] .... 251816.234060: i915_gem_shrink: dev=0, target=612, flags=17
>          kswapd0-90    [000] .... 251816.818646: i915_gem_shrink: dev=0, target=654, flags=3
>          kswapd0-90    [000] .... 251816.818702: i915_gem_shrink: dev=0, target=400, flags=17
>          kswapd0-90    [000] .... 251816.865547: i915_gem_shrink: dev=0, target=676, flags=3
>          kswapd0-90    [000] .... 251816.865570: i915_gem_shrink: dev=0, target=499, flags=17
>          kswapd0-90    [000] .... 251817.299401: i915_gem_shrink: dev=0, target=556, flags=3
>          kswapd0-90    [000] .... 251817.299435: i915_gem_shrink: dev=0, target=355, flags=17
>          kswapd0-90    [000] .... 251817.301099: i915_gem_shrink: dev=0, target=566, flags=3
>          kswapd0-90    [000] .... 251817.301112: i915_gem_shrink: dev=0, target=512, flags=17
>          kswapd0-90    [000] .... 251817.369283: i915_gem_shrink: dev=0, target=749, flags=3
>          kswapd0-90    [000] .... 251817.369385: i915_gem_shrink: dev=0, target=115, flags=17
>          kswapd0-90    [000] .... 251817.911052: i915_gem_shrink: dev=0, target=605, flags=3
>          kswapd0-90    [000] .... 251817.911080: i915_gem_shrink: dev=0, target=474, flags=17
>          kswapd0-90    [000] .... 251817.964954: i915_gem_shrink: dev=0, target=709, flags=3
>          kswapd0-90    [000] .... 251817.964973: i915_gem_shrink: dev=0, target=589, flags=17
>          kswapd0-90    [001] .... 251819.005872: i915_gem_shrink: dev=0, target=490, flags=3
> 
> Thanks - and Michal, I hope you had a nice holiday. :)
> --
> Chris

-- 
Michal Hocko
SUSE Labs
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
