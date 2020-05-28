Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EC21E6486
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 16:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984846E57E;
	Thu, 28 May 2020 14:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308386E57E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 14:50:41 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id m23so464538vko.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 07:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iUojESZ0/1LpmuNWHE69gxFNQb1qble0gHBkTE7Y3fw=;
 b=Bqbvr7ppfuU41Gn36ZOPc6UH/WzCCMZ/dOAwIGolm8qkhR9WmV1on6Q/mYHg/pzctH
 Gub2wL2bkhSxpCMKo/VeOyQmuzqk/jbGykr3T34Zx/99rSgJMZmGB/DHazIJ37QvBeFt
 cHcPwRAI6MHB9SvBnn25HTLKvjeZWzfOcCFqZ/jIilRXMSTkarIYzBlO64i+I7KF0UEk
 fvsbPseAhtAWniMC+RwrF7zajlYKyrTb6EWABbQzBDAJz+VllOO2edxN8sO1qtWUoJ5q
 RQ0M96EyuC5b2ayAewd1+5f+A66odDbiu6F+q+7+cG29IIbZ5kqdZ60eELWn/Jw6WtZX
 Bmjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iUojESZ0/1LpmuNWHE69gxFNQb1qble0gHBkTE7Y3fw=;
 b=qajvh99pafJeRg6QX424ylvTkdknoN7NRWpDQgXlpjMItdsYlH4aaY/FKd4p6Zj+uR
 6SDaZdzREFfPQBrPKQVEcOqUENJ8zq1r5+6ND0RzUCM45shs1aHHTAEoeQYn7UjEgY4C
 Ne65uzwj2gKlktnSrBapiEnxfcU/As+tKupmoxqXiFgvZQKDotIEnEhYEybWiZkYEAMD
 z9VRUPFfWp9znmIdfdT/8gSM9APx2XgSy/wIcQ/4Glna+MOzPRrIlo982wSA0FqfK430
 FHl0N+8MntRdqOzoWjsnWJ+DWEQHdUHjK7L7/p+0801rVIBJLKRdJ1K8/UqfFYL35Wdw
 JyGg==
X-Gm-Message-State: AOAM532ETC8yJGsqIHg+ukJeUAhG6MdDMWRXwY/mSugd4osNZF6a66QQ
 lCb38S6kjFpvQfD191lijqmsbMckHf3s8TP65hmHOe/6
X-Google-Smtp-Source: ABdhPJyg2ecHSiMIjRtg2xWbGLoH6byzPbDIq9RtwEnVur1v/iwjCPmSvBJH/fF2PwXC3FqP262y9tfsnAoKGlidZNw=
X-Received: by 2002:a1f:1c81:: with SMTP id c123mr1848985vkc.14.1590677440300; 
 Thu, 28 May 2020 07:50:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200528082427.21402-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528082427.21402-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 28 May 2020 15:49:09 +0100
Message-ID: <CAM0jSHNaCudb5qvmaNA7sP+faUu2axbtF1UUzXffAkH0hjjkRw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Restore both GGTT bindings
 on resume
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

On Thu, 28 May 2020 at 09:24, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We should be able to skip restoing LOCAL (user) binds within the GGTT on
> resume and let them be restored upon demand. However, our consistency
> checks demand that the bind flags match the node state, and we cannot
> simply clear the flags we need to evict as well. For now, make sure we
> restore the bind flags exactly upon resume.
>
> Fixes: 0109a16ef391 ("drm/i915/gt: Clear LOCAL_BIND from shared GGTT on resume")
> Fixes: bf0840cdb304 ("drm/i915/gt: Stop cross-polluting PIN_GLOBAL with PIN_USER with no-ppgtt")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
