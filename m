Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F72253138
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2B76E9AB;
	Wed, 26 Aug 2020 14:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com
 [IPv6:2607:f8b0:4864:20::f41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27516E9AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 14:25:43 +0000 (UTC)
Received: by mail-qv1-xf41.google.com with SMTP id r19so761457qvw.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 07:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0MQzhYw1eFCZ4OasAAPt/4uM+WwEYftpqDc/VYHMtbk=;
 b=AEeeIKetXtIdWWb5SAUNf0CT75v612rlaNccc1LnuJpBb5OvgTvnreoT4A4OjAHh83
 2gkDSfW8afxE84LI039FqJeIhxV2oGZ4RnkHwrgT7gaJY5kFVxvgD7z3kcBB0nmwawYl
 CS15Jy0Be3rJh0nkvXUGExE957xE1b+7UhD8hCHGOAkgpPAPwOWMKzZ3o/gby8vQ+sfN
 wDB5+JA+w8e/Hdgudw8JPIy+J6slyE1vtbucRIPeRAxApuJujob6n7+1FX7GzcKFLkOs
 Chs9V5WR7ttQDJxLdP5QRuGU/ZbDFDC5QqvZOLj2rWLfNycVtJZza+7sI/jmL4cSLtEa
 UEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0MQzhYw1eFCZ4OasAAPt/4uM+WwEYftpqDc/VYHMtbk=;
 b=Q18eAH8wPZ3o0oscHlE80dj93BqshNIZUogRrZfCLMVRtPH9jTLXJMs87dD+ihFeyL
 LgiZkVyoUYDHljkcc8KCzc17XfvPUfxlf2iVbAKggoKxr2WPU96KFwg4S4mzwwCHdIQf
 i2D9AFyVh3LKy3/JC4g83ZcSDk/Ova3S3jtpBNc6v+MzwM34h45vq1HZz0GDSJyU3Fbs
 lnOnvhBYuzG6IFoFMqXt8nKKM6vsN83L5WwGMEPXFV+v049DrN9gpGRUInmRZbqgkQhN
 +Y1WcRI0eFnm7eD6KqEiBIem8/tHNBUXH6ORrDk5C1Zos80EHSVucf5PjC2dUf8T6j0i
 zt2A==
X-Gm-Message-State: AOAM5319NV2pDKCCSqoeoi/or0S5CQTnvSwqQCjaJiwuFH0zD6hs/39t
 4UpRo2a6eG1NIp5/7cdztSVNPg==
X-Google-Smtp-Source: ABdhPJyT1CcTFQngIw1LDN+6nfpS4iP5F+zti+vFgyKwmJgBJWLjcNUPyeRDliUrfesVkOYVF2X/xA==
X-Received: by 2002:a0c:ea21:: with SMTP id t1mr14182769qvp.62.1598451942396; 
 Wed, 26 Aug 2020 07:25:42 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:67b9])
 by smtp.gmail.com with ESMTPSA id a25sm2076443qtd.8.2020.08.26.07.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 07:25:41 -0700 (PDT)
Date: Wed, 26 Aug 2020 10:24:27 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200826142427.GC988805@cmpxchg.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-5-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819184850.24779-5-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 4/8] proc: Optimise smaps for shmem entries
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Huang Ying <ying.huang@intel.com>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 19, 2020 at 07:48:46PM +0100, Matthew Wilcox (Oracle) wrote:
> Avoid bumping the refcount on pages when we're only interested in the
> swap entries.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Acked-by: Johannes Weiner <hannes@cmpxchg.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
