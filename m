Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BCE344A1C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B446E503;
	Mon, 22 Mar 2021 16:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9485A6E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:01:49 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id l4so22128951ejc.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 09:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4okk4MmpHakXvgepDctT+DEH5N6/lcep70YDmAG4FHo=;
 b=uPyGwICWeEa1F9KeyRcWTtNqFei9/HbJ4Bxnoodslrx30NcHBnarNMgN6ayCpsr4N0
 Vi8ujf2mSi+LZHcfb4AJkQ3Gwfqn/Hsc5sV5Th94b4uQSOP+iHf64N2gXnBMMMV/40B5
 +ez0yVNkWDtwKyloxsM/dX5qQdaklAQynuoo4okxHGqc3l8TMThcT9NFl7ZBnkZh9sbL
 oXVKm5CtyWo+nkEONLUOGbK/LWP2HafPnVsnYtmQUwcibRyRg1aTBg4s4/NpELDPtcdy
 lIyeD2JZJC2gvLHIHpFuj55FpGw0VcnxfzuhoGEf5PiQYIWcsQ48Lt6qEO1dBjTrdCrH
 RVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4okk4MmpHakXvgepDctT+DEH5N6/lcep70YDmAG4FHo=;
 b=h+UuqbNnStns7ZNipmBvDToBk24MCQ+i2SYh6noyT5zsolJRr0SWxoVx0MWOA2HDJG
 a6hMLUQhIrdAXtG/eNM4cZnCLzbhon+Bv/jdQTyA5OM4HuggrraMwDXs+n0YDS7+Fnnz
 gYeH89HohUsH9vO3U06lwptWWhgT7qfamE853F+U/YCyz7+BKxcqW7A/xBh3NcWI35nJ
 zhtCZegIeKL+j1A8CHrYQXIHNrOnkIYnVA2hugWS0FiAsfrgDBx12YUpBlE69m4Mcujw
 cSavq5/H2TrzlQIZaMvjrVnUtGfPYhikgSRafPLg/zF03tYkPZY4+UIUKyYpA5fAivV1
 FWLA==
X-Gm-Message-State: AOAM531a4tVxIf0oV1BTc2ntlu5+89aZoelbuwmME743HmXOHtDZtbpO
 R4kq2n8VE5unEdbnn9tWAcJjkCFubfgKjieR16tJBw==
X-Google-Smtp-Source: ABdhPJybFzFBbRqqqO3S3xhEFcGmzRx4itDgYMBFT3SIeLHFu5BiOySf5Q3lGa5WjysIwHrw6N0sCh3PQXuTpDGMGk4=
X-Received: by 2002:a17:906:b288:: with SMTP id
 q8mr505834ejz.210.1616428908297; 
 Mon, 22 Mar 2021 09:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210319223856.2983244-1-jason@jlekstrand.net>
 <20210319223856.2983244-2-jason@jlekstrand.net>
 <CAOFGe94ggJUBH_+bbxAVLUge8NZQYHK55ZzjnQ2erXhh+r8c=A@mail.gmail.com>
 <87wntz5rdg.fsf@intel.com>
In-Reply-To: <87wntz5rdg.fsf@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 22 Mar 2021 11:01:37 -0500
Message-ID: <CAOFGe97UDA9n6LCGXEZi-2B6ZTNeOG+D7sEX1kwEF5L2kUsWcw@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Drop
 I915_CONTEXT_PARAM_RINGSIZE
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 7:01 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Sat, 20 Mar 2021, Jason Ekstrand <jason@jlekstrand.net> wrote:
> >     This reverts commit 88be76cdafc7e60e2e4ed883bfe7e8dd7f35fa3a.  This API
>
> Small nit, I think it would be useful to reference commits with the
> citation style:
>
> 88be76cdafc7 ("drm/i915: Allow userspace to specify ringsize on construction")

Done.

>
> I use this monster in my .gitconfig:
>
> [alias]
>         cite = "!f() { git log -1 '--pretty=format:%H (\"%s\")%n' $1 | sed -e 's/\\([0-f]\\{12\\}\\)[0-f]*/\\1/'; }; f"

Thanks for the tip!

> With that, 'git cite <committish>' will give you the nice reference with
> 12 chars of sha1 regardless of core.abbrev config.
>
>
> BR,
> Jani.
>
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
