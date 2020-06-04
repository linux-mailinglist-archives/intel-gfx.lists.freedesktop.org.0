Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F20F91EE4D2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 14:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 464256E35F;
	Thu,  4 Jun 2020 12:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B60E6E35F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 12:55:01 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id r11so3444376vsj.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 05:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UbdSOY03KL9H38U01qNOe0sAXLEjZJJlQjxUnuYcm9I=;
 b=GBJzCxw9BlnUPk3gHWZPHxoiJ1W456NDORZ+reCTDne7P3Y5g7YlprZVCPhy8PTUdf
 7lwjLouIdh1a82f97Ym/tZMJouUzEC1VbIApieXRqh3RpKpdTqRuiBZDrRWNhx9RLq56
 uAd7oy/POIvGRJ1hzPwdrPpSpJ1y9cOIlD+gzyis6Y/8ZnxBQASC8Vm/CBt5cl2v1OeH
 B5iKf4sli7ZOPcFbw6xpdZYMq3Zf9cnWX3r+cuZ5gfN8z8mwlv9Fw99Jn4FIjhm4zpXJ
 NyunXcZuOQ+RWt68QQKFbbkJ5zEzfxb+SfzQkcmvRvskAr5PdZAIK9aIvL8FY4iGcdXB
 iPdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UbdSOY03KL9H38U01qNOe0sAXLEjZJJlQjxUnuYcm9I=;
 b=MbWpAxUFzPw1cO5hKJxihpQistEcjErSp4DOPtrei1deiucLb73U49inBrsCOWv1h1
 HsOizgfgIvtVHiLEswYD6orQhn9uZf0p2o9AarzHjjNdDkbOLW55GZXWAK16AeYnixMl
 V6GsxCAK7+GNULsTJhMaj2g2Bvb9yX2HCzAHKPGlQmveEwWTxNvESoHDn5Ck787v7wvY
 fOCba/u6WDbWbSQmTg80iRzYDh7rMk3gQHEgslAs/0BsQGbbPu5uryP0p2i9h9yur5SY
 u6HMK2aKcHuRPSSpptEJNBnxmCjwhdpKYkGiEf251REYPrPPRE8CCaytX+RPImTMj2N0
 0BiQ==
X-Gm-Message-State: AOAM532AEL7MZ79wVfv6cBGpenQSEZX9+blWHFL5Byt4glxs4J7ZFc74
 ntCclxiVq8ujABJDWn6RPzcOjwxBDMeJDcJFx789Ueiy
X-Google-Smtp-Source: ABdhPJxZ+XxqBanQfBtW7ySZJs2Wcrhy507wcmeygBPLS7yEFxqwJpbZHEXcJ2d9VBX6GjYvNCQ/Im1TpW3NJkTvaA0=
X-Received: by 2002:a67:8c09:: with SMTP id o9mr1678443vsd.23.1591275300691;
 Thu, 04 Jun 2020 05:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
 <20200604103751.18816-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200604103751.18816-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jun 2020 13:54:34 +0100
Message-ID: <CAM0jSHPNdmV5JUXXKJYNFZ56nwVE7spRPBGP-vsYwSOkA7USBg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915: Trim set_timer_ms()
 intervals
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 4 Jun 2020 at 11:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Use the plain msec_to_jiffies() rather than the _timeout variant so we
> round down and do not add an extra jiffy to our interval. For example,
> with timeslicing we do not want to err on the longer side as any
> fairness depends on catching hogging contexts on the GPU. Bring on
> CFS.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
