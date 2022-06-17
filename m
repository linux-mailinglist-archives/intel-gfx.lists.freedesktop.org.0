Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BE954F539
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 12:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB7A112571;
	Fri, 17 Jun 2022 10:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E375E112580
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 10:20:57 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id cu16so5185128qvb.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 03:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C3CD2Y6M/725ICXE//vzm1gEh62O9IT7huPn/oxxRwQ=;
 b=RVTEsu5LRH9qhki/bZdwOf9i4unrwGmKePfb7h5d5c/7ZTorUcNNuD4Esttt6gWinT
 Awz/3YFTtZExMCo7IRH8oTNzV1hgdayDYvlF1owqAuWCt5q1DgfsikmgouJQCl0DbYAB
 pLdUsfDNlfmW3oKIjFJuxBHdsPPiGWfnxwPqxv3N4eP+f6g4LpEYoGBK41ZJU2N0Lyq/
 M+QqTaDrSRSnD1dSwpwJv+ktK+vn62m6wQRmxCdXogaG6DMif07zpI/aUKSbn6t5pIYZ
 oCpUC52U38dYGuWnjiMvfijfyU+AFvNqjjyglfMxDamPWxhqjAs8U4C5ro7RwYjerN/L
 6RmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C3CD2Y6M/725ICXE//vzm1gEh62O9IT7huPn/oxxRwQ=;
 b=b7hGl6ZOC+/kMVbali6esJ3pi9K2zRAbvitqnqBWoVoTY6MH6F09EfnmDDLVIEHmKf
 qjv+v+vUeYjFfaszIn7FLq3iQLDwT0V8DlgWCcd5xVv4WxLXW8xfeYuFtczkwsw4j5tK
 Ni85SA9kknAXwoPpmdbG91PqhxGUghxIkyyZ18QMToFCNcdwrJ2inPdeGh8/Jd4opGuD
 3ljl67YKjQiwqyA6qJLllS5vnxL5iZcRvzEDEnrxoIM/5Vo1zaa1jEXmkPIMwXqJ16MR
 k/FT4KkdSPodW+KI/QfbUIc/wppQ99EQ0fhFQaR1BkkIqpH6xTKxUv55ZPj4JpFpBFs4
 VkbQ==
X-Gm-Message-State: AJIora+sCmpwRKL/B/LDmAtpvIMPSX7/eTLXQAKQ6fTZT/QA+ZuIfh/P
 OiclqEqiokrfpOO71+vz6FginHdgfX9PHNZBHcc=
X-Google-Smtp-Source: AGRyM1vjFTj178vjy2p2TUyoo2fvD/6vKe9ZFHb44ikJO2QCw/f+jdv8rsUlhyQDfCqS4fziD3l0jT9QGY9faAjrV1o=
X-Received: by 2002:a05:6214:c41:b0:45f:380d:2f6a with SMTP id
 r1-20020a0562140c4100b0045f380d2f6amr7540111qvj.54.1655461256972; Fri, 17 Jun
 2022 03:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9@MWHPR11MB1935.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9@MWHPR11MB1935.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 17 Jun 2022 11:20:30 +0100
Message-ID: <CAM0jSHOysaa4NBX09cVKgijt3UB2xb50xKjV68+KJ_aqQn6Pyw@mail.gmail.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] Access to Intel-gfx
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Jun 2022 at 11:15, Golani, Mitulkumar Ajitkumar
<mitulkumar.ajitkumar.golani@intel.com> wrote:
>
> Hi Team,
>
> This is Mitul Golani from OSGC bangalore team. Please add me to intel-gfx mailing list to see/post message to all the list members.

You should be able to subscribe here:
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

>
> Regards,
> Mitul Golani
