Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0BBAD2ACA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 02:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2133810E1A5;
	Tue, 10 Jun 2025 00:06:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="W96ERgot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EEC010E1A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 00:06:25 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-74267c68c11so3847327b3a.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Jun 2025 17:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1749513982; x=1750118782;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V9szjAXGTYm8mZ2efiHdEJmH2XWeTxRw2f2AU7GDu0Q=;
 b=W96ERgot8lmxGUXRIBnDOPEKhRHxy03iQSy8gpO8mB1ht0rl5Sul/8ujPTSBCwRnEN
 YrAUzR0p4dr38ljSiGe5MQXBR5tsmnqnWZ9P6s6fCWs8OPZgKNOqym0hoJ7W3VzgwCdb
 KMDd/PFORbuKcPNDJLkzLwpyImziCVu+8sH5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749513982; x=1750118782;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=V9szjAXGTYm8mZ2efiHdEJmH2XWeTxRw2f2AU7GDu0Q=;
 b=iyrlTXQUSDjQaPnPV/ucF+4Df+aviJxZ/x/WseuC7Bngkrj3N78YOr65OFPiWO2chu
 JOw+6itmC9In1WVa6ZJXJRYX3MQpLWq3Fw/LmZMa9lss07333aKz5jwBRvVZ1lzeynZ9
 9sUEcatgJDe0Nmo9PX324zcV9C7oomuBYJqjL75oKYShbJ+lKeb8SVhvPXcuSAHjP6LS
 rvKgLXJihj24EPLErg38snsRC/FNWTEU7PvdM6nvvs0BU+38o1Vmxzz8hgyPskiD49bR
 lbfR2NcEynJsv6y+4a3BwNV0WTf+Fo/C1WYgLdUuyTGxZkEvNEJEJAMsl3MAYTNM2opy
 KTLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7QDzoqk/eZz4HokEP+0OinY+wu9z6chGkMTNP4eIiAEOiTZzATZ6SCOR/wMtTqjnNkE5byffbBlM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxiiUOXsoj2yuXjp4UOVkyr+9ldTk4dTQFs8VvgoeEdeYoR9AeO
 Od9Q7pQR4eIphJ1IBbZAPM5Z4BLaUQqcMMS36Vi9+B8wkx4EXdOCHjs9wXnPor68j/acQv+Tt41
 LYQf5Nw==
X-Gm-Gg: ASbGncuREP1ViuvzkFbQarZWFpH6Hgud/ZpurgTPwkbAJtJ5c6B3Ycap1kQpCmZLo04
 GK8F7utMs7l8Mo23As23x/2gnYjPL/12nzS2qMj/Q+6Gga0IGfqjAU/bjqfOWo2YQHD1quadUUl
 fAd+nqjv4NBCMzZZxikqTteNe6Al9L65/TfitatwhOrd8rJURswfSO/XVV/NeoE1x8jRA87X1uf
 USqf5cHlGHamG8kmyCQjXlOgty1iVEIHLbrT9M0F4LNpYMSfXnVfHKz1ROjNMryMa9sZXlEZBaY
 Bc+ySxAsi0Uz9+PP75QgRh8343kEo84gQ9NvnSS31VkzUgGAE9E3iCf+rLjzpZmdbQ3GpAcA5Uf
 wcL53/hljs5g0ttx0cr+mHtSISUB7VA==
X-Google-Smtp-Source: AGHT+IF6ofv5V3sygVqn8myuCBD8OAYyJo2JofFSQIhnlBVey8s/D29GPDRZ0IV8H/R34znO+49MuA==
X-Received: by 2002:a05:6a00:14c2:b0:747:ab61:e4fa with SMTP id
 d2e1a72fcca58-74827ea5744mr17708756b3a.14.1749513981946; 
 Mon, 09 Jun 2025 17:06:21 -0700 (PDT)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com.
 [209.85.215.182]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7482b0c00d5sm6255660b3a.120.2025.06.09.17.06.20
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Jun 2025 17:06:20 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id
 41be03b00d2f7-b2fa3957661so1472412a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Jun 2025 17:06:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWWrw3IQR4OHp3YwaWqUMq6bOAXrguDDOI7qH1OYsOULBkKmw2x2RPLO8aPrqaMQ6MfHEddgwMI4hM=@lists.freedesktop.org
