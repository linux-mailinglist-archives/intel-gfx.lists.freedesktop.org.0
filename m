Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8C8449D09
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 21:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37736E1F8;
	Mon,  8 Nov 2021 20:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1B56E1F8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 20:22:07 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id i9so18278248ilu.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Nov 2021 12:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sladewatkins.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o8BHjRClSpJuHyim6GrcsejudaGr8Cw/4T4p7sF9vJs=;
 b=I0PHIGBEFcwL7JN3pg6MeCJF/kG4qMa4NxysUN1/oS2tbff6W7nw1IlJ4p3ssHNr0x
 FLPw9rKXFvG7t59mqwsdFLPz7XUTKSpVqKV198/8UhtDAhj/FjTyQIs+M+liROA9NpXW
 YSWKX1kZ4WkiWs/t8a05+QFjDNzxtfqhJ2SFULe/yyWO6QgT1ruME+xTMK6qqCm/8rtN
 Y/CzNIdAexyl7DrE+xgD7mEFzVjzHFvqhL7bKAQUbo/b7AW4VjDCfOPgx8V+A9GFXwV9
 95bgsiQK9VvPGQBs0MCjDGYJ7nfdAulXs4loJMm7xNISOfuvswBp66L7pzPt4b6d5dT6
 ks4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o8BHjRClSpJuHyim6GrcsejudaGr8Cw/4T4p7sF9vJs=;
 b=gRm7rlyf951Oau9jodr1KIwa36cfPn/qZXE5l28XBhaIG+tP5Gp2ETNn1/ZfYGSjpO
 K/8G8cMLvjIvsB6SXOThKKogSx4JUAWdtv7E7W90xLMPlWjzUA2lqZ0BXRf1auUDFJH1
 0lPpXRevT82qrBLXnStbxrhFGIiL5aiITHDSCLBlat7dfln1kM2iab/nHaeozyIncnLN
 luuXN8fmCgMZYRNivaqZUZYb2RcOazx6BjtnOBJeyxed+sra2bNB8DykLR9sxzFYLGNF
 rUjEUld0CkT72TM+LPg2T2eWF/fyQu5JmMUUKHUJlpdA7zoBl97iDyxQCYLOtCEJ8cpP
 vDgg==
X-Gm-Message-State: AOAM531GywqllFxbypvVSCse4gIFoReb2xdGXkqj0Ts8qlZOuFGfbUwG
 HA8d1enShc5p3jyuLSGKSQRW3fUIBpDDyf1c09KeUQ==
X-Google-Smtp-Source: ABdhPJy6f6FqWT5AKIyMQ5U++28FpTPyY/6Ss0aSRkioarTKld9ek3F7eObXALEBM1dh6A5CqFzDOrSOgT+RffNMs2s=
X-Received: by 2002:a05:6e02:168e:: with SMTP id
 f14mr1270122ila.206.1636402926986; 
 Mon, 08 Nov 2021 12:22:06 -0800 (PST)
MIME-Version: 1.0
References: <20211108171922.845020-1-michael.cheng@intel.com>
 <87mtme7dhr.fsf@intel.com>
In-Reply-To: <87mtme7dhr.fsf@intel.com>
From: Slade Watkins <slade@sladewatkins.com>
Date: Mon, 8 Nov 2021 15:21:58 -0500
Message-ID: <CA+pv=HMbMUP0zCLAh7_7vVVVxbT_PqM991H0Mjy=SB7WHz8fiQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 0/1] Introduce new i915 macros for checking
 PTEs
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
Cc: siva.mullati@intel.com, lucas.demarchi@intel.com,
 intel-gfx@lists.freedesktop.org, michael.cheng@intel.com,
 wayne.boyer@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Jani, all,

On Mon, Nov 8, 2021 at 12:55 PM Jani Nikula <jani.nikula@intel.com> wrote:
>
> On Mon, 08 Nov 2021, Michael Cheng <michael.cheng@outlook.iglb.intel.com> wrote:
> > From: Michael Cheng <michael.cheng@intel.com>
>
> Sender is Michael Cheng <michael.cheng@outlook.iglb.intel.com>, please
> fix your git config.
>

I am unsure how this even happened in the first place, because
outlook.iglb.intel.com doesn't even have any email related records
(MX/SPF/DKIM), so messages aren't even being received anyway. I'm
surprised it sent from there without being marked as spam, honestly.

That said...

> From: Michael Cheng <michael.cheng@intel.com>
Pretty sure Michael's email here is correct because of that. Perhaps
they could confirm one way or another?

             -slade
