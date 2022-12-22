Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D391C653DD5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 11:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8746310E533;
	Thu, 22 Dec 2022 10:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2822E10E032
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 10:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671703334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o6jO/LCV2IF2UxvEuH5GPFWr6SJ3JZsJjPnFQmLY128=;
 b=VPSAzvZsd0VOW0Pl30eVauKyaeyjrHeZyCKLjc73aCE0sDFNugWd332Tf8Gnf2vM6ktSsq
 o4AXqF1IvloyT4WAPqILWIDn4nvNCDVbbf9ElBuTPa5ti0AU/YRO/UojBqvS08s5Y6pfM8
 3mkvIzE4KULEPGaldccqosp5ef/3JS4=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-104-f-5aAZnPNOWiDdKBCPfuLQ-1; Thu, 22 Dec 2022 05:02:11 -0500
X-MC-Unique: f-5aAZnPNOWiDdKBCPfuLQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 o13-20020a05620a2a0d00b006cf9085682dso914594qkp.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 02:02:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=o6jO/LCV2IF2UxvEuH5GPFWr6SJ3JZsJjPnFQmLY128=;
 b=zhtObMDjO5KOZQdAjvk73F3zI3TRyhUUjstqN/IC8sDzo5EHiRRCOPKAcko2PBJg6F
 FIAmiyrmNHs0GAah9k7/Hc89+Gu/E3oTrf7FYdI3bSkCjguK7xKP4zoEvErSQVxGo+uS
 2wGFBxLRada1eDEBmwrrdf8IiIO3TWa87A9qosmQFDNEA+w+rPuhj1eCAvDI68Wne+w5
 VbTI1gCkqgmYgcuqW+MvoFKWKh0fOrBnp6kNXw/IWDmCPoxVXdsnUwAY7UlDZaMGb+xV
 pYRDWY1QbcAbe+LYnwM/ST9jgceXU2Ad4/g3nTTmD8lFU/fAi1BX2DXtjNaTyVHAJWMf
 U3mw==
X-Gm-Message-State: AFqh2krdD+rFYpoR3nOXVX6JLuWmDfBjNkLrVUIMU+52U72uKoM+hBGe
 G0mJOrUGCkdvktEBI4e7V7EYTgJaFI+O2/v4cppGfFgaccZccVMCh7yiow8CX6SNVSxWiNKo6zf
 W0IIjlfeCydWmOG+2cQv0/Rxe7fHc
X-Received: by 2002:a0c:c508:0:b0:4e5:a127:382f with SMTP id
 x8-20020a0cc508000000b004e5a127382fmr6466233qvi.48.1671703331057; 
 Thu, 22 Dec 2022 02:02:11 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtZnBvcAi4VqZ0nAfseRa5ZZncJObkgh59kN1yODkWBS5WICo+kLsdO+KK5pqcbrrZqdW1DHQ==
X-Received: by 2002:a0c:c508:0:b0:4e5:a127:382f with SMTP id
 x8-20020a0cc508000000b004e5a127382fmr6466171qvi.48.1671703330733; 
 Thu, 22 Dec 2022 02:02:10 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-101-173.dyn.eolo.it.
 [146.241.101.173]) by smtp.gmail.com with ESMTPSA id
 f1-20020a05620a408100b006cfc9846594sm4269qko.93.2022.12.22.02.02.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Dec 2022 02:02:10 -0800 (PST)
Message-ID: <8d91ab13f56e88af0f6133130808f9623b3adb2e.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Steven Rostedt <rostedt@goodmis.org>, Linus Torvalds
 <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>
Date: Thu, 22 Dec 2022 11:02:01 +0100
In-Reply-To: <20221220134519.3dd1318b@gandalf.local.home>
References: <20221220134519.3dd1318b@gandalf.local.home>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] treewide: Convert del_timer*() to
 timer_shutdown*()
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, SHA-cyfmac-dev-list@infineon.com,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Anna-Maria Gleixner <anna-maria@linutronix.de>,
 brcm80211-dev-list.pdl@broadcom.com, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2022-12-20 at 13:45 -0500, Steven Rostedt wrote:
> [
>   Linus,
> 
>     I ran the script against your latest master branch:
>     commit b6bb9676f2165d518b35ba3bea5f1fcfc0d969bf
> 
>     As the timer_shutdown*() code is now in your tree, I figured
>     we can start doing the conversions. At least add the trivial ones
>     now as Thomas suggested that this gets applied at the end of the
>     merge window, to avoid conflicts with linux-next during the
>     development cycle. I can wait to Friday to run it again, and
>     resubmit.
> 
>     What is the best way to handle this?
> ]
> 
> From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
> 
> Due to several bugs caused by timers being re-armed after they are
> shutdown and just before they are freed, a new state of timers was added
> called "shutdown". After a timer is set to this state, then it can no
> longer be re-armed.
> 
> The following script was run to find all the trivial locations where
> del_timer() or del_timer_sync() is called in the same function that the
> object holding the timer is freed. It also ignores any locations where the
> timer->function is modified between the del_timer*() and the free(), as
> that is not considered a "trivial" case.
> 
> This was created by using a coccinelle script and the following commands:
> 
>  $ cat timer.cocci
> @@
> expression ptr, slab;
> identifier timer, rfield;
> @@
> (
> -       del_timer(&ptr->timer);
> +       timer_shutdown(&ptr->timer);
> > 
> -       del_timer_sync(&ptr->timer);
> +       timer_shutdown_sync(&ptr->timer);
> )
>   ... when strict
>       when != ptr->timer
> (
>         kfree_rcu(ptr, rfield);
> > 
>         kmem_cache_free(slab, ptr);
> > 
>         kfree(ptr);
> )
> 
>  $ spatch timer.cocci . > /tmp/t.patch
>  $ patch -p1 < /tmp/t.patch
> 
> Link: https://lore.kernel.org/lkml/20221123201306.823305113@linutronix.de/
> 
> Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>

For the networking bits:

>  drivers/net/ethernet/intel/i40e/i40e_main.c      |  6 +++---
>  drivers/net/ethernet/marvell/sky2.c              |  2 +-
>  drivers/net/ethernet/sun/sunvnet.c               |  2 +-
>  drivers/net/usb/sierra_net.c                     |  2 +-
>  net/802/garp.c                                   |  2 +-
>  net/802/mrp.c                                    |  4 ++--
>  net/bridge/br_multicast.c                        |  8 ++++----
>  net/bridge/br_multicast_eht.c                    |  4 ++--
>  net/core/gen_estimator.c                         |  2 +-
>  net/ipv4/ipmr.c                                  |  2 +-
>  net/ipv6/ip6mr.c                                 |  2 +-
>  net/mac80211/mesh_pathtbl.c                      |  2 +-
>  net/netfilter/ipset/ip_set_list_set.c            |  2 +-
>  net/netfilter/ipvs/ip_vs_lblc.c                  |  2 +-
>  net/netfilter/ipvs/ip_vs_lblcr.c                 |  2 +-
>  net/netfilter/xt_IDLETIMER.c                     |  4 ++--
>  net/netfilter/xt_LED.c                           |  2 +-
>  net/sched/cls_flow.c                             |  2 +-
>  net/sunrpc/svc.c                                 |  2 +-
>  net/tipc/discover.c                              |  2 +-
>  net/tipc/monitor.c                               |  2 +-

Acked-by: Paolo Abeni <pabeni@redhat.com>

