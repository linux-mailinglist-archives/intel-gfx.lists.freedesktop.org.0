Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936CE163350
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2816E3EB;
	Tue, 18 Feb 2020 20:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B886E3EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 20:45:44 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id r18so13961111vso.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 12:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zHx1jxj4yy6zwbiZDHnWq/QgRLfNzOr0pODvhkrPeQc=;
 b=GtvsyDsi7GOHVb/DPG+45hQwHmRoiLFBbwvs04GMZVzhRjXDf26S8qyHcc2IIuS/0w
 q88NE5vY4Dun4cEfHkc6OJoM1fTIwXx40jW6pg3InegZOeexRNnhiy7MvpIiTUV+txqB
 /4i3qMWeit4kRfBfTrP3pCTduyodXG8snZvUP1bgScwWb3552pQki10WPmmQDeAaJeY1
 z0AI34syDtvtbSRICMIYv+T54akJOtmBNDw/CiKk9TGMz43TZmT5uxINaFHXCWduAeWH
 5A/P5psLipkNFdMZ6A42phsLN2PgU+QnKecjIa1rNSWhwxYOfrl4HDLs6RcMTKMWWl9v
 XeLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zHx1jxj4yy6zwbiZDHnWq/QgRLfNzOr0pODvhkrPeQc=;
 b=cz5bbPCDcTUPWt1m+IYYNub8AAeNqfqaN86q6ZV4nqjRvrPTnMOC31HOtb7vy6muMm
 5hPDaKTE+/6HWdA5GtngkRHy8AXP8ojqVV2EcCnYqSOawJHRIu2UiSgsgbo6onPFgFSw
 /+A0k57CviEjKbqiJuvSf9ZRjtZn+hyCjaLCSZVDBJ6aOXzAn5FGCetUK1P+CQsVfMTB
 Ip7DpmWMk3vR/fy3lpfiBGFWGNIMMj4MwNSI+pbY5WmFFy6e7puFc2R4OrwhjDQzJ1Gg
 8DKGe9qQQWzZiwIwNgNmQLI2RWwj6kL5OZL0EZ9vYZxID2hz15U4aeT6G2IPJRa2vAzS
 yo5w==
X-Gm-Message-State: APjAAAXVYSk/UXoL0uc8UAiDEMRqHtOuJogtHLmVoNU3rEt9Pq4d6fOd
 beB/ZYjB8gL6ZY/SFakXX8tgCQbn4OvI3iA0sVU=
X-Google-Smtp-Source: APXvYqxKbY7e5GVT5CIgjkmD+yTZ7tBJrCM5cse19hLQXC/0HyZl/8qaohL3yiHnycDzvbbIv34gSs/D/3KiPYDaNwY=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr12152982vsv.178.1582058743930; 
 Tue, 18 Feb 2020 12:45:43 -0800 (PST)
MIME-Version: 1.0
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Feb 2020 20:45:17 +0000
Message-ID: <CAM0jSHMeDoqPxTAXL1VFg_Fa4od2mebt8P82w8anjUMxm085oQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/gt: Show the cumulative
 context runtime in engine debug
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

On Tue, 18 Feb 2020 at 16:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As we have the total runtime known to us, show it when dumping the
> engine state for debug.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
