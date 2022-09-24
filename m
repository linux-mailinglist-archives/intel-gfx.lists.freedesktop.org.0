Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 274E75E8760
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Sep 2022 04:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8ECE89F41;
	Sat, 24 Sep 2022 02:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535B989F41
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Sep 2022 02:23:11 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id h194so1296136iof.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 19:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=9TmhwvAY07VdrCstE9G5wQr019r2EJaS0YHmVjj95EM=;
 b=mVgFyYjO2tk/kpOzkABEHYz9tslGxnmNagxzQfl+MwaAlAOiEWq9k//uk7Rm2dng+/
 0OvFzpqvL0X+pzIHHk+6ctbDHLpr4a27HUpxjA0E+QI5Zkb0qb9dsQhkSmxiKxW1c9kw
 B+FM7Rjs2EH6LKIyiwqE9DgA9XqyA2joIxB1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=9TmhwvAY07VdrCstE9G5wQr019r2EJaS0YHmVjj95EM=;
 b=fzu0bKTgAAvr26dhZ+AXWUCHhgy8gOeF3JOqyayCu3lyDVpfXQ3GWrNXTNAqjbhreo
 KtEtYsu8fPCEREn50DMqSCGgfvvli7E3pA4i+nzqUa2zN0KigdqdBH4mJ9+LPKvlNQp+
 WaPrQZsSqGSeNOlrNA/SfuKe11W5W/WtuewuUSWCYXpPAzxjzWC6b93tPRLN1/epD0vE
 0DAiJJLM02120XkPzvhiYfS7XyDvA69E99U2WjLsiZbNhpHj7WpaDh1dPRQSMQ9CYcto
 /tdknEdZuhaEhTf4kkqNxIoBE4EKsGnjaCYsHUYMtpVQCDLMTZlHubYvETYNT9EjD5Ti
 GcpA==
X-Gm-Message-State: ACrzQf1v4nbktk3xtv0r8i2fYgtYWstk/LsQSggD4rQZodZVyDUkxWRX
 5waQM7SgnkuqDYcHU0s6t0XzLomJdg6vNYvhlmhpww==
X-Google-Smtp-Source: AMsMyM4bQEAmBzWYqQskGplr1wt2l+ADXoBZWeQQvbQIr7qvDsyBtibgByuSqbRVmRP0w8AgXxPvtg4GWmWmicTwIwU=
X-Received: by 2002:a02:94ab:0:b0:35a:d1b9:c71c with SMTP id
 x40-20020a0294ab000000b0035ad1b9c71cmr6030799jah.310.1663986190605; Fri, 23
 Sep 2022 19:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220923064542.415252-1-alan.previn.teres.alexis@intel.com>
 <20220923064542.415252-2-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220923064542.415252-2-alan.previn.teres.alexis@intel.com>
From: Juston Li <justonli@chromium.org>
Date: Fri, 23 Sep 2022 19:23:00 -0700
Message-ID: <CAKhQNHH9k6LxMhV=LZJ_fzHxdh4wb2iVay5__4VPsJiApYPzJQ@mail.gmail.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/pxp: Add firmware status
 when ARB session fails
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

On Thu, Sep 22, 2022 at 11:44 PM Alan Previn
<alan.previn.teres.alexis@intel.com> wrote:
>
> Add firmware status using a drm_warn when ARB session fails
> or else a drm_dbg when the ARB session register slot bit did
> get set.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 3 +++
>  2 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 1bb5b5249157..c4f5c994ca51 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -77,6 +77,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
>                 drm_err(&gt->i915->drm, "arb session failed to go in play\n");
>                 return ret;
>         }
> +       drm_dbg(&gt->i915->drm, "PXP ARB session is alive\n");
>
>         if (!++pxp->key_instance)
>                 ++pxp->key_instance;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 4b6f5655fab5..a90905039216 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -174,6 +174,9 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
>
>         if (ret)
>                 drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
> +       else if (msg_out.header.status != 0x0)
> +               drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n",
> +                        msg_out.header.status);
>
>         return ret;
>  }
> --
> 2.25.1
>

Reviewed-by: Juston Li <justonli@chromium.org>
