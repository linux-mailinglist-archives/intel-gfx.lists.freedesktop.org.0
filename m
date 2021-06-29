Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C35AC3B6F1C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 10:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310AC89F31;
	Tue, 29 Jun 2021 08:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8318489F2D;
 Tue, 29 Jun 2021 08:12:59 +0000 (UTC)
Date: Tue, 29 Jun 2021 08:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1624954376;
 bh=Wt1VzxpUKhVa3HzTLpE5SfzFn/YP4YxfPtnwrLRl/ko=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=kT+JW4ZQ/XLWZcl11bQR37x0+KSRaeQZh+kE4omXiV6BfWIXtXDd9WyZtDYY/JY9Q
 1zd79RntcYijrdG1waxiPh2nou/ZvBfvcZypHdKrnM3PwLNucQr0OzCcTVrq4rh8Ni
 m00QGUE0GcaCzer16iFx8ghVLePzrSLxcbmBR4jKdOIvbVxdAc9OX7/52DB/6bp8/J
 0WoLL0L4vGQIbORx3tk9vDc6XpknNlwi+5ZDIdukmY8s898XGiSCv8U8BfB9vVj2WN
 cqt8zTHmvFnErL8LXt3H3nz10WMmR/gSmecxKqQLAOoPnTlcU59248/yhsU0VgsSln
 j3LySWnSFt73Q==
To: Pekka Paalanen <ppaalanen@gmail.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <jIDQ2rRRMWlhDDPf08Z8xZlEE8HTBx7fHsylFdK0joSSFVyES8D444Giyiji9zbIm7dU4QpbsXZLvIDTbGW0wEoUWKsMEI4evizn0UdGMvM=@emersion.fr>
In-Reply-To: <20210622101516.6a53831c@eldfell>
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
 <20210618091116.14428-13-wse@tuxedocomputers.com>
 <20210622101516.6a53831c@eldfell>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v4 12/17] drm/uAPI: Add "preferred color
 format" drm property as setting for userspace
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: sunpeng.li@amd.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, amd-gfx@lists.freedesktop.org, tzimmermann@suse.de,
 alexander.deucher@amd.com, christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tuesday, June 22nd, 2021 at 09:15, Pekka Paalanen <ppaalanen@gmail.com> wrote:

> yes, I think this makes sense, even if it is a property that one can't
> tell for sure what it does before hand.
>
> Using a pair of properties, preference and active, to ask for something
> and then check what actually worked is good for reducing the
> combinatorial explosion caused by needing to "atomic TEST_ONLY commit"
> test different KMS configurations. Userspace has a better chance of
> finding a configuration that is possible.
>
> OTOH, this has the problem than in UI one cannot tell the user in
> advance which options are truly possible. Given that KMS properties are
> rarely completely independent, and in this case known to depend on
> several other KMS properties, I think it is good enough to know after
> the fact.
>
> If a driver does not use what userspace prefers, there is no way to
> understand why, or what else to change to make it happen. That problem
> exists anyway, because TEST_ONLY commits do not give useful feedback
> but only a yes/no.

By submitting incremental atomic reqs with TEST_ONLY (i.e. only changing one
property at a time), user-space can discover which property makes the atomic
commit fail.

I'm not a fan of this "preference" property approach. The only way to find out
whether it's possible to change the color format is to perform a user-visible
change (with a regular atomic commit) and check whether it worked
after-the-fact. This is unlike all other existing KMS properties.

I'd much rather see a more general approach to fix this combinatorial explosion
than to add special-cases like this.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
