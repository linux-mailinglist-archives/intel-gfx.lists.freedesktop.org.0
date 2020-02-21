Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCAB168325
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 17:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620976F4C8;
	Fri, 21 Feb 2020 16:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3316F4C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 16:20:33 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id g13so850639uab.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 08:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xdyiBubcDaZpwIJIZWOTFb3kN2GuY5i3PvVhn209QA4=;
 b=V7QDhaOAvc0f7lix5nAOj5uul+/9Dh5xYuB6BVjH2NfgSPYzkaj8M0wgvg8GSkKtS3
 KXCaH/UHCFCF28hdXBO6UnoxHERs8zLOmU4c+pfuREUGz2ui8ZesS7JMbdUv/hRcPvVo
 EEMXjv1fvfSYT9uelQB0M24CR3PrJ/dRhSi/byMezGpVce4jpjrCmau2HYgzxtIYr1qB
 aAxV06gZqiS6qpxp8nGaJYrVZkKKQ4o6Hcckq35cJn068YZs2Shfal6Njh2mczGBstZB
 TNFW+6vclLZVG+AjdpyiHOsLXR7+8kbJqThqQe/SBb6wLKf5TG7HifG97Y9OXd6qQtZ5
 39vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xdyiBubcDaZpwIJIZWOTFb3kN2GuY5i3PvVhn209QA4=;
 b=FoQ6NHCNq9Cdo3EKFOc/2WiP41L18Bay1JhBqCNvdRh/QjUKglXuxq8XgWE0KT87yo
 lysy+NuXl/oMy2FxK1SVri3EH45irS3tvx9G50mmqiy2lAHM9+glwAwzZaP3iccEFkFV
 HNMuVVXgVsXzhUEPGgAGEsxr0k9LBisNTPkrgwx1EpHAajj8G3+wVUqrNhD7mCy9z5t7
 OrPohEQQpNTtw8eLzK7x+ZBecIBKaz5ji00Dr05hR0761m9paHLxGqtwFH0IhJ6rKVeO
 Mrw/Gntvo5+cu8eAVv27xr7KH0g5qqgVO14vZUx8DxccKx9+np3Wy8sxVEc6mkCp+drN
 8y9g==
X-Gm-Message-State: APjAAAUTzcfpK3n42eizlR9V36LhpzdbKbzUsOfNX8DDRYHyZqMRe88d
 FH3IMWCFe/1U6XzvoCoCCnyulfDFClTPYjY3K+k=
X-Google-Smtp-Source: APXvYqzlluUNh1JT6C86kWx+mkHPg2IfOSnSndRh1tF/TQVJEDcM1YmPHBsJDvOGEWZYQCcLU4swO77vLdqKCx/kqvI=
X-Received: by 2002:ab0:2881:: with SMTP id s1mr629787uap.95.1582302032044;
 Fri, 21 Feb 2020 08:20:32 -0800 (PST)
MIME-Version: 1.0
References: <20200221100953.2587176-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221100953.2587176-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 21 Feb 2020 16:20:06 +0000
Message-ID: <CAM0jSHNPLpMnpJ0tQNZp5DMR5fOVPLnJM+5-ztEpR2AOywSvqA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Break up long lists of object
 reclaim
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

On Fri, 21 Feb 2020 at 10:10, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Call cond_resched() between each freed object in case we have a really,
> really long list, and we don't want to block normal processes.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
