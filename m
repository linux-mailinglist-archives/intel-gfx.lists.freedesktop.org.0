Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B0834E5C6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 12:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80C56E8A3;
	Tue, 30 Mar 2021 10:50:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C15E6E8A2;
 Tue, 30 Mar 2021 10:50:23 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id u8so11493977qtq.12;
 Tue, 30 Mar 2021 03:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fKvsmQgu8TgOOu+JZjwUP3CO4SXVpCnWJrnD9hEF4lY=;
 b=Vx7yhmkKYOXo9JccSgK8bTBdeqRnTtgMXeFLxlazJpiTTWuZ8391DargscYp8YVZ9L
 sUSvhew+py4upK5I3WaHvLb4XxJspzwVH7Fs85Cmm/WOgoV55+3eqPLg6Q0d9Fa/YWqd
 bIpfDdFHQtpuCP/tucuYwJ53NGLKx+u4qU1BzTeiDhhjOb5XY/H2vDz2yq3HBhXk1Huo
 g9GDHK1PaO0OEdJm5Ulz8MV4tCE31w4WLC7aI9H1y3cKHjJrqiyFuXdh+dqgKdTcSaxm
 ONcQ7ErHP+WpW53jM688NS+9hmfjqmtgfRRVLO4njbFwBrNRz7DoDHDhxRsoLW3p3upX
 ixjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fKvsmQgu8TgOOu+JZjwUP3CO4SXVpCnWJrnD9hEF4lY=;
 b=Q06vtWcRi77SrPQievuQmhtEOasen7peky+hb+pRPZEqd9cXifzW5WlCfuq2ThvBGK
 rpPxTy+fWI/Ts69YddUwlt7bgsfHz8w7aaD/1Xpy1EjKiuFrN66NB0KUlbyrf8Pvu4+I
 ivcB1iDZBbYOFe0AOfbpmA3Vx+eQpiT7EAf/+qTocdiL8fyafU6V2eTp5JkeFddrlQHI
 M7XhGkpEem8LhFzgHohNnOxCOsUTMhNU18bMIWBz13MbwkIEo2N7Q8NBwHuZtvNN28Hb
 O8nT6MBw+9vxwHVmI88ME8qXZ9eTnBH9L7FOz/f1EyNA5ANYc4tOzv2l/fGX6u1fHqWc
 W6lw==
X-Gm-Message-State: AOAM530gIGtLTfWVQxnWiiCb4ibt1qAweDKMYfp5fJzjcACYrq9opaXV
 4TRiCJ7dn+VCrzc8GCOhH8IcnPievZjc7CbY900rdf5ZCSc=
X-Google-Smtp-Source: ABdhPJzRLC5XQPKzO/+w/Z/qMQB3Efsof0HdOloX0hjuHBefAeXtKPGjwltrXQUe0s2Z0DOd9Yz2rOkIPc3uo7U8EXE=
X-Received: by 2002:ac8:4c90:: with SMTP id j16mr27042524qtv.223.1617101422573; 
 Tue, 30 Mar 2021 03:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210318162400.2065097-1-tvrtko.ursulin@linux.intel.com>
 <20210318162400.2065097-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210318162400.2065097-2-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 30 Mar 2021 11:49:56 +0100
Message-ID: <CAM0jSHOx2qmW0-BsBZBEGcg2rREGi=2QePymqzfAyQUCKg-Ggw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] lib: Add helper for
 reading modparam values
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 18 Mar 2021 at 16:24, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Add __igt_params_get for simple reading of modparams.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  lib/igt_params.c | 26 ++++++++++++++++++++++++++
>  lib/igt_params.h |  2 ++
>  2 files changed, 28 insertions(+)
>
> diff --git a/lib/igt_params.c b/lib/igt_params.c
> index c06416988baa..1dc6de77b2e0 100644
> --- a/lib/igt_params.c
> +++ b/lib/igt_params.c
> @@ -156,6 +156,32 @@ int igt_params_open(int device)
>         return params;
>  }
>
> +/**
> + * __igt_params_get:
> + * @device: fd of the device
> + * @parameter: the name of the parameter to set

to get

> + *
> + * This reads the value of the modparam.
> + *
> + * Returns:
> + * A nul-terminated string, must be freed by caller after use, or NULL
> + * on failure.
> + */
> +char *__igt_params_get(int device, const char *parameter)
> +{
> +       char *str;
> +       int dir;
> +
> +       dir = igt_params_open(device);
> +       if (dir < 0)
> +               return NULL;
> +
> +       str = igt_sysfs_get(dir, parameter);
> +       close(dir);
> +
> +       return str;
> +}

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
