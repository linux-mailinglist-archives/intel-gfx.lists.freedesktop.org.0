Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CE612D075
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 14:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D9789CF8;
	Mon, 30 Dec 2019 13:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF53689CF8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 13:58:54 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id i4so8291276vkc.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 05:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kQ2RHllaxs23eCDR7R65u2uTc02Ua90ebjeSWEGT5Hw=;
 b=E+iLc/OM8egcagSs2VpN+/n30tv8NNFUhPHaUMgbWJeOPhCA0ofuX9LOPkElz87+dU
 AldemG7RVsrZDfiUG9gNdoHwVcaHAtDnFVgh7ZoN7xfTa1mxZw7v2JZm0xThLfx/DzA3
 WUOvdnAiCWro+tzsnLkAAr3jPTSj9mIM+8a92nOwzD4oQQ6glGljo2NG/xzcdCC4tvTG
 QA2tIqdj+6r1o9ED14naCKvgunCn8u/w2BAheuKxGop1DXWKB5ra0t5gDBMUA6roUeB+
 lRbCSs15apDGVdPokjX+Ri0WmSsLgqqrj8jOnD7zwnL60kUGCyfPbFxxT3z9iaCDS0pb
 4Row==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kQ2RHllaxs23eCDR7R65u2uTc02Ua90ebjeSWEGT5Hw=;
 b=Rdu3tPaJfn/VBiti+n/vtU1LGeLPTZKWHg55EMXnFLQRYw8UeTYw7dBDHh5PUqyuzx
 O+Cbz/jpog2Ll8CIexrqHw6gEmLm+wOVM/1eW743mCsAx1v9K5sXGtE6xPkQv/Y/Rs9Z
 8bL/f7egG/kn547BWf5+rzp4bRIAjeesjBT4yig1kL2nEy/ErlAMDJeV2L0v7h8hPUEn
 SjQy6F6kuPYh7Q9c/mprRClWXW0oVcAuP7LOi3Ld/8GEvYy0Qasjil98PsQ6u3k23uHw
 6pSR2vtwmShSKQlmI68/R+/YBIgnTemnNISF82l2Go+2aix/j20cP5oQ5dFUMIPs+zbH
 dEiQ==
X-Gm-Message-State: APjAAAWQ+n5bIQYUI7eWlZKm5gx0AU7dlxCeLX15dc5OPlJOxOuhA92X
 Yyh4hwTueYVQrNitz8hACvlrTZu+uiAXKAhxGkdc5g==
X-Google-Smtp-Source: APXvYqx4tnXqNabQFQ3dVNZSwZSF2OOyrQwGBx+1AqIetw4Ezkr7YjjcQkuUPZuqVl7mjwOdjXay8pUty+aQZ9AwOwk=
X-Received: by 2002:a05:6122:1065:: with SMTP id
 k5mr38266930vko.14.1577714333576; 
 Mon, 30 Dec 2019 05:58:53 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-3-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 13:58:27 +0000
Message-ID: <CAM0jSHOOFd-8nSWtnyAPK5TTT3Y0HnO0nP=6-3_uWnAohMFWRQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/gt: Avoid using the GPU before
 initialisation
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

On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Mark the GT as wedged so that we are not tempted to use it prior to
> initialisation.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
