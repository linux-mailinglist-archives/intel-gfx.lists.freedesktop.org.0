Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCDE2D545B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 08:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494F66E9DE;
	Thu, 10 Dec 2020 07:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB506E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 07:11:53 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id lt17so5869800ejb.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 23:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=HyekjdljxmRoEbDFQy2vKCMoM2IOaYgqJJEmrMWOeEc=;
 b=bwnc8lrQu0X6wUF1+N8EudDAWBoF6tVd9L2Wl1/6duxXA1+FLVX4qw3xiibfHp4RZH
 T+62bZUs+/d5h/wcRposG7aZVwJv6u/089qcRfd+T5IM9Mti5xo8CsCq78E3vg8I/HER
 +3xV6RZ8P4h0qLziQn+AsFVO8DDuFI6G/lhNcYF/puTp831Gq8xHRLxvCgTt4AiQPgEU
 oGb4qovlfC0uNp3dom/YGN1EXOqiJtqVy+XUATXPQdydzf9pLB2Yd34edQrbPYQUCQqd
 j94LCwK1wdIq49KURfzlxpGudsK1HM87hNGQM+vAsRTHrGAIq5TEDtHBSJiX7+hl2PWM
 EapQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=HyekjdljxmRoEbDFQy2vKCMoM2IOaYgqJJEmrMWOeEc=;
 b=B+1wYLO7v9trDZjT4MeMyuNArVblRUHIKakqMQg4BVjZdwaS7DAM1fLc6Qy2IXWya3
 q4d0XxUQFyEfYVi9amjFjWJdnECQxbr9QRDBPQVV6Lxw4al/WNzaidUShD5ylgLp0Qa0
 DnPU+5lo04jFP2s84UMBQW4rpkk4A0uK/YKpQwkhGbQMtN5Ou7gCJgEDFXdo8z63n4V2
 6u6RNpH+ZOQNjaqWsYAuxLLWzREk06GzPnfhwu4+ADop36dOKY28HYOCpbKY1HQNCqCD
 9tBXaAj+DWoNozlRP0T7pKvw8dljnsxNrtx2JvSqG1FlaBOVZmadtjQfIiq/v1If6tw/
 xEmQ==
X-Gm-Message-State: AOAM533SMVJEN5+jlYH7WNLaDKbIk6tNG0dzcB8SpwLR9JpHOt+02gQ0
 IPM7d9SEY9+YE9Pm6dytHwiuAGhXL4L/t4eipey+4kZgsdRuMg==
X-Google-Smtp-Source: ABdhPJwjAW8+uvqL9aUMWcmg7W4aQREKZR8/UtVzI8AfaIuKPlmmwR0CsdnxGdROR3L+J6T3G0oINSueMyBBFzsx6GQ=
X-Received: by 2002:a17:906:ae55:: with SMTP id
 lf21mr5151909ejb.101.1607584311559; 
 Wed, 09 Dec 2020 23:11:51 -0800 (PST)
MIME-Version: 1.0
References: <20201210041755.29088-1-airlied@gmail.com>
In-Reply-To: <20201210041755.29088-1-airlied@gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 10 Dec 2020 17:11:40 +1000
Message-ID: <CAPM=9tzo+p318geTdDc3d=6ymO=vGLd-vzPjT3fj7UDhLe-UzQ@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [RFC v2] refactor intel display a bit more
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are all in this branch
https://github.com/airlied/linux/commits/i915-display-refactor

I moved more code in the skl planes patch and move some pipe code in
there as well

Will repost those tomorrow most likely.

Dave.

On Thu, 10 Dec 2020 at 14:18, Dave Airlie <airlied@gmail.com> wrote:
>
> The first 3 are just moving some functions to inline and fixing
> a wrong comma, the next 4 are cleaned up from yesterday.
>
> hsw fdi is definitely a WIP.
>
> Skl planes migration is along the lines of what danvet asked for.
>
> Dave.
>
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
