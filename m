Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3653218CCD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A6F6E546;
	Wed,  8 Jul 2020 16:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FAA26E546
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 16:19:49 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id q15so14042136vso.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 09:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7/Y2Pi0TWt4yLpPHNF8eJKnYVRSa5f56GjJA3xqUuQk=;
 b=EDPgCX7/cdl9IZ0jrlSUgWlBZuoFgXtxc1Xy7CgqCvoqrodAOd0arM8JVd1IMKX8wX
 06qOvWGoADz9VNEZ22FOgPCymdLQ8Nrdq9ekTczhON2OiQixKl+Huxs3OKbvn340IKYG
 0+eobP1lz9wFMcvd20BDdLZ0ktwW7RzCfiBiuG0UcIWIhmncbvLK8DgAnQEF7Yclb4Xt
 lZZI/nxSedmcQ7MBnsJRJ8kYOtFfLM/aDiaxdTYoIhBM02P6g7yZYC0DUabL8oetq4R6
 c1aqW0wec6uTwBrpEEHZhARQbpNtb9Rn/+lW/lPAGBgr24e2ZzMChA+C2Y+EX11RHwtg
 AZSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7/Y2Pi0TWt4yLpPHNF8eJKnYVRSa5f56GjJA3xqUuQk=;
 b=LEWqhyO4UoL2nEHgOFyeNA5H14tkqYwKoV0TxnkOhlqo+Ld4KOwq70T6AVSb9rUT9h
 iJz349Jp8MuSEM1R4MB+omvBYLuTmsvmUC9DQ2REm2dZZdYvuuq5C4tFgzz3yWAdddbK
 K5Rn2Dn6EsgIChW0/RGNwOX7DMG3GePj8Yfh/1kp3ywB0C1XsjBfJ/eQ7hEj68SIafgV
 h0HoDn0tQ1obmwuDLPDwtILyVhmE0yVHT9QA9f059tKpsLhchXUFZ8Uup/CcDYiEy1HW
 aAcuOO8f8aLCviJTnyIDl1RtHv1wYaYfMXZfFESTvtaUM9YriNgq0wUUmcL/1G36g/8+
 gVCQ==
X-Gm-Message-State: AOAM532ezKDpO3gAlS1V1VatKe24JwLOxubeGFWgnitZi5Xtf9wjFIj7
 Ccj2uTz48Vl4tGryFjKjrt0Ft84RB11o0Q8FheU=
X-Google-Smtp-Source: ABdhPJwBflOdGeC9PMBcVPOyAGN9ztlyx6YPmFLlX4ICw1dnmHUGRYJocuPOAVyoEcfGADeb4MJkIeLwQYxRW9nuF8k=
X-Received: by 2002:a05:6102:21b4:: with SMTP id
 i20mr45787177vsb.164.1594225188103; 
 Wed, 08 Jul 2020 09:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 8 Jul 2020 17:19:21 +0100
Message-ID: <CAM0jSHNcN6uOdH5AzX=2qTZk2U--Pcv_U5cq+i-7hGjqua8x2w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gt: Replace opencoded
 i915_gem_object_pin_map()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As we have a pin_map interface, that knows how to flush the data to the
> device, use it. The only downside is that we keep the kmap around, as
> once acquired we keep the mapping cached until the object's backing
> store is released.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
