Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A77A31A0099
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 00:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2C06E290;
	Mon,  6 Apr 2020 22:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7220D6E3A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 22:08:21 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id p14so1413182lji.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 15:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i6EPio+XqTmpQjx6tkaBsOwcW96ts+qCKKJEhZ/lpb4=;
 b=S27HT0kRUdBCzrJLgfx+SkwGDQLYpyIto7d00PNS7hLwxJh/ClU0q1RlYyaint7PYr
 HUonR9NLwPPWfmIGavWmeBmH5R0xosim3Sswl1hErVIjwQ3qvL/VjzxSoHyv9tPwSzxz
 43RHm7N7zOlDDjw0va+5fGlq7y/gA3QUxAd+srWFYsuEhwBdmSxX6Gj2vO9J8lL5RWPd
 HKe2lFSF609Iu1Mg6qKk6/2fX7TckJZ+FHmIpVFXKzE19TD26DVX/E/A58L5XNcEzKqw
 XTqJ7RCFA1+omhgw+jD+g+doai2/qgS7VgjXXRcrnfW0zxehbMHxQTeog3qXHfVODJvE
 ku9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i6EPio+XqTmpQjx6tkaBsOwcW96ts+qCKKJEhZ/lpb4=;
 b=iG0UGw1wAEXHfgKAx4Jy3rOnORAoDLKFiKFSgiieC9BE1IozfgHsiUWF1jul1MitUJ
 FylZEQvr8ChKknTf2og7ttVyyiMdaOlGiwyTSpf9LIR3RURQazn0PBgekI+q4GLKWi73
 RDETwf7KMR0c1Vurz29eMwLwfU/b4NVZa4hKuDnbYCqY9QxNQUqTBk9qoP2VxJDcGU7r
 q+RR5ojs9+7eq+++xwhOa94IQlzgpG/84WtnSCTh5JB38rDr5Y5pnc7zlZYX+AKpOL0G
 CClLpyPJgGlY5aplxHu4mQRtMxIcuV1y8e14t0vjJbGA8pk67okIUH1ruCBnbWLA+45X
 trtw==
X-Gm-Message-State: AGi0PuZxnkwRIWfbjS7F2xO6PSjG19bxpXbnOxTRMO6CIMoObFDcGVcc
 xSgdP6YSboH8TEMqXi3S4owHFsHjvNCwwPfV+sbgtA==
X-Google-Smtp-Source: APiQypJutuComtXjTAg4KhcKwjrBIchyTWTtR4JrsI2316VMEl8qDs4azgKK5SaZ74yqUigstDXM5vPRH7iEL3UdZBM=
X-Received: by 2002:a2e:9616:: with SMTP id v22mr779863ljh.107.1586210899428; 
 Mon, 06 Apr 2020 15:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200310000617.20662-1-rajatja@google.com>
 <20200310000617.20662-5-rajatja@google.com>
 <CACK8Z6FsN2WNF8z0OrKv-1sPPwJFeJVYf8taHMZn0QpwLj+t=Q@mail.gmail.com>
 <CACK8Z6F7CZckWP_98h=WERmnDgQL3e65VSiLpaks+biWQ1nk7A@mail.gmail.com>
 <87v9n9n7dp.fsf@intel.com>
In-Reply-To: <87v9n9n7dp.fsf@intel.com>
From: Rajat Jain <rajatja@google.com>
Date: Mon, 6 Apr 2020 15:07:42 -0700
Message-ID: <CACK8Z6FubonFJFts-Ymri8_zdeQJ1OFq3bfrizEXhMPnDXVJaQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 4/4] drm/i915: Add support for integrated
 privacy screen
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
Cc: Sean Paul <seanpaul@google.com>, David Airlie <airlied@linux.ie>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Mark Pearson <mpearson@lenovo.com>, Tomoki Maruichi <maruichit@lenovo.com>,
 Rajat Jain <rajatxjain@gmail.com>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Mat King <mathewk@google.com>,
 Duncan Laurie <dlaurie@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pavel Machek <pavel@denx.de>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 4:24 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Wed, 11 Mar 2020, Rajat Jain <rajatja@google.com> wrote:
> > I got a "failed to apply" email from the patchwork. Can you please let
> > me know on which branch is it trying to apply it? I have currently
> > rebased my patchset to drm-intel-next-queued.
>
> drm-tip branch of https://cgit.freedesktop.org/drm/drm-tip
>
> It's kind of like linux-next of drm.
>

Hi Jani,

Haven't heard any comments in a while, so just checking to see if you
got a chance to look at my last patchset. It is here:

https://patchwork.freedesktop.org/patch/357452/

Thanks & Best Regards,

Rajat Jain

> BR,
> Jani.
>
>
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
