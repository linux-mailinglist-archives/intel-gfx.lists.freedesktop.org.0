Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC8027796F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 21:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447236E993;
	Thu, 24 Sep 2020 19:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB726E993
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 19:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600976218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=twNrygaxLsVZPNKYCHY3ZfHX7UvhS+LdDIfmkCz5FTg=;
 b=Kr4u0+wKDT4eE4Ovfk8dVq+zwEnG3+m9nBXV98aP7EduhHCHW16A+CAkoAsez2npbw8dyM
 F42oliu8ePZ+iErn6O4Kku3QUN9ZIpqaI29BaqqCM/MwyQAJ1jE7qUu8VTcTnyor0Tjv1G
 AGafI+2TkSoImau4U/fywK786XFkk6M=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-6fJyZcApNLiXn5AIwmZFcA-1; Thu, 24 Sep 2020 15:36:56 -0400
X-MC-Unique: 6fJyZcApNLiXn5AIwmZFcA-1
Received: by mail-wm1-f71.google.com with SMTP id x6so151423wmi.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 12:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=twNrygaxLsVZPNKYCHY3ZfHX7UvhS+LdDIfmkCz5FTg=;
 b=i3hCazuZejZDhr49myTYKE0fj0zEBSnRNtrpl5RQMmmGz7cQusXX1Bi63TrJ9UKzP1
 JpZV90CArruh0M+0pLmDbSyK7V2krXioQf9NV3LGTXFXj6AgBTXhvUdjgPFrO2AGGekt
 3iDbpKKYMQ9lua1jZpWEkL8UWqFQxX7jpw31+ELJ2JUKmmLQ9mgJIeEZMhtXDNMtaHR0
 Ge5wDwpXcswwdXr/CyPK+did9DjHacGeMff48QMLSjQxU5c3KEESI/zyxKjS1kIY2So/
 etzQQTwm7Z4n9KVyHEYNUqyFnOlbsMZW92U0JnuZmmUGCOfevd80fJmLQ9QIu9Z8g2KZ
 XugA==
X-Gm-Message-State: AOAM532H4Mw+J+Wl+Xr2qsYXomhGkhHyEUzeP/z6xmlCeRtixuURO9AM
 ojCI5OT3THf/DLGhvGGqQQ7SbEJhfNgiBJQSM/Zyv2bAQ5H0o3+qzyyo1+KqBk6J3+7RqsSC677
 x+Bg/ggpaPHa7uJv3YlSm5n7804A7
X-Received: by 2002:adf:f34a:: with SMTP id e10mr491672wrp.91.1600976215217;
 Thu, 24 Sep 2020 12:36:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJynpHjsvPmbyspQelrDSoXiAKotSicrrWAZZ3D0g/KyVrY5rzQz/w0XAUEKgRr9DXJGglK1Gg==
X-Received: by 2002:adf:f34a:: with SMTP id e10mr491615wrp.91.1600976214950;
 Thu, 24 Sep 2020 12:36:54 -0700 (PDT)
Received: from x1.bristot.me (host-87-17-196-109.retail.telecomitalia.it.
 [87.17.196.109])
 by smtp.gmail.com with ESMTPSA id h204sm302746wmf.35.2020.09.24.12.36.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Sep 2020 12:36:54 -0700 (PDT)
To: peterz@infradead.org, Steven Rostedt <rostedt@goodmis.org>
References: <87mu1lc5mp.fsf@nanos.tec.linutronix.de>
 <87k0wode9a.fsf@nanos.tec.linutronix.de>
 <CAHk-=wgbmwsTOKs23Z=71EBTrULoeaH2U3TNqT2atHEWvkBKdw@mail.gmail.com>
 <87eemwcpnq.fsf@nanos.tec.linutronix.de>
 <CAHk-=wgF-upZVpqJWK=TK7MS9H-Rp1ZxGfOG+dDW=JThtxAzVQ@mail.gmail.com>
 <87a6xjd1dw.fsf@nanos.tec.linutronix.de>
 <CAHk-=wjhxzx3KHHOMvdDj3Aw-_Mk5eRiNTUBB=tFf=vTkw1FeA@mail.gmail.com>
 <87sgbbaq0y.fsf@nanos.tec.linutronix.de>
 <20200923084032.GU1362448@hirez.programming.kicks-ass.net>
 <20200923115251.7cc63a7e@oasis.local.home>
 <20200924082717.GA1362448@hirez.programming.kicks-ass.net>
From: Daniel Bristot de Oliveira <bristot@redhat.com>
Message-ID: <7541acd1-65a0-0d55-4028-71cab544e90d@redhat.com>
Date: Thu, 24 Sep 2020 21:36:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200924082717.GA1362448@hirez.programming.kicks-ass.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=bristot@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [patch RFC 00/15] mm/highmem: Provide a preemptible
 variant of kmap_atomic & friends
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
Cc: Juri Lelli <juri.lelli@redhat.com>, David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-mips@vger.kernel.org,
 Ben Segall <bsegall@google.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, linux-sparc <sparclinux@vger.kernel.org>,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arch <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 Mel Gorman <mgorman@suse.de>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 linux-xtensa@linux-xtensa.org, Paul McKenney <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Greentime Hu <green.hu@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nick Hu <nickhu@andestech.com>, Linux-MM <linux-mm@kvack.org>,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/24/20 10:27 AM, peterz@infradead.org wrote:
> So my current todo list is:
> 
>  - Change RT PULL
>  - Change DL PULL
>  - Add migrate_disable() tracer; exactly like preempt/irqoff, except
>    measuring task-runtime instead of cpu-time.
>  - Add a mode that measures actual interference.
>  - Add a traceevent to detect preemption in migrate_disable().
> 
> 
> And then I suppose I should twist Daniel's arm to update his model to
> include these scenarios and numbers.

Challenge accepted :-)

-- Daniel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
