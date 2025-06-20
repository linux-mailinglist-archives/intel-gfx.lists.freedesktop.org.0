Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E201AE1DA3
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jun 2025 16:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D3D10E057;
	Fri, 20 Jun 2025 14:41:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="KBqRHj7M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4667010E057
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jun 2025 14:41:49 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-736f9e352cbso1178616a34.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jun 2025 07:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1750430503; x=1751035303;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8KT4DQcewRXgTOMNaBYIe1ub0iebCscNnZe8/5h5B18=;
 b=KBqRHj7MMiSkH+p4z+vEBsUlqzMCyh8RO57XGOBjfsfG83blDDFt4i6qB17jgGjQJJ
 CjUgkkzqh7B3NCeHXupmpTa5kYwuMBz9PwpZRRZrLDJQCb77pAwnVHXy3hiXRWnM7Ldh
 dYOfkU4KjOmvo/7NSJ1dEJGnlAkievdCN1Ors=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750430503; x=1751035303;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8KT4DQcewRXgTOMNaBYIe1ub0iebCscNnZe8/5h5B18=;
 b=lgEo4LJZB/rdKDMlIUlJBON47zCcfh3aeYiZcTd63uSbrff/PemOUwBBFe6VDei38p
 D/XYY6IvTQQzBFVigWvsvto9Gld5P7sVYF8L5L37vPOUrGv576olJMN/aSnnWn2oQPGE
 X3ZjtA37kEev/zvy0fPC/1DGs4O5DwW+VUciWypfURH6x1AfeYNuRMDaAzylhnfONmYs
 T/e3T6xQDJUTIvx/eHBi5MszEl80gK1o7wnt/KPazLrZx4QPOV1j/10Kapl2frKq8Ef1
 EbW7fceoGSvcilEWX7sOsQ5WUg0nBbgN0E9KVH7xEiadPY7BBBHeHHMHMSI2WEua/A+U
 4idA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4502Hf8PEwalZq7cyOAi0JZyqbCnjPNxNPHZu8Z33QOx5OBCOo5onllYIJAZIWKfqqnVZ2JjHP8s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw4kvqiqJGdRcChJ+N1tMyLCqVqTLL9G93LIQ7gI7rutvIJYAR5
 jtowmWnSIvRRDwgv1Bkx69yIQdO3x/uGGKUFowLuvcK23FLiCkmNGiIXfYI45Fif2A6oQfydpe/
 55QuXtXJN
X-Gm-Gg: ASbGncsg7qTrhUFBEMm9CLRpcimyufjGJguAs3xzNXAk9hnE3NrhF0IQtw25f/61FmE
 onRt9/OVYxZm8qOswbmizFBkS+SNvNe2VlK7MCN5cy84ib1lOWxIoJ+XTfP6mV2RlqB/BNL6wIT
 m+9nf9wm4EE7wWNXfbmoQ4df3OLc+newYD2pQM7sZ5Fh4pb/cHcNz+hRF59JeswRlCxF+XMcI46
 1vAZ9g/092PpnvE4qLCvC9m9JMhW3UhwwUp+19os5CzPbNeOmUWmYqmrPOtkcKIVCqya3zEfbgq
 SsLxvNW4eiN+g+t10y0E/I7DbliDzyM5qTJ4c2YD0mb0agW8z9HK9fb5lBWW8xUW6Ur/gxQwg1v
 BKY69yMPKcRRFAk4THoKNKbcKmRQ4ww==
X-Google-Smtp-Source: AGHT+IE80UZIpJbguSSf4UEHfg8atdkWsB/2QgrhhkecaCkrmPr747rgBnitEhCTSVOAK8OtsXHHSw==
X-Received: by 2002:a05:6830:7315:b0:739:fe21:42ba with SMTP id
 46e09a7af769-73a91d7367bmr2039283a34.22.1750430502975; 
 Fri, 20 Jun 2025 07:41:42 -0700 (PDT)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com.
 [209.85.167.175]) by smtp.gmail.com with ESMTPSA id
 46e09a7af769-73a90aee28dsm343688a34.9.2025.06.20.07.41.41
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Jun 2025 07:41:41 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-408d7e2ad03so1379586b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jun 2025 07:41:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWFV4w8pFbPYb9+v2oirYGOcMuOcJmZQR9o5Zd1S6mpDSZDA9rz2Hc9QC8dFs/4KyJaUd2igZbS1D8=@lists.freedesktop.org
X-Received: by 2002:a05:6871:4195:b0:2e9:9e9:d94b with SMTP id
 586e51a60fabf-2ef0094c0cbmr2001638fac.39.1750430501165; Fri, 20 Jun 2025
 07:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250402174156.1246171-1-jim.cromie@gmail.com>
 <20250402174156.1246171-29-jim.cromie@gmail.com>
