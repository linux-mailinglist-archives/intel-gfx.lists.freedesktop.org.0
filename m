Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FA02F2B77
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 10:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFE06E199;
	Tue, 12 Jan 2021 09:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 859826E199
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 09:37:55 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id j18so637562qvu.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 01:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y8rhQGlomrn7KHma5d7+YaTfUBIng1S54vxfK80KSgo=;
 b=rN/lClvJNUqbN1gOVdZvRQsWUBYw6D0xrO6uH+/Zkhh8YHROPLz/MUq3uJ66Bm5AQg
 wjIdziGUxDEU5xRAtr0cnoAHidXFHLUT2HvVQC1yetXtB4L+3EMyWPXiNZAnL9EOi6HV
 rd2QpQI7kZQ5K+MV/8WJJNkowUCLouWiQ39LeVTYNUIXXKpnxGZslZyaBoHu256A12vm
 /Jjy6KMuxsnTgBDS+gQG6+KmkU06HN//esxB8HL8/SiOXB4rmxjwKC6nRYe5t8ervpaN
 jQMdZinujxokUIj0fcHQ2eds+yA+SbhxakNu8W4Fdcyn9Aq34tTXPjfFW9N4/nV0zFoE
 KstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y8rhQGlomrn7KHma5d7+YaTfUBIng1S54vxfK80KSgo=;
 b=s2+OuoiHh6eyyHf4Ix82s1tAON8XXrdmh+rd9JQ04qmbQhTq82H4gsn+aR56augfUm
 QxFJaM4PnnfWUjGshUDV11eFAndIN+EwpNZ2u3eJAUf9h4lzcRLSRP1o0NTzNlMik8nm
 XzbH9EEyC+7TnhjUbtlIVEe7o6jCMA++kwaMKHzBNwWlQRT0BxTgZ6qpJBgBHwUtlFo/
 xWrPgcuPQZcLx9a5Mp11BHSXLRIFDU3qR6gxqIaeMA1fETP/O9Q9baPqgiMwrD+A9QmV
 nd1bk7xKEuB1n2ippo3/NgjfouMPpI6I9X61j27hK8BX+rjXq77QGoXM42fxpD7usUzh
 seBQ==
X-Gm-Message-State: AOAM532DImqYqq79QtKxlA80ZdIavbMI7vxZkTNrp01WM1M9J/DuECBm
 6oTgEJHLLnyzdG0UCnV9Ow9ucvhAwK9N6ASAcIQWuN685Tg=
X-Google-Smtp-Source: ABdhPJwKgQm+jAdsaF3xaFGpIm2z+NjLwtIyAgo3YIPniOoNlTUHxoKi2ehxELgZtwqRKwJJZuC7xbuh7ByW1Rn9fZA=
X-Received: by 2002:a0c:a789:: with SMTP id v9mr3736819qva.41.1610444274595;
 Tue, 12 Jan 2021 01:37:54 -0800 (PST)
MIME-Version: 1.0
References: <20210112020013.19464-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210112020013.19464-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 12 Jan 2021 09:37:28 +0000
Message-ID: <CAM0jSHN1F0Y2SOHs=_4SeJBR_JixoUiSCWMfKZ4gYMs=zq3aTg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Allow huge_gem_object
 to kick the shrinker
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

On Tue, 12 Jan 2021 at 02:00, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> A new fi-cml-dallium CI machine has 8G and apparently plenty free, yet
> fails some selftests with ENOMEM. The failures all seem to be from
> huge_gem_object which does not try very hard to allocate memory,
> skipping reclaim entirely. Let's try a bit harder and direct reclaim
> before failing.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
