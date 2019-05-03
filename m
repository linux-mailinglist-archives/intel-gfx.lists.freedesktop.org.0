Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCC012A23
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 10:51:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03BD89949;
	Fri,  3 May 2019 08:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE8389949
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 08:51:21 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id e24so5132120edq.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 May 2019 01:51:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=WtAh09ggDNk8Bg++boVrbk2pv8k5do2kf68uyPp426k=;
 b=uXDYvkkboY0ZrofdN02Cy+ikbFWl5/F6+ujq06IRxVTyH8101xTUWVPv0ytpWWUlnT
 W0ro0wsLWpkr0rZzhgGb142qOyaxqVw2o2Ljo+Jc4H6gSrry8wIdBZ+xk/ODHrGvBfYG
 SMXyY8VtkcH/bH/rlDsmkk3vP1Ozzjnr0IjokW9WEkpLNjm8R2q/t77ZMj0KJAHbACMz
 zmokWXUxB8EjN105yhPYmhygL0SLmzKhNwGm95z3Fzp6PEunsr2hMhR+II8TlaYEk8rP
 QKSv9BOwGEyc7HMhBzXj11ujWDmoLvo5VRFEhBNcMdzLZ+Gnc/1fwCMcSH9Hm2vEb9hr
 Kwyg==
X-Gm-Message-State: APjAAAX6V4d78bBeitpQJwNEolwJD4sBn5M/1tiwEw2AGAZvAeRtEHi/
 tGH8CznpXpr4Zer9sAznROnEIEzkmDk=
X-Google-Smtp-Source: APXvYqy1wRJDhuB7iuPdZsd4cRVVrUoPRO8I33eqnmgpGcrzQHL8UvjkGgbrvWI0m2hzJnHKYa3YBQ==
X-Received: by 2002:a17:906:a458:: with SMTP id
 cb24mr3128785ejb.158.1556873479738; 
 Fri, 03 May 2019 01:51:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x18sm254555ejd.66.2019.05.03.01.51.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 01:51:18 -0700 (PDT)
Date: Fri, 3 May 2019 10:51:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20190503085116.GK3271@phenom.ffwll.local>
Mail-Followup-To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dmitry Vyukov <dvyukov@google.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 "Liu, Chuansheng" <chuansheng.liu@intel.com>
References: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
 <20190502204648.5537-1-daniel.vetter@ffwll.ch>
 <7e4ef8c8-2def-5af9-f80e-b276fea8696a@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e4ef8c8-2def-5af9-f80e-b276fea8696a@i-love.sakura.ne.jp>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=WtAh09ggDNk8Bg++boVrbk2pv8k5do2kf68uyPp426k=;
 b=UuHPz4heyl9PST1AnoCUmNlIrCU3I/eX0BuK2lNEqV9TLMa+5i8HJ/b6P8DTmS9Xg4
 kypmMouBYyFwsvJYuuCMjddDZojQ3IDeyLuuZyQ3EeOrMLwg/b5DFEaF6oMSzuovIvn4
 sEpUULXNnExPVs+2ENkZGa2RNVk4LYVjxlRkw=
Subject: Re: [Intel-gfx] [PATCH] RFC: hung_task: taint kernel
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Liu, Chuansheng" <chuansheng.liu@intel.com>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDk6NDc6MDNBTSArMDkwMCwgVGV0c3VvIEhhbmRhIHdy
b3RlOgo+IE9uIDIwMTkvMDUvMDMgNTo0NiwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IFRoZXJl
J3MgdGhlIGh1bmdfdGFza19wYW5pYyBzeXNjdGwsIGJ1dCB0aGF0J3MgYSBiaXQgYW4gZXh0cmVt
ZSBtZWFzdXJlLgo+ID4gQXMgYSBmYWxsYmFjayB0YWludCBhdCBsZWFzdCB0aGUgbWFjaGluZS4K
PiA+IAo+ID4gT3VyIENJIHVzZXMgdGhpcyB0byBkZWNpZGUgd2hlbiBhIHJlYm9vdCBpcyBuZWNl
c3NhcnksIHBsdXMgdG8gZmlndXJlCj4gPiBvdXQgd2hldGhlciB0aGUga2VybmVsIGlzIHN0aWxs
IGhhcHB5Lgo+IAo+IFdoeSB5b3VyIENJIGNhbid0IHdhdGNoIGZvciAiYmxvY2tlZCBmb3IgbW9y
ZSB0aGFuIiBtZXNzYWdlIGluc3RlYWQgb2YKPiBzZXR0aW5nIHRoZSB0YWludCBmbGFnPyBIb3cg
ZG9lcyB5b3VyIENJIGRlY2lkZSBhIHJlYm9vdCBpcyBuZWNlc3Nhcnk/CgpXZSBzcGFtIGFuIGF3
ZnVsIGxvdCBpbnRvIGRtZXNnLCBhbmQgYXQgbGVhc3QgaGlzdG9yaWNhbGx5IGhhZApvY2Nhc2lv
bmFsbHkgdHJvdWJsZSBjYXB0dXJpbmcgaXQgYWxsICh3ZSdyZSBiZXR0ZXIgdGhhbiB0aGF0IG5v
dyBJCnRoaW5rKS4gUGx1cyB0aGUgdGhpbmcgdGhhdCBwYXJzZXMgZG1lc2cgaXNuJ3QgdGhlIHRo
aW5nIHRoYXQgcnVucwp0ZXN0Y2FzZXMsIGhlbmNlIHdoeSB3ZSBzdGFydGVkIHRvIHVzZSB0YWlu
dCBmbGFncyAob3IgcHJvY2ZzIGxvY2tkZXAKc3RhdHVzKSBhbmQgc2ltaWxhciB0aGluZ3MgdG8g
Y2hlY2sgdGhlIGtlcm5lbCBpcyBzdGlsbCBhbGl2ZSBlbm91Z2guCgo+IFRoZXJlIGlzIG5vIG5l
ZWQgdG8gc2V0IHRoZSB0YWludGVkIGZsYWcgd2hlbiBzb21lIHRhc2sgd2FzIGp1c3QgYmxvY2tl
ZAo+IGZvciBhIHdoaWxlLiBJdCBtaWdodCBiZSBkdWUgdG8gbWVtb3J5IHByZXNzdXJlLCBpdCBt
aWdodCBiZSBkdWUgdG8gc2V0dGluZwo+IHZlcnkgc2hvcnQgdGltZW91dCAoZS5nLiBhIGZldyBz
ZWNvbmRzKSwgaXQgbWlnaHQgYmUgZHVlIHRvIGJ1c3kgQ1BVcyBkb2luZwo+IHNvbWV0aGluZyBl
bHNlLi4uCgpZZWFoIEkgcmVhbGl6ZSB0aGF0IHRoaXMgcHJvYmFibHkgZG9lc24ndCBoYXZlIG11
Y2ggdXNlIG91dHNpZGUgb2Ygb3VyIENJLApidXQgbWF5YmUgdGhlcmUncyBzb21lb25lIGhvdyBs
aWtlcyB0aGUgaWRlYS4KCldydCBzcHVyaW91cyB0YWludHM6IFlvdSBjYW4gZGlzYWJsZSB0aGUg
aHVuZ190YXNrcyBjaGVja2VyIG91dHJpZ2h0LAp3aGljaCBhbHNvIHN0b3BzIHRoZSB0YWludGlu
Zy4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