In-Reply-To: <20250402174156.1246171-29-jim.cromie@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Fri, 20 Jun 2025 10:41:03 -0400
X-Gmail-Original-Message-ID: <CAOw6vbJwbvcVARNmx3O7mTbOr+A_Vo_DaUXFfN8HFFLqdG-VPQ@mail.gmail.com>
X-Gm-Features: Ac12FXysVBlI9m3EGLlNcwPGQBWhWDrHdfE7f5KsOCiBBCH_bJGVrs_uGmTAM7k
Message-ID: <CAOw6vbJwbvcVARNmx3O7mTbOr+A_Vo_DaUXFfN8HFFLqdG-VPQ@mail.gmail.com>
Subject: Re: [PATCH v3 28/54] dyndbg: restore classmap protection when theres
 a controlling_param
To: Jim Cromie <jim.cromie@gmail.com>
Cc: jbaron@akamai.com, gregkh@linuxfoundation.org, ukaszb@chromium.org, 
 louis.chauvet@bootlin.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 daniel.vetter@ffwll.ch, tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com
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

On Thu, Apr 3, 2025 at 9:48=E2=80=AFAM Jim Cromie <jim.cromie@gmail.com> wr=
ote:
>

\snip

>
> -static void ddebug_match_apply_kparam(const struct kernel_param *kp,
> -                                     const struct _ddebug_class_map *map=
,
> -                                     const char *mod_name)
> +static struct _ddebug_class_param *
> +ddebug_get_classmap_kparam(const struct kernel_param *kp,
> +                          const struct _ddebug_class_map *map)
>  {
>         struct _ddebug_class_param *dcp;
>
>         if (kp->ops !=3D &param_ops_dyndbg_classes)
> -               return;
> +               return false;

Return type is struct _ddebug_class_param *, should this be NULL?

>
>         dcp =3D (struct _ddebug_class_param *)kp->arg;
>
> -       if (map =3D=3D dcp->map) {
> +       return (map =3D=3D dcp->map)
> +               ? dcp : (struct _ddebug_class_param *)NULL;
> +}
> +
> +static void ddebug_match_apply_kparam(const struct kernel_param *kp,
> +                                     struct _ddebug_class_map *map,
> +                                     const char *mod_name)
> +{
> +       struct _ddebug_class_param *dcp =3D ddebug_get_classmap_kparam(kp=
, map);
> +
> +       if (dcp) {
> +               map->controlling_param =3D dcp;
>                 v2pr_info(" kp:%s.%s =3D0x%lx", mod_name, kp->name, *dcp-=
>bits);
>                 vpr_cm_info(map, " %s mapped to: ", mod_name);
>                 ddebug_sync_classbits(kp, mod_name);
>         }
>  }
>
> -static void ddebug_apply_params(const struct _ddebug_class_map *cm, cons=
t char *mod_name)
> +static void ddebug_apply_params(struct _ddebug_class_map *cm, const char=
 *mod_name)
>  {
>         const struct kernel_param *kp;
>  #if IS_ENABLED(CONFIG_MODULES)
> @@ -1266,6 +1288,13 @@ static void ddebug_apply_params(const struct _ddeb=
ug_class_map *cm, const char *
>         }
>  }
>
> +/*
> + * called from add_module, ie early. it can find controlling kparams,
> + * which can/does? enable protection of this classmap from class-less
> + * queries, on the grounds that the user created the kparam, means to
> + * use it, and expects it to reflect reality.  We should oblige him,
> + * and protect those classmaps from classless "-p" changes.
> + */
>  static void ddebug_apply_class_maps(const struct _ddebug_info *di)
>  {
>         struct _ddebug_class_map *cm;
> --
> 2.49.0
>
