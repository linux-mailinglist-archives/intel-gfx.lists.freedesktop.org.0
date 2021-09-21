Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D02BF4133BD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 15:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E4489D02;
	Tue, 21 Sep 2021 13:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C716E93B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 10:16:16 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id t18so37567748wrb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 03:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+mToToiV76GTT0uZPsO2DA+us9TfNNQEfYdM3aCN8gc=;
 b=EP8WbERVO011X7zIM0M0S7UPa0CFNjD882eq4g17FpmP8ldS7/uqFb+FCz2+QMb7nq
 4BKsblXqsTXyEJT1gAj8ByYK9mw6z0F2Ku4MsaD1tR0gcvBAxyZ5BPDe0NEJARvoS0c/
 dGwvsyO/yoOJ1Gc8ySez+U+PH6J0MA5HBq6q8NiVuOsfMFRmMLZQGFpjBMMq/xy2lyrn
 odaLmp68B2FUh5Pw/gsUz6LbsbfhhzlbKqZk4j02uvr4bMmY+DymaWcA+SnM9ORiqw/j
 teakcMHdc6L69K99Cwi+86Cx54vIQpx41xpMoF3vVQu6M5JclsWQihj7+at9MGzC3gd7
 VHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+mToToiV76GTT0uZPsO2DA+us9TfNNQEfYdM3aCN8gc=;
 b=kfUTUFMEnTHIDuCC9Ij3rjKYJGnJJWlhCL09mWBrz3mYEQNpkpFUAdXeRpo0Q8BqE8
 RCzbBqcRT+D4YWN5CwFv8Gj/WGNhuZNfF1kpIOWKRvdqsATgK7p5mJ3gd2x+eHLLOljN
 /Ci6Iraz2uCc0fJ0EHqzDDgQF8HR0vSor4LRhdVFRaeLA3+/Z3kAQKzJX3EOW+rMFx0V
 ERKH1+48pQAS+mfDpsTd2+hFOtC4WLxMk4fYVg+FzCVN5VN41zKbpQLwpb4dfhIjwaSL
 VYMRvC/XidPnl/xyRgzKSPSOdBLvaVNq3w7jizZ31JRR4jLw9Q/rF2mv3ikcFj1HKKGE
 yEBw==
X-Gm-Message-State: AOAM532TlnrgSxohaYzsE96HpaALzXzpH7EYLaEtzReXBLyckFubAvnh
 8oQYD8nNxQrrsYSrgL/adBw3SYhFHq8Jg6DxGdmbWg==
X-Google-Smtp-Source: ABdhPJyn+SQUQfmGF9ACtvtnsvTC5NtZ0BHBi6/gkGEcWs0VQwc6IO6UE3DbOB46uPtC7LXOw2z0E54yE854MyFBs98=
X-Received: by 2002:a7b:cc8d:: with SMTP id p13mr3689472wma.10.1632219374290; 
 Tue, 21 Sep 2021 03:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210920141101.194959-1-lma@semihalf.com>
 <051f4a37e178d11c6dbcd05b5d6be28731cd7302.camel@intel.com>
In-Reply-To: <051f4a37e178d11c6dbcd05b5d6be28731cd7302.camel@intel.com>
From: =?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>
Date: Tue, 21 Sep 2021 12:15:58 +0200
Message-ID: <CAOs-w0J8pd-CE1iu1Bpy-3R20sxa=AJuSQwiRkyrFz0TFLBL4Q@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Lee, Shawn C" <shawn.c.lee@intel.com>,
 "lma@semihalf.com" <lma@semihalf.com>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "upstream@semihalf.com" <upstream@semihalf.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 21 Sep 2021 13:06:49 +0000
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915/bdb: Fix version check
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

- dropping stable

...

> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 330077c2e588..fff456bf8783 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -814,6 +814,11 @@ struct lfp_brightness_level {
> >       u16 reserved;
> >  } __packed;
> >
> > +/*
> > + * Changing struct bdb_lfp_backlight_data might affect its
> > + * size comparation to the value hold in BDB.
> > + * (e.g. in parse_lfp_backlight())
> > + */
>
> This is true for all the blocks so I don't think we need this comment.

Lack of such comment was probable cause of this overlook.
As this is an example of the consequence (bricking platforms dependent
on mentioned conditions) IMO we need some comment here, or this will
probably happen again.


>
> >  struct bdb_lfp_backlight_data {
> >       u8 entry_size;
> >       struct lfp_backlight_data_entry data[16];
>
