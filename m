Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6F525C265
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 16:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B706EA03;
	Thu,  3 Sep 2020 14:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 711356E4FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 19:55:25 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id g3so122894qtq.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Sep 2020 12:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zededa.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fgPZcNvT9XisUEbS+1Ao8QDv+2ALILbug++l9nLUnEc=;
 b=eDmdY0vjzVfcFNl+EMsQE7ZqH4oRZejSxSYWEoWWA0LEdXjBPBIYZ6CIsMOWOxGjre
 aBQ48+3bOVD8NsPa5zTC0V3LvdY7JTigVAGlNWdDDhyLOSLDRHqvX6bHJcCqOAD2JjBt
 Id0FOFZeYHGG1YX7QJRMv2hT3NNRju9/l+AAjpD3G9ARYo2LX9epD472g4knNpz9tXRY
 QIv8rjCWzc/9YstUFPMY/iJgPN6OkAs4plT5GpUmNOLHooN2SAnE4b94q7LW91GUs0/9
 1g5J0HWNcf1NiBHzYqIMtHP287gAFviB3+0k1iay05db9SxaajuERUn5e4bpDNGaxeZg
 avuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fgPZcNvT9XisUEbS+1Ao8QDv+2ALILbug++l9nLUnEc=;
 b=Oe3QgU1Hx9+xM/8AtBvJHluG2Gew3tlIZjV5XOWvlN89wrLOJw6c62OKuchk9HdkJG
 7NFKEQdDv9WHsV0O90dNDDW/UxViTIrCVWDHFrf5ojRJD4vFJryGVSdq0V/JVTK4Zc2f
 oqz+2rF+fxpmPx7jyMEaMuM2r51GI2s9vc+lab5W+NY3DTgXh4Xei95XVqWpLdOthF5U
 4psPUTOZ2L2UTpn9OHXKMkiDSUtKOZJcwOG0IRiIEu2mBqide4W42yW48oibm7nOfbP9
 fO4b9eTmAZTCHu+hJAN0IKEnqKaUd/4keP82qZGpw54FCVR5XhwwKd/2QoovRsR/NBqQ
 +HdQ==
X-Gm-Message-State: AOAM531x0TmIYd8lzv4NA1UeMbUP0XbMpWaSheUuFy4GKHQAoE/e7XRX
 tpxdkZUfmfVVF8xY1+whN0XplPS4nlqTSumqTKNd5A==
X-Google-Smtp-Source: ABdhPJxH9r1RSltOF8T2/Z4xLh8CcWvsQpot7UP0gaqiZUBPftNT/cydeaBKOK6TZ0ETBxF8utLKbo/eFODKcZlSras=
X-Received: by 2002:ac8:76cb:: with SMTP id q11mr2050699qtr.63.1599076524368; 
 Wed, 02 Sep 2020 12:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <CA+1FSihpq_i-poiihdF0srE3fGXnncGtCMYqAGmNZu7fjNcY=w@mail.gmail.com>
 <CY4PR11MB15594EC5255084B8AE509068F02E0@CY4PR11MB1559.namprd11.prod.outlook.com>
 <1093525083.1169948.1598979998646@mail.yahoo.com>
 <559F4617-9633-4B40-BA55-E79305E20530@intel.com>
In-Reply-To: <559F4617-9633-4B40-BA55-E79305E20530@intel.com>
From: Roman Shaposhnik <roman@zededa.com>
Date: Wed, 2 Sep 2020 12:55:13 -0700
Message-ID: <CAMmSBy8vor1GBqNUSRjj=gNRBwDjzRWFcxuAU0EYkRDgwQ4K+g@mail.gmail.com>
To: "Lv, Zhiyuan" <zhiyuan.lv@intel.com>
X-Mailman-Approved-At: Thu, 03 Sep 2020 14:23:48 +0000
Subject: Re: [Intel-gfx] Various problems for the Xen for XenGT code and
 guide.
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
Cc: "Li, Weinan Z" <weinan.z.li@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Li,
 Susie" <susie.li@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xen-devel@lists.xen.org" <xen-devel@lists.xen.org>, "Xu,
 Terrence" <terrence.xu@intel.com>, Mario Marietto <marietto2008@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Jason Long <hack3rcon@yahoo.com>, "igvt-g@lists.01.org" <igvt-g@lists.01.org>,
 "Downs, Mike" <mike.downs@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 2, 2020 at 5:48 AM Lv, Zhiyuan <zhiyuan.lv@intel.com> wrote:
>
> Hi,
>
> It is mainly due to the business priority change. XenGT project was originally created for data center usages with XEON E3 servers which have integrated processor graphics. After SkyLake E3, there are no new servers capable of running GVT-g, and Intel future graphics for data center will have different approaches for GPU sharing. Another reason is the XenGT upstream difficulty. Different from KVMGT which has been fully merged to upstream, Xen part of GVT-g still has technical opens that are hard to close quickly.

This is extremely useful -- thanks for sharing. Any chance you can
elaborate on the later part "and Intel future graphics for data center
will have different approaches for GPU sharing"?

IOW, is there anything that Intel is cooking up that may help Xen in
that department?

Thanks,
Roman.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
