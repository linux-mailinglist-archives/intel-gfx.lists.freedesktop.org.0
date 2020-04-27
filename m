Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EEE1BA6A3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 16:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780BF6E2F3;
	Mon, 27 Apr 2020 14:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC9C6E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 14:40:55 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id w3so7069160plz.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 07:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TIhydCvsvW/h4ib5I/dtz3h+O1t492sML8OnaqtpJBk=;
 b=qvIwDsiKBDXSejQbS7PiJyTvP6a1myj3DqfMjZdLLRAiCjwBtTs7G2rO4uCuGSyp8X
 75jACdtDBoYqfKfHq+7H5pxwW/VZaJ6WQ3YqJH9YsTE46fau0sEa5cfzJ+7X5Anauv6s
 fv6Y7/GbYvypks6h9qj2Rt3QFCoWBfBJegN6aJ96bAwSvEtLlBchnA1c8ytJe5SDtRCD
 tbDpcgOQgBa3qGkD7rZgKlt1khqgRm7Fzf1seDfWmEY/XGo6Qf2OvPToJ823JV9S0gti
 4OoVj/3WC97h8iM6gIOO9AIl2tZbrAfoVcBmE9X2e9zD3viBmfOrmI9GGpsL+V3PWnRh
 I5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TIhydCvsvW/h4ib5I/dtz3h+O1t492sML8OnaqtpJBk=;
 b=JZ9TNVZzsW0msoWglsY14VieEOe3txdp8siHIPd5NomFJpl4TProRGAZAoggVQqlo4
 mRSj0297ccPjHL9wHrqaJe9PtiQeRFbxwTH4kGMSR1+bCXbuimp4JTKykTuPyVv649W9
 P8n6+A/RtGdB1FjwQDKjZtnohgqdCFnYf64zPDtyMrHDZt7qfgA+qwOLkVxrTVGagdvq
 ygwq1QQRsno6zkCsm+lYm45346Rh9TgJOSFlhQSjqWlCuudGDn5rfk7jVgY3yPmy0TmX
 +sONZ3UG28bpuYNhxZUub6R2M1AvjXlULjHXKpak7CUicwlTxGryhYZ1sHTPgr4ZR+17
 NhHg==
X-Gm-Message-State: AGi0PuYGIWu3cfJMLSptyPsP4vIx/vrPd3m1+iCqq1GqO1c9rsYPSq4W
 q5df5nZ28I6OQ8dIVCLnzTq8jytJmPb26X9kBjnK8qihmH4=
X-Google-Smtp-Source: APiQypKMQchnyFyhD0QHcwKUG8aS1voeHRQ0tyNhAgadoXrNqxUZ/bHV35NWd8+pAc0st9d/4JD6p3ldQedkhgpO0vE=
X-Received: by 2002:a17:90a:4802:: with SMTP id
 a2mr25102145pjh.66.1587998455327; 
 Mon, 27 Apr 2020 07:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200427032232.4307-1-apodtele@gmail.com>
 <20200427140248.GG6112@intel.com>
 <158799689628.17035.14733867368309109586@build.alporthouse.com>
In-Reply-To: <158799689628.17035.14733867368309109586@build.alporthouse.com>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Mon, 27 Apr 2020 10:40:42 -0400
Message-ID: <CAJU=AjVj6BPrqXgWbooTd2VSs_ZxoSbJR0LguxXWim2qu7Giug@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [patch] PCI ID review
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>
> These do not exist. They are fake PCI-ID for Windows95 multi monitor.
> The single device appears twice on the bus as a second function. We
> never had that restriction and could do multiple monitors on the single
> device.

Windows 10 drivers list them, they do show up on lspci and I'll quote
from Atom datasheet.
"This register is unique in Function 1 (the Function 0 DID is
separate). This difference in Device ID is necessary for allowing
distinct Plug and Play enumeration of function 1 when both function 0
and function 1 have the same class code."
Whatever this means.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
