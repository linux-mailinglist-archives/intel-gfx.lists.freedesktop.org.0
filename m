Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9156F274900
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 21:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75CF6E8D8;
	Tue, 22 Sep 2020 19:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A0B6E2E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 19:22:41 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id o5so18301548wrn.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I3TzcxT+agQSzXap31GmXBqpQ5l+VuHWFFx46ZHwwbk=;
 b=0/AizksPP03va9xtTssFRnX0Nfgr7YhRF6a60XPsQPz+YAg6xKJPbUiqNqcJQCrpCJ
 L21Q17H64vLFWtNoNGlS9OFFKfMtvaekSfmjKWajS+pnMmS7Z5Ker0COQk+f5gFfrGkv
 HKz8d+SL7byDfnGFj4FZDz85iyVQXJ5NAq9Jt8H/FBDtjBleZ5w048dhAwivsMwOSTwm
 TX/XL/dF3vDxLvEG2owC6aa4rgMMR/++gZ4uBaaMoBXQT4F1n8YYhTNMqmJwjM3dTjj8
 OhyayKxwX2aV/YpnW7znBPqnlbktcmx4FweomQq+ZOXQGpweKmQEScJ7O9sbcM5aHKqP
 65zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I3TzcxT+agQSzXap31GmXBqpQ5l+VuHWFFx46ZHwwbk=;
 b=pP0vmhSYO8D32hW146lcj77+idLDsDy7YT93d7Vjsz3aHQrPonp4UGK6ExIK3kl6Wg
 hqZLLHG6CN2I04tqSQKp+bfoptzxzb3c4o3n4J96WAiG64QGhwPclA2+QOUv82Q7MXdZ
 pLPG6msB33fgPZUyr86i8IyY3z8WPOofYabCT3TYjIE/2BJ7dgq3OpwS+RZ/6RH+bPP2
 q2tvcjgtkaLTv5XLQcUlVEu0KqzKwFz2FifPgo3/KNF1EkdjAo6vDJ4zDoaSfERkAjad
 03lycEntf+/SIv+3guVgsCvUDo3JfJW1FIC+VD3fVs9jHrJEUmQxFCxtdai80ibkxV24
 8CMQ==
X-Gm-Message-State: AOAM530h51VCzXip3UmY88tCMa0lGMNjKJvCyMTotlMup8+r5JPRYBNP
 b4GvZzvbyZGcD/JQFXALa4/z5255Sz+RIKl/CP3ycw==
X-Google-Smtp-Source: ABdhPJyOWSJqfljRuC2AmZxTrv6cdELKH1mZZGRhKl+KB3PwLlQsNSaHT7K6ID4ys3oDH2QukhpyqqmVrOQGGDMuPBY=
X-Received: by 2002:a5d:608f:: with SMTP id w15mr7005612wrt.244.1600802559703; 
 Tue, 22 Sep 2020 12:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200922181834.2913552-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200922181834.2913552-1-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 22 Sep 2020 20:22:28 +0100
Message-ID: <CAPj87rP1uBqhhBfJ0phSaOfoAptauTmeOkk_uD-N2kCCnH=_tw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm: document and enforce rules around
 "spurious" EBUSY from atomic_commit
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
Cc: Simon Ser <contact@emersion.fr>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 22 Sep 2020 at 19:18, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> +       for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> +               affected_crtc |= drm_crtc_mask(crtc);
> +
> +       /*
> +        * For commits that allow modesets drivers can add other CRTCs to the
> +        * atomic commit, e.g. when they need to reallocate global resources.
> +        * This can cause spurious EBUSY, which robs compositors of a very
> +        * effective sanity check for their drawing loop. Therefor only allow
> +        * this for modeset commits.
> +        *
> +        * FIXME: Should add affected_crtc mask to the ATOMIC IOCTL as an output
> +        * so compositors know what's going on.
> +        */
> +       if (affected_crtc != requested_crtc) {
> +               /* adding other CRTC is only allowed for modeset commits */
> +               WARN_ON(!state->allow_modeset);
> +       }
> +

Can we please add a DRM_DEBUG() here, regardless of the WARN_ON(), to
let people know what's happening?

With that, R-b me.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
