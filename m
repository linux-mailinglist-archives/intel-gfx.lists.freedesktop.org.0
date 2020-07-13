Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4410121CE65
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 06:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71BA6E48F;
	Mon, 13 Jul 2020 04:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A676E48F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 04:48:49 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id dm19so11390524edb.13
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Jul 2020 21:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6HB/SpYaeWibjZfipVPc4Cwr05LhpFB+syXTXteSdG4=;
 b=RJxz/2WQ2ibI6S/vP3peYuFRAHU/0EuESzfyIqsH4PvaUOorBv8/8CL8PBsc/GC/K5
 vFwbrhxeN9mMyF/iOgGBlHnIBrjyxDzyMQTtsW849yWR/JSWoQS9FKainHyHwEbm67d6
 IkFuvupj0tQ9bt7pzM3MuPdQgbmhOZoizQGQbAmb17Qp/QB/Rv080jCXhNx7AoFRSb5E
 6qQvhg4S7nilY3UMR4CzYAMp+c/dj+E2g6R3injq4upfkgntorpPxQTu2lVoL2Oy3VwB
 u6rZD4w5koz81Q4AJ3zw037MQ5p1y75czLfKuCDCpa4nzmCuJdQIcf8W8bbTqASY8aef
 aCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6HB/SpYaeWibjZfipVPc4Cwr05LhpFB+syXTXteSdG4=;
 b=Qe+t/x6ReXw9LjQSObJE/U5y1QySMXempq+IfIHU/71fW0J+sCuqGWUKf87Ax3VBTx
 FfCLSKwpe+4BLezzXnB5RJkV3TVlClfuHf4UkTjEq2lz3b9z5WNPmOodw1C0LXEvrRER
 AsvlZwIu66dCHZxFUz05NtTwMMe4ijc2z6H3h0T3M2j0WvdDCkdIIWBkD0/SOORZQMXA
 5NJYUc1OSmvRLA12ELBEH34CM1Nw2QcQOCqbVUFv47Zc70qWET1gZzGBJYdhyeBL6Iw1
 aioVdOAOSko/4q5DTuvfw9Jcyw/jvkMFGmHuMjhGHpzaeF5o8C9AOsd518UEefY9wqq3
 zxxw==
X-Gm-Message-State: AOAM5330Yvv/TKHUrZArrOW8s7eaJWN+mB9tHfBBNnS3VT4oUOPX1uAS
 hsVcwdwdgxF0sJ9egL3AvrwByQE6OckMX6hwRC+nug==
X-Google-Smtp-Source: ABdhPJxitPYy5W9ikjnrTwf3lFmzt+ScliBBdQM5+CVZchZKoAfpHklCqWrWvoU7WzXab4PX0DtlXBWSvUG6CmdAgGM=
X-Received: by 2002:a05:6402:796:: with SMTP id
 d22mr94002313edy.78.1594615728593; 
 Sun, 12 Jul 2020 21:48:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
In-Reply-To: <20200710115757.290984-54-matthew.auld@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 13 Jul 2020 14:48:37 +1000
Message-ID: <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [RFC 53/60] drm/i915: Create stolen memory region
 from local memory
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris P Wilson <chris.p.wilson@intel.com>, Neel Desai <neel.desai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jul 2020 at 22:01, Matthew Auld <matthew.auld@intel.com> wrote:
>
> From: CQ Tang <cq.tang@intel.com>
>
> Add "REGION_STOLEN" device info to dg1, create stolen memory
> region from upper portion of local device memory, starting
> from DSMBASE.
>
> The memory region is marked with "is_devmem=true".

So is stolen fake on LMEM devices? The concept of stolen doesn't seem
to make much sense with VRAM, so please enlighten me.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
