Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D61F22E276F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 14:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB1F892CD;
	Thu, 24 Dec 2020 13:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CCE892CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:50:13 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id h4so2101676qkk.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 05:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tWzy6LjCibC0JQQvRPBI8FHsR4ZBmpIkexvbUByVFMI=;
 b=heXmjtK6dRGqcrtk5NWPSa9ElXxxzbou9th2oKMkGqwvi8YZkFr6hWFVcr2pW6sl9H
 T9WXewqtEoBrO0S9A/4qA7vsLwuAvhCVi+TvbzxAp5ahh2HScDbhinlvQGbNDxXi5ATO
 rSYp22bO3SkrwAYJ0US0ePfGmfRngjycGesZ1uMQDK6YYXKZ1qbSmKOys8RuG/2GnYch
 sTBjWyRqd8jCiSlaoZUZkZSynpn8QlvNIefPYl2VmQclL1FVSjZ2klOOrXV2aCvyopRJ
 wnrDxaaQJLq8EatMG817b1kNce7UB4nIVW99yvpCb/1KWdPGDmtFhRWK075Stuj3Z7OL
 l9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tWzy6LjCibC0JQQvRPBI8FHsR4ZBmpIkexvbUByVFMI=;
 b=odqrkJFbJjAtnmkfZwXfdKldFHIbyIN8slKsDFkejOdRpmt9cldwd8e3dYFrohYa6I
 6BNxDAtUcZQNIsyP0aPsSv4PdvbJRIEeONwNaHRL1hT/cRQp4P4QGB3B9nRIkubtBTnn
 58BEFmUXs05oHTxtf3y7p9Ix47KErBvnE9rhJYJep5v6yEPkCpQSc/3bPrZnfuve7Wvl
 K6GYvRhuG51Yf6eZ9RGlT42UDT3I9DxaZel5wxNgIh4Z59zW1RchSSOFZslSto70oc96
 fNoAqqjFSewAC23N1krWfTChAXL4I0FQLmPgNQEv+AJGmdRtErObz3E7Mp/aDLV8Qn3J
 TvOQ==
X-Gm-Message-State: AOAM530HPm2q55mDgZ0i7+k0eRbMDT3Uu+m647pM0rVuvwpFsRrd4KFk
 GA+GX/7kAPFzb5IP0i3eyzetxiCnsoyzX7SBVTT2JUmw
X-Google-Smtp-Source: ABdhPJymGZbRLckKLGyXP7pbBUoZwDPoIcyxeAgbGJiDrJKIki0qwZ/bofLm9yrNbQKR2z0YSvxdmw27wr+qH9OysgQ=
X-Received: by 2002:a37:a8a:: with SMTP id 132mr30306045qkk.327.1608817812277; 
 Thu, 24 Dec 2020 05:50:12 -0800 (PST)
MIME-Version: 1.0
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
 <20201223111126.3338-7-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Dec 2020 13:49:46 +0000
Message-ID: <CAM0jSHNwNHPcrAjNbheFbKVDcZn3v47=tTYTF5eaoKA9Nw81Cg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 07/62] drm/i915/gt: Resubmit the virtual
 engine on schedule-out
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

On Wed, 23 Dec 2020 at 11:12, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Having recognised that we do not change the sibling until we schedule
> out, we can then defer the decision to resubmit the virtual engine from
> the unwind of the active queue to scheduling out of the virtual context.
> This improves our resilence in virtual engine scheduling, and should
> eliminate the rare cases of gem_exec_balance failing.
>
> By keeping the unwind order intact on the local engine, we can preserve
> data dependency ordering while doing a preempt-to-busy pass until we
> have determined the new ELSP. This means that if we try to timeslice
> between a virtual engine and a data-dependent ordinary request, the pair
> will maintain their relative ordering and we will avoid the
> resubmission, cancelling the timeslicing until further change.
>
> The dilemma though is that we then may end up in a situation where the
> 'demotion' of the virtual request to an ordinary request in the engine
> queue results in filling the ELSP[] with virtual requests instead of
> spreading the load across the engines. To compensate for this, we mark
> each virtual request and refuse to resubmit a virtual request in the
> secondary ELSP slots, thus forcing subsequent virtual requests to be
> scheduled out after timeslicing. By delaying the decision until we
> schedule out, we will avoid unnecessary resubmission.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2079
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2098
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
