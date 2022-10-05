Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FFB5F57C6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 17:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468F010E6BC;
	Wed,  5 Oct 2022 15:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A5810E6BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 15:48:26 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id bp15so12666964lfb.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Oct 2022 08:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=lrmmRj5M1EgBV1gOGWR7N44Rk++ODhxPMb8PNf6pY8Q=;
 b=B+eQgMAS+EywSFZ1HjF4G1aZjLApSTq6RJisnw5+3gbfXWRezuf2N3LGSlmkwu+stO
 J6+cswxQFYDpDbjMgB08eiFNYDfDvsLb/svVINVthGPK3F4LCD/vdQ9Ch8E1Zb5E4sqS
 vbw1WuOETfofxFq2ixvbCQgM7SLkmOcSPiIHPko9S+qylzTgRqq5kpPani4E6+GGTA6A
 JeMOPLwVQyTSuYO1Qwm3tPrq/wBGCOu92Wo0OJ+J5+qRh851cMpyMPZUd7tGxzLoStAX
 +Wb8M9o4Nw1KAUki+E6WUR8FJ3o3rgF/pUp6l5BtS4fur6tLW2P282MrdwrFP4CflnSA
 wcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=lrmmRj5M1EgBV1gOGWR7N44Rk++ODhxPMb8PNf6pY8Q=;
 b=0wAWTzUH6gw8QalKtNkP4A/TyyodzIPwD5GhZYd3HQxL+wGty+E3tI5zFlAe2PwJ+X
 cyXdJ2cxFW78aNbx0/tmpcwonsQU+0d5xAlka/8LGpziVi/Ve9tiYRLvL4K+TkIwzoXj
 FwGY21juuj6F8dvzxjemH/xFx7g7nfWH1nSqc8BdtQQq4Rz71HojpD+ponnujfCdKS79
 nP5zdMkdIOHBf4OHcsqt8jvfnNt0T6EaAMbXmdYg9anKIu9TENW8klyJBsfzXEGFmY4s
 MVx9iI27yX4z7HyApWrI6eMkeFZCpU7yCWAhf2TPxWjig4mI3i3ZR77Odk5FN+JaXauP
 IlgQ==
X-Gm-Message-State: ACrzQf05MPlf+m/6l1jvnpx4yicSASdJs0QoeuXe+OuoOdL6RqGgj8mi
 D5/bKl2v+qYFOUVNfe5aR7B4VJ60Hd1HLadyHtY=
X-Google-Smtp-Source: AMsMyM67CZg+ey35dtwQRGsFY0R0usQYTBZ5ql4VBv/R45AX+XjfUTeqF9dVqsGDYYJLZ5QSSKO9kctBtMHLJCQRl4I=
X-Received: by 2002:a05:6512:25a4:b0:4a0:547a:b29b with SMTP id
 bf36-20020a05651225a400b004a0547ab29bmr149673lfb.469.1664984904963; Wed, 05
 Oct 2022 08:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 5 Oct 2022 16:47:57 +0100
Message-ID: <CAM0jSHOBi9qXUT26OvYiRe7Et+5VKkefNMq5y4JYoj-rNVKuMw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Extract intel_mmio_bar()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 5 Oct 2022 at 16:42, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have the same code to determine the MMIO BAR in
> two places. Collect it to a single place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
