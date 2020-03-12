Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C65C1838A5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 19:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463E76EB1E;
	Thu, 12 Mar 2020 18:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817356E046
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 18:27:29 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id n6so4369206vsc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0GMWDhCfWv4j8Ra0VF9ObXJLpJNE8BH/pHTdEoSS+fc=;
 b=Ek0l5Gh19XhOw0va/Eockerkvs6m1lsv9poOZa0awSRje1PA//T30LddFdvQmxAkfl
 RSsGo2MmVSVf2XKQNiMA6E9zZpfl1QzsTPOZPT8dx17RXxAIPZlizheYrBQ+b1WJD6gP
 9t0pusxGeh1xsfLVt+T9LnN59xkA8Ul9yFPgXC2VzrDMPKSl2I7EAChXfIWpLNMnJc1r
 UfGJYrDESlh8mHMnURIgVx2YjI1pGOUuDb8rSYx4ufAn9qnJKgmCvL/6ZDgiEgT3RIkM
 tF2p6p2/KuH+ljo2hgjp1dRt2Akz5g/tSusdTjstn7ZVnxPA1KLaHYSRUzz/McCxLPsc
 1nig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0GMWDhCfWv4j8Ra0VF9ObXJLpJNE8BH/pHTdEoSS+fc=;
 b=mFp1fZfDthIHMnUrDlkq1kliamo7gNk9Q8tGuDoU4NIBWtdICREwX/geq83FgiBCzt
 4JOlOT6XZrtZXBIL5IJBOkJCvaIG6uETK7QjL0hJwF4xoUlsBkuhopACOwIV/MoSqQv+
 Is/rriaCwDRAYcScuKZIqkKgr+07G9e4hbA1l3Nr24q/zwN0ammrVVl4tS1BTBELtZqc
 Hb0H2tYGsnflwFO2QyyzJ/xCetG/FVr5iiVORPyQtW5pDzhQ3UuSXoMB+OdbJV+yoOpy
 cxxRpIPEY/s2MWvDYitOWRisPQCqEgVFP0jOAhxmD5wTDzqwUMeHIOxfLiMzKRPf1ovh
 z5nA==
X-Gm-Message-State: ANhLgQ2JE5vbRe4pfLXWBLA15FJOQcXZ6rJ/cghwYR76zj6LfcgFlgKF
 di1iJUZtl81spnbN+G8M3B8Hodq0ZT7HROlL5vM=
X-Google-Smtp-Source: ADFU+vunn+FIRwn2Uvemb6wFfJONqUn3T2syUVPIa6k/S3n2LtsAVIhI7McKxMJHxeuRHnafNf1Tzc49TrdTiLT6R3g=
X-Received: by 2002:a67:de97:: with SMTP id r23mr6849388vsk.23.1584037648545; 
 Thu, 12 Mar 2020 11:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200311160310.26711-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311160310.26711-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 12 Mar 2020 18:27:01 +0000
Message-ID: <CAM0jSHO8+gxYyKB0etFwhssbqYLdA7OwhtqLX4UP+Ku0-fZ-dA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Drop relocation slowpath
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

On Wed, 11 Mar 2020 at 16:03, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since the relocations are no longer performed under a global
> struct_mutex, or any other lock, that is also held by pagefault handlers,
> we can relax and allow our fast path to take a fault. As we no longer
> need to abort the fast path for lock avoidance, we no longer need the
> slow path handling at all.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
