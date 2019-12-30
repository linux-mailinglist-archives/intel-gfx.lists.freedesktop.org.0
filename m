Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C8812D1D7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E33489F33;
	Mon, 30 Dec 2019 16:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF2189F33
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:17:03 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id u14so21199665vsu.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xfuFkhQwtLydDZTtpN3Y75kalzZyZ9T3rf8WTgRQEto=;
 b=j+y9fFzglDv51PExjMn2T7P96inw1CuDCZ92rf0dQ1JLkPABqWnOvbdATRfXWeOWob
 +yXE7w35P8fZYPMXb06EqmlL8uXhuey04Pyq0Gc3ybU6PQdliLXYWbcu4HNAaZfCECHl
 2y77RmEfbMpzjHVHhbkiRreo+udCk30vdHddTyQ4z07PDTsMZxnYWL3whetx7rw5WVi2
 TXzv8cfhSnIebFuEyxhDgVrcRXrVfccurvAQJngvU3j33HF/g8CW+LX73CiZduPO1IPy
 NFdRv4t/n+i4TakCWjBnk1bplvLYGH1D47VAFwunrJdS0WFUztdhJy+eTf8O/mr7JO01
 N28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xfuFkhQwtLydDZTtpN3Y75kalzZyZ9T3rf8WTgRQEto=;
 b=g2cx4izc3TN14Jd6mhomY4GSIUJAnp4YaI/U68Od9ufluw7L/k7PooBDD5YgO/QAPp
 1sQyBFgryjFAsNySkIiyG+7yHqbH/68E/XJRT2zVb5chpMUjynkDf1kTI35mPm1DCOxY
 UdPsBC3o8sUqpX2cNoB5PMhiMZIMo8JTfGfoC07XQ61NVJSyhQnifoXOpH9xgWueUqpV
 d3Tg2RJa1Hf2Tq5u9Qm65/xjH+V1K3/uwhfSB/KPe7hZRSk+Yi2/jOnLBo/XGkHvGwID
 1sZX5IQDERp58vL6HC2skMeh5V9t35AZVaghPVEIkyNoySHHXtl5OoraY1GnIk/IAn9y
 rT0A==
X-Gm-Message-State: APjAAAUp9qVubRqGgp3NivrTGr0ovAUbXcx3acXjyN8HdJKnVmgupBq4
 h5zbENg37XRkWH4sWATDnzr8GC6wMaCiv31Dkks=
X-Google-Smtp-Source: APXvYqwIctIvbMfSUjMVY61Gm3vwd32Qx7MQBu8cm//fPPIiOejXbE3luZ9cfLwPxgbo+d6dSrl9f0yRaMjcFcca9mk=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr37116875vsv.178.1577722622687; 
 Mon, 30 Dec 2019 08:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-7-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 16:16:36 +0000
Message-ID: <CAM0jSHOwcMqzA045LqOB=OacaVvrPjvxpP8oFOMH6E_DnJXrtw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Always poison the
 kernel_context image before unparking
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

On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Keep scrubbing the kernel_context image with poison before we reset it
> in order to demonstrate that we will be resilient in the case where it
> is accidentally overwritten on idle.
>
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
