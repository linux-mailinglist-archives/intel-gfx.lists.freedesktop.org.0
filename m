Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DC635151A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 15:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B446ECA4;
	Thu,  1 Apr 2021 13:25:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE2F6ECA4;
 Thu,  1 Apr 2021 13:25:07 +0000 (UTC)
Received: by mail-qv1-xf2d.google.com with SMTP id q12so952424qvc.8;
 Thu, 01 Apr 2021 06:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GiXAfw/dcZDNkoE6JdG/hfs57cCSuxPlF/WmsDs0NFo=;
 b=Kr6pZ0KS/YWtvTwTVfkgzCYPFCAEGtpF+yLrCNROW8gQuEIlfv3E5yPH34CmiwaMGP
 Nl94K16/PC13OC7UBnZ92tvvRjC0qpXmAczHCH91ZOoc5A+zlNyko9KldOUcNCv5SU1y
 QhbH24nuQFNcVE5rlunxqFo7iSoxceF9/YjbOCsoiU5z3Jene2ao+AQkGsBSr/OiZjZk
 aSC5T7ZNvFr9jtbaLibyOXSvx2LCQ6T+nQWoi7bTMJ3wpLw37vx+hdKznXHfga9mrodW
 ng9FMW91GTg8YJvZZE2DKafp3ONXMua87BpN8dmW9SDwi7G+7gLCSebqVXKeAi4U3LCg
 LADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GiXAfw/dcZDNkoE6JdG/hfs57cCSuxPlF/WmsDs0NFo=;
 b=b21CiYdwNDiW1UrkuR3wrgll86yeE+qPV7FJyqCLH9Tnf9IFBzfAW6fBDEDW0/vYzu
 z9bBLky5psK8BRth35Qdyy7sfLG+ny13jvHahDxFsYYHD/8/ScpYreM4VCH9OPmRxq6d
 ITj1OJjI59IIfZtB67OdIe8OXLw9tGM+8uaPI2NoN7+FWEbb33zM25xez0OjVh5kSnWT
 Fha/5Rrh0LC5kGKbfbpWhE7OEfecyV5/quGQktTs7w+dZxeOeZQyyZNvqI35Cf6DVILG
 sHW9K6kswq4G/cCtEyuBwxbI2R4T+8Wtc73eX5Wj1elBnZvgursKY4TwHZM5WEvA5iiE
 w21w==
X-Gm-Message-State: AOAM532hFWSRMKctinCXL2zXuH9yy8ARTorXyX6mJxfgFwvdUlooJbRw
 JfzoKwfndUkDp4d+T9PDHDkL92nGiCNzIXNwc60=
X-Google-Smtp-Source: ABdhPJyA/aC1xHtiNgDxc1zt097XTtp8O7aga8WTcNrPSu6i+M9qelRxr9LlZuwi37eIt1QQH4K0G02V/VTcFgRyyMY=
X-Received: by 2002:ad4:58e3:: with SMTP id di3mr8063908qvb.43.1617283506982; 
 Thu, 01 Apr 2021 06:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210331085713.2566057-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210331085713.2566057-1-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 1 Apr 2021 14:24:40 +0100
Message-ID: <CAM0jSHO_E_nKfD8oKM7WiZ-f+3KnMt_oZijv2FUe=2+Cdm_3rw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Do not print
 client header if no client stats
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

On Wed, 31 Mar 2021 at 09:57, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Add a check if client stats are present to init_clients() so that the
> returned clients data can be null from the start. This prevents the client
> stats header to be printed on old kernels.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
