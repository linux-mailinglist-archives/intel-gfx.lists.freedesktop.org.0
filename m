Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664FA19DCEA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979126EC49;
	Fri,  3 Apr 2020 17:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841116EC49
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:39:01 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id v16so7820171ljg.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 10:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0K9eZsccyGUqFYcHU/IoIwlTnYYNR7yq7lrMKfDJmYY=;
 b=FKH72XXHJzcFHs7y+nHq6SfiQSNx5cl2T/V6hihSHhw2NdUCTXAWPkrDOsEGOH+02Q
 tXfK1grJm8nUCcEam947N3gD7BOYVTDkcxR6E8GHtPNw60b7rca4NwhtT/Snxpth57Wu
 eYvlY2cBqoZjdsQoYnVZWKsg1GpGDKt3TxjaohTR740GT/F8Qiqk7xFDALo23KtkRqyq
 C8JbuunuAmQ+ubfkT/Pv5bxHfY4U3JBWZUbon0Xc9NXvlrcObKeLfFvWQE5QL2GWUX9i
 Zsv0V7qs2cnOMlbsR3OdBhoRP8teTR/nXS2kZg/aVHbXmVkp4oCRtJaKcT8O6pEhmABD
 3IAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0K9eZsccyGUqFYcHU/IoIwlTnYYNR7yq7lrMKfDJmYY=;
 b=kjCsTs2CH2WeT5IXYJ6UveTHY3TumFgXS4UYDk0SRXVeNsGKwT9sIKIekJVrlp6rPR
 ID60dhzh+hi4UAnQDW10JjABbqeEZbnhyBotmxduzPeihNyFYDt2UkKhKcUEPFQl5l4O
 IksseFRC06+/C1l5JxR5fVLAkycwvWIadw2keM3DfY4kSOwm6lQvVcXDs5fI1ZiS0mv3
 yN4fAYDpW7UQIUR7apPxcLXF1SMsntEDy0SGOxOue8YfDKalCz/CzRQi+Fs9TJjNGp/6
 EAzxm2IgsHOGvGWVzLzpJcPN1avg4EddYk8qqGsTmVnYVxY1rDt4F7BMQUhhS3ugPSXU
 r7TQ==
X-Gm-Message-State: AGi0PuY1eKc42VOivHbj6nfseiQHOK6cMDsl/nYLX1+2vQMnec3mhua0
 CBQXRB050F2OjpBHVyOgUzpu39XxWhssj75YUU+QJA==
X-Google-Smtp-Source: APiQypIKoBdeftEGeZvmr3/GqxkRJdQkQROnMB5wbsUQQsL/E3vMV2vztxxbkFwGtsat4Po4+ffhCGuXhYqHUnN+csQ=
X-Received: by 2002:a2e:9718:: with SMTP id r24mr5144221lji.287.1585935539987; 
 Fri, 03 Apr 2020 10:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-25-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-25-daniel.vetter@ffwll.ch>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 3 Apr 2020 10:38:48 -0700
Message-ID: <CADaigPUwpL=vCf3YrRV9-RpVdGvY=ELopUrVaOri0MZxLZ3thA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 24/44] drm/hx8357d: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 6:59 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Already using devm_drm_dev_init, so very simple replacment.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Acked-by: Eric Anholt <eric@anholt.net>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
