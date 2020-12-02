Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8B32CC1D3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 17:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A46E6EA5D;
	Wed,  2 Dec 2020 16:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559676EA5D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 16:16:03 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id v22so4519027edt.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Dec 2020 08:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EmxYe7Rvtm48xRV/C2RHsjAaYX2jVlZKQbyaMHIFNKM=;
 b=QsUQ9fG9QTleXAUDdBIFe28i/iIZAVmqoR+aMye5+Syew6vvHEiWfCuXrNivq9vtVm
 HMmGDbmUKxWKMoXeErLboGMVsHN3aGTBcSIsp9fZfK4dxih7SgASihuDPViEvWWecW3g
 gyBEhyyL4JfskUdlDrMaJAjctT5AGV3wKgB3RVpDOCJ6sWFb3UlzwS4v5eF8zxWe3xRm
 zUMX/bgnaWvZmr6gN76mT8KViOhFzIOI36WRqLGaq5m8QfWahF8+wAvq1p26if7UBTFW
 4TwsfeqQ/vqWk0997Y5yKF1utrWlAAPwPcWZtYxXEK5vl9PSFEaZ01n3kJO08aQKz3X/
 Z08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EmxYe7Rvtm48xRV/C2RHsjAaYX2jVlZKQbyaMHIFNKM=;
 b=MKpWdM9rTLoq6eBzl/WX2Sj9PFzox0ua6IpvyVK9UhmQmkdGo5LOXEInx+m0d0v8wZ
 Uz4AI2Lwbg085bYiQQTeYA0rkAHfoeIjJIho+ekVo8tM+1P4FwoL865NOdEBW11oD+Te
 J05y13YK2AbCBehfI/HrNlhmu9LQkGgQUYCNG2bVm14rNMWivlzJ23QEM3b29CwSGq14
 xLtXD8YKQDaAHjlbKDnH3M6xpCeNYG6GaABLiuu+jHnHGTOpfWA9kneya7iDa9LbjhSf
 n8Jftq7xSWaBR1acNzR6JyYbXNyjf//I3r5rV4JAb+0Z5xc1vwLPAjl2NEw/si0IavpL
 kneA==
X-Gm-Message-State: AOAM5321PSGMTCLwXDP1faNr04mMPC7KKvYlJ+r++VOtijBe8uYDgM3y
 bWRrUnqxuVmXDDOiGT0FhlFmeMmvG9iB4blRuv8=
X-Google-Smtp-Source: ABdhPJxRwzWpJr2iO05hXDV+t2V6SmrmK1xWC90ZZcHpiU01/mrCGlIuVCM8m+gP8ACHxEnMh5ycaVOOmBzl0ZgTBHQ=
X-Received: by 2002:aa7:dacf:: with SMTP id x15mr657707eds.134.1606925761889; 
 Wed, 02 Dec 2020 08:16:01 -0800 (PST)
MIME-Version: 1.0
References: <20201202130406.18461-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201202130406.18461-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 2 Dec 2020 16:15:34 +0000
Message-ID: <CAM0jSHMmgTrg2CHaptQF7Hb718F4CTrVPKRzWwnCrTw2NmvpqA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Tidy prng constructor
 for client blits
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2 Dec 2020 at 13:04, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since we only initialise the prng once within the scope of the selftest,
> we can use the default initialiser.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
