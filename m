Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447CB7E9D94
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 14:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7946110E37A;
	Mon, 13 Nov 2023 13:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 600 seconds by postgrey-1.36 at gabe;
 Thu, 09 Nov 2023 20:56:56 UTC
Received: from snail.cherry.relay.mailchannels.net
 (snail.cherry.relay.mailchannels.net [23.83.223.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4145B10E919
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 20:56:55 +0000 (UTC)
X-Sender-Id: dreamhost|x-authsender|kjlx@templeofstupid.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 568FF828C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 20:40:44 +0000 (UTC)
Received: from pdx1-sub0-mail-a263.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 0E73C82674
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 20:40:44 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1699562444; a=rsa-sha256;
 cv=none;
 b=vyfDaV+SzKy7Rj+9sibk2RVgrAMuQUUHE8ZWKfaPsXptCYmr+M0V2/3HFZjAn/sft4+vs8
 X3nSADDnyhAjq9dqn7fsPij4viq2ba2CSm0RUb/nX6xbfXsEQLoiFincYRewMVzKRyxn2F
 81EfCbNtiq5U8fdmbJsCpTgl3QxB3xNYr7tqXNqs1ow4C0ikizJ6EEo79swtUDP7Fv2pJP
 ml25C7UsCFVwFYSZK88IGDjbsVqhB29zQuxLXO9qvjt8XFJ1nTTuuHCUbiMVuABiOLKYI1
 Ox0A4ZHIlEugVjAiApJjBB2rGdX4Ankl7Pd6QNgMpRRiusOChu8DNln/uNCp9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1699562444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=voIgu6gsgx3nLBxvRLuOmTyzuOvyCZnVGVTcOrZDN8g=;
 b=ZlyDNCAxKLu6fvsXOeGsm5YifKsVAwNZUsoUISdpLI/H4Te1dBtMI/e1M2z35bIiCRHxFe
 ShS+5D+gUeByUn9C/a/QSCigIHcl3/LdTq8JQwFCGKKht5ggiG4n2bwztdKjAv3xWO9xB9
 XYweN9OlRrY0H9EFF/ABkZ2Nvjo9ot2XAUgCJeHhdPEDewTjnPRmeYzMBBEM4qFvsIOEEW
 4/BGChYHT6wsu9/QV+hw4rpOUUScPwJQYqYe/vnLTD9xhn6E6V2FcN3E/C6Btrkkf8wQKp
 KuvS8UI8gKoVm5wVq0d49834N3/8Q/5wrtAKxJI2+cwaZZ3RXvqBmAM8hun/Og==
ARC-Authentication-Results: i=1; rspamd-6f98f74948-h8z6f;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=kjlx@templeofstupid.com
X-Sender-Id: dreamhost|x-authsender|kjlx@templeofstupid.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|kjlx@templeofstupid.com
X-MailChannels-Auth-Id: dreamhost
X-Abiding-Abaft: 1998d95b2f030411_1699562444193_3738984979
X-MC-Loop-Signature: 1699562444193:3114892516
X-MC-Ingress-Time: 1699562444193
Received: from pdx1-sub0-mail-a263.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.104.0.148 (trex/6.9.2); Thu, 09 Nov 2023 20:40:44 +0000
Received: from kmjvbox.templeofstupid.com (c-73-231-176-24.hsd1.ca.comcast.net
 [73.231.176.24])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: kjlx@templeofstupid.com)
 by pdx1-sub0-mail-a263.dreamhost.com (Postfix) with ESMTPSA id 4SRDP75nfRzDY
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 12:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=templeofstupid.com;
 s=dreamhost; t=1699562443;
 bh=voIgu6gsgx3nLBxvRLuOmTyzuOvyCZnVGVTcOrZDN8g=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=Mk2j1sHSlSV2mwwHNUVxVBo0pQpjkoMlsfteuST6Ux345OHzJJQf/xE9zFYFo3iA8
 2gi1YiCJNVXH32QQDk0WIS3dETXzeFBGp2lLe+njISHQpir3bYRm9gYgjEihPHGK61
 90P8DFdK4BIkohWI31niSAZtoxjD5bdU91UQE2j2BFrtI87jlNuleQpBkahs46iiES
 BxNkcPU0jBHsbxu/bXZT0D9qz92oVdPC70w/5hSXQbrj8EdKO80Q1E71yo4q+t1ygS
 y+VNhPTPCOvegCNtxbZNoLpZvxiNhJcv8w2MCuIyhc3cVJm20ne4z+dx8jDWdHm4Fo
 DaNt06+XqEJnw==
Received: from johansen (uid 1000) (envelope-from kjlx@templeofstupid.com)
 id e0044 by kmjvbox.templeofstupid.com (DragonFly Mail Agent v0.12);
 Thu, 09 Nov 2023 12:40:22 -0800
Date: Thu, 9 Nov 2023 12:40:22 -0800
From: Krister Johansen <kjlx@templeofstupid.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Message-ID: <20231109204022.GA2073@templeofstupid.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-Mailman-Approved-At: Mon, 13 Nov 2023 13:45:43 +0000
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231107)
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
Cc: Miklos Szeredi <mszeredi@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kjlx@templeofstupid.com" <kjlx@templeofstupid.com>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chaitanya,

