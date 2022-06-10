Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1605468A3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C7310E10F;
	Fri, 10 Jun 2022 14:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DA7112070
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:44:56 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id o73so15064486qke.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9S3KDYh5IcYFK3VHMyo8DAmNrX4uOR4soe+794DdJiw=;
 b=Zh0WUhush4/FpQ33SsQvzoQOdVms4xa8MFqH44szdxvVxKoveW4PBYvtcEFhyWHTMz
 Ud4D7ZvVsMoyd0034/X+TjK6tgs8pQ3ZYwApogmBqqVWqajyv9CAxo14jelOH7uMBUFO
 BNTeik6ItzIp2GUrLEMAa2gqtbR4lzxXbLIGtdYI9haZwkMFjFm9j/puJaEYKIFzIUGK
 s7IHO06/fSxyhFiqv7XoHDOzNsKl+nwYLXTlJE3KgsyqEeYx9m2vpuFjf0T6EAwYW6O/
 YMcatAm+QSggxep39Bz99lxqgERCm+AsI00aMdY2A1o/heRAVO8SAK6FxP8t253iYdrA
 5Odw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9S3KDYh5IcYFK3VHMyo8DAmNrX4uOR4soe+794DdJiw=;
 b=Z4r5U1m5M728XyyuTZhhaVuceO0hJtPqCv8O8QPaJUccd7m/l+P4zubse/K67Tpg6L
 LMDYFkKqXZAMHUqJx02CsugdlIRg96G9jIfgwr62U0UYVqRGDczTGHYq0vgiwPabRMcq
 3ZgrNtwhlvB4Li2dr/0IL1FssdZUJAVfgJC1GnTAWBuLT2GWgEZfKmEPlpXN4MktNkQ+
 G8eChF0BV1DmfN/cGB5nruJD8rwoInh65qLWdvtJxmkNSCeMjd5Q+kFYJSyG76ozVR5f
 VMxq/SqJDyw4QVVK1YQ40ePLb7FkDomhhoBSFz4x5/JmaQa/zA2gYjqRfMAoLINdrWpd
 NEEQ==
X-Gm-Message-State: AOAM5311eEX4vaEjfj+ffxOgOaio6JXqjRa2bl0rcDaZrCjDJN4EFFAl
 nQmcmNkjPF7QIdYhztqPJDE65GXTVmH2nVKMSJU=
X-Google-Smtp-Source: ABdhPJyUlSJAZN8MYsck+Qx73rJ/9yrOcJh1Rjh95dJGsPxh/YBLFwrO+9bS8CP1JvgmmHEgRmhOvQO5X0VBPiXtBrs=
X-Received: by 2002:a37:c53:0:b0:6a6:bbe2:685a with SMTP id
 80-20020a370c53000000b006a6bbe2685amr17850954qkm.519.1654872295384; Fri, 10
 Jun 2022 07:44:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jun 2022 15:44:29 +0100
Message-ID: <CAM0jSHMr2a_6QWqrzuykSsK7eBsvdyVy_V=dXO57=0sPvnEZwA@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Add smem fallback
 allocation for dpt
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> Add fallback smem allocation for dpt if stolen memory
> allocation failed.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