X-Received: by 2002:a17:90b:1c08:b0:313:287e:f1e8 with SMTP id
 98e67ed59e1d1-313472e5d83mr20241033a91.8.1749513979339; Mon, 09 Jun 2025
 17:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1749199013.git.jani.nikula@intel.com>
 <1ed7cfca02f8cf14347dadfe027197dc15791383.1749199013.git.jani.nikula@intel.com>
In-Reply-To: <1ed7cfca02f8cf14347dadfe027197dc15791383.1749199013.git.jani.nikula@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 9 Jun 2025 17:06:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uuim4rO+dT3Yn=h0Dm4oawiMe9qfZfWt6yYMid3Y-_2Q@mail.gmail.com>
X-Gm-Features: AX0GCFufPSMlD42_Fj7Ceof7c-3jjE7ncGbUStK-hA2kgWz6xtQg_ijM9varnUs
Message-ID: <CAD=FV=Uuim4rO+dT3Yn=h0Dm4oawiMe9qfZfWt6yYMid3Y-_2Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] drm/panel: use fwnode based lookups for panel
 followers
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Wysocki Rafael J <rafael.j.wysocki@intel.com>,
 Lee Shawn C <shawn.c.lee@intel.com>, 
 simon1.yang@intel.com, Maxime Ripard <mripard@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>
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

On Fri, Jun 6, 2025 at 2:06=E2=80=AFAM Jani Nikula <jani.nikula@intel.com> =
wrote:
>
> Use firmware node based lookups for panel followers, to make the code
> independent of OF and device tree, and make it work also for ACPI with
> an appropriate _DSD.
>
> ASL example:
>
>         Package (0x02)
>         {
>                 "panel", \_SB.PCI0.GFX0.LCD0
>         }
>
> Suggested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Doug Anderson <dianders@chromium.org>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_panel.c | 39 +++++++++++++++++++++++++++++--------
>  1 file changed, 31 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index fee65dc65979..3eb0a615f7a9 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -473,17 +473,40 @@ int of_drm_get_panel_orientation(const struct devic=
e_node *np,
>  EXPORT_SYMBOL(of_drm_get_panel_orientation);
>  #endif
>
> -static struct drm_panel *of_find_panel(struct device *follower_dev)
> +/* Find panel by fwnode */
> +static struct drm_panel *find_panel_by_fwnode(const struct fwnode_handle=
 *fwnode)

nit: It might be worth adding a comment that says it should be
identical to of_drm_find_panel() since that has a much richer
kerneldoc that talks about the corner cases.

>  {
> -       struct device_node *panel_np;
>         struct drm_panel *panel;
>
> -       panel_np =3D of_parse_phandle(follower_dev->of_node, "panel", 0);
> -       if (!panel_np)
> +       if (!fwnode_device_is_available(fwnode))
>                 return ERR_PTR(-ENODEV);
>
> -       panel =3D of_drm_find_panel(panel_np);
> -       of_node_put(panel_np);
> +       mutex_lock(&panel_lock);
> +
> +       list_for_each_entry(panel, &panel_list, list) {
> +               if (dev_fwnode(panel->dev) =3D=3D fwnode) {
> +                       mutex_unlock(&panel_lock);
> +                       return panel;
> +               }
> +       }
> +
> +       mutex_unlock(&panel_lock);
> +
> +       return ERR_PTR(-EPROBE_DEFER);
> +}
> +
> +/* Find panel by follower device */
> +static struct drm_panel *find_panel_by_dev(struct device *follower_dev)
> +{
> +       struct fwnode_handle *fwnode;
> +       struct drm_panel *panel;
> +
> +       fwnode =3D fwnode_find_reference(dev_fwnode(follower_dev), "panel=
", 0);
> +       if (IS_ERR_OR_NULL(fwnode))

nit: why IS_ERR_OR_NULL() instead of IS_ERR()? The kerneldoc for
fwnode_find_reference() doesn't mention anything about it returning a
NULL value in any cases...

Other than the nits, this looks reasonable to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I no longer have any easy access to hardware where panel-follower is
truly necessary, but I can at least see the panel-follower calls
getting made on sc7180-trogdor-lazor, so the of->fwnode conversion
stuff must be working.

Tested-by: Douglas Anderson <dianders@chromium.org>