On Thu, Nov 09, 2023 at 05:00:09PM +0000, Borah, Chaitanya Kumar wrote:
> Hello Krister,
>  
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
>  
> This mail is regarding a regression we are seeing in our CI runs[1] for some machines (dg2 and adl-p) on linux-next  repository.
> 
> Since the version next-20231107 [2], we are seeing the following error
> ```````````````````````````````````````````````````````````````````````````````
> <4>[   32.015910] stack segment: 0000 [#1] PREEMPT SMP NOPTI
> <4>[   32.021048] CPU: 15 PID: 766 Comm: fusermount Not tainted 6.6.0-next-20231107-next-20231107-g5cd631a52568+ #1
> <4>[   32.031135] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.4221.A00.2305271351 05/27/2023
> <4>[   32.044657] RIP: 0010:fuse_evict_inode+0x61/0x150 [fuse]
> `````````````````````````````````````````````````````````````````````````````````
> 
> Details log can be found in [3].
> 
> After bisecting the tree, the following patch [4] seems to be the first "bad" commit
> 
>  `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5 is the first bad commit
> commit 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5
> Author: Krister Johansen kjlx@templeofstupid.com
> Date:   Fri Nov 3 10:39:47 2023 -0700
> 
>     fuse: share lookup state between submount and its parent
> 
>     Fuse submounts do not perform a lookup for the nodeid that they inherit
>     from their parent.  Instead, the code decrements the nlookup on the
>     submount's fuse_inode when it is instantiated, and no forget is
>     performed when a submount root is evicted.
> 
>     Trouble arises when the submount's parent is evicted despite the
>     submount itself being in use.  In this author's case, the submount was
>     in a container and deatched from the initial mount namespace via a
>     MNT_DEATCH operation.  When memory pressure triggered the shrinker, the
>     inode from the parent was evicted, which triggered enough forgets to
>     render the submount's nodeid invalid.
> 
>     Since submounts should still function, even if their parent goes away,
>     solve this problem by sharing refcounted state between the parent and
>     its submount.  When all of the references on this shared state reach
>     zero, it's safe to forget the final lookup of the fuse nodeid.
> 
>  `````````````````````````````````````````````````````````````````````````````````````````````````````````
>  
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?

Apologies for the inconvenience.  I've reproduced the problem, tested a
fix, and am in the process of preparing patches to send to Miklos.  I'll
cc the people on this e-mail in that thread.

> [3] http://gfx-ci.igk.intel.com/tree/linux-next/next-20231109/bat-dg2-14/boot0.txt

This link didn't resolve in DNS when I tried to access it.  I needed to
use intel-gfx-ci.01.org as the hostname instead.

Thanks,

-K
