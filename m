Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F153975B5A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA4B10E9EB;
	Wed, 11 Sep 2024 20:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="FWmKulFv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5950F10E9EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:08:00 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id
 6a1803df08f44-6c35357cdacso1324126d6.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1726085278; x=1726690078;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/UenxOqMB8aSc4sONnJe1Vz69L/1xBEXPOvkJcAvqc4=;
 b=FWmKulFvIRkv1A06cAhP+u+gkok19jH7tcjGM6jiUXm+V2II+T7xWh1akKxMZuRFB4
 HQ4l2d9LDF3w6I07yVou/+kSOAR5sNISklW/XYr3Gt8+RIa9oP+tvED2rATCYV6AAiy3
 ZRBqhrHwJk81+XEJdnAaZ1cuql1OpLcHTsRsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726085278; x=1726690078;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/UenxOqMB8aSc4sONnJe1Vz69L/1xBEXPOvkJcAvqc4=;
 b=ZQyEkUSg9EIcgLjRuqHnpQeIraGSR0AR51L3lktxx91BLTcQtstmINSEwKp/iwfm9h
 fr+MOxzhTbpntuMXN9+zERvMdWqrnaJ5zfg7IDiFuZQLNLKBwZfXVb2J/VZGXEtlcZxf
 mUFkJod8k62Widexcxv0v4pXlwdUdRqkt05BdYHNF+KtbOxu97ThcsnqhtCbWq3lRuVd
 Ph8GZv7vfVQXs1BNOsFp/33AS0ZgtT+mLrOSG4hRoQx07sXqdMfawaC/AehsTi21kBCG
 XTFuWd49Ti1uwjBMnBSShlagmzUCoCmV+8QtgKx7AhmTzmH90Bp+rR7JMGNjiwxmSABp
 g9Gg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+pWbwIFBVmuFXcSoq7eNCBYUvwwo+0YGH3peFMI0SrP162TBoCs6N4dbvQK9DA5VObnlDx+QL/Xw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzwsLk8BJ0WxjWwlNj95554w/0kQ3B6OOZAGkxG8suv99EjwI1R
 8eEIZ26CSMBuCbRNX4pcbWJCWqfn661xq5g5SbHrNKSCg93dWi0yf3O2pozumHR9udBICZnhnzs
 =
X-Google-Smtp-Source: AGHT+IGwEHIsXyxtVlUh5nG50eCzEpwQidVignyXwdFuYxEeJaO1AnTo6GqBTbQSg1NUx82+bvZDvA==
X-Received: by 2002:a05:6214:5b87:b0:6c3:5db2:d99d with SMTP id
 6a1803df08f44-6c57355a340mr11189126d6.21.1726085278262; 
 Wed, 11 Sep 2024 13:07:58 -0700 (PDT)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com.
 [209.85.219.49]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6c53433c37bsm45415786d6.34.2024.09.11.13.07.57
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2024 13:07:57 -0700 (PDT)
Received: by mail-qv1-f49.google.com with SMTP id
 6a1803df08f44-6c35357cdacso1323886d6.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:07:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVdSpNyooKTUphB9dkSxihANG2XRQkdnBwllxb5WYkqjvqSu8EDWuzTdNMU6zJTEaVVusmAnPVRPoQ=@lists.freedesktop.org
X-Received: by 2002:a05:6214:5984:b0:6c3:5dcf:bf5a with SMTP id
 6a1803df08f44-6c5735940b9mr13497026d6.37.1726085276966; Wed, 11 Sep 2024
 13:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1725962479.git.jani.nikula@intel.com>
 <136ecd978aedd7df39d1b1c37b70596027ff0a3e.1725962479.git.jani.nikula@intel.com>
 <CAD=FV=XgddDYmOiX1ouQo2ayhJn4GVQrErj-XBy3og5eJ0uBOA@mail.gmail.com>
 <87h6amk49e.fsf@intel.com>
In-Reply-To: <87h6amk49e.fsf@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 11 Sep 2024 13:07:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vi58YipOuyy9uhU=ps=tUW8h33znpjfJW9VigJ-b8nHA@mail.gmail.com>
Message-ID: <CAD=FV=Vi58YipOuyy9uhU=ps=tUW8h33znpjfJW9VigJ-b8nHA@mail.gmail.com>
Subject: Re: [PATCH 4/8] drm/bridge: ti-sn65dsi86: annotate
 ti_sn_pwm_pin_{request, release} with __maybe_unused
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi,

On Wed, Sep 11, 2024 at 1:02=E2=80=AFAM Jani Nikula <jani.nikula@intel.com>=
 wrote:
>
> On Tue, 10 Sep 2024, Doug Anderson <dianders@chromium.org> wrote:
> > Hi,
> >
> > On Tue, Sep 10, 2024 at 3:04=E2=80=AFAM Jani Nikula <jani.nikula@intel.=
com> wrote:
> >>
> >> Building with clang, W=3D1, CONFIG_PM=3Dn and CONFIG_OF_GPIO=3Dn leads=
 to
> >> warning about unused ti_sn_pwm_pin_request() and
> >> ti_sn_pwm_pin_release(). Fix by annotating them with __maybe_unused.
> >>
> >> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused stat=
ic
> >> inline functions for W=3D1 build").
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>
> >> ---
> >>
> >> Cc: Douglas Anderson <dianders@chromium.org>
> >> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> >> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> >> Cc: Robert Foss <rfoss@kernel.org>
> >> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> >> Cc: Jonas Karlman <jonas@kwiboo.se>
> >> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> >> Cc: Nathan Chancellor <nathan@kernel.org>
> >> ---
> >>  drivers/gpu/drm/bridge/ti-sn65dsi86.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >
> > I'm happy to land this in drm-misc-next unless there are any extra
> > dependencies. Let me know. In some sense I guess this could even be
> > considered a "Fix", though I guess given the history of the compiler
> > options that might be a bit of a stretch.
>
> drm-misc-next is fine. Agree on not considering this a fix.

It's only been on the list a day but it's simple so I just landed it
to drm-misc-next:

[4/8] drm/bridge: ti-sn65dsi86: annotate ti_sn_pwm_pin_{request,
release} with __maybe_unused
      commit: 868cd000c19f77e4c25ce87c47b6f951facf4394
