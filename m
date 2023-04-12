Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F54C6DF29A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 13:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670FB10E76C;
	Wed, 12 Apr 2023 11:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 560 seconds by postgrey-1.36 at gabe;
 Wed, 12 Apr 2023 11:09:40 UTC
Received: from gnuweeb.org (gnuweeb.org [51.81.211.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82EB10E2BF;
 Wed, 12 Apr 2023 11:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gnuweeb.org;
 s=default; t=1681297218;
 bh=xR4GuTL5Nmxsxu18JrbipI8OGiSCJg9nlLups6OAbag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=THfXqEBdjK14et4Ik0idqXMu7LfYqJY7h/jq/AXfwPLM9Lico4dOaOkW7jkqfFwQK
 b1pZ2hoKCYrblbz0q/6YkguN6Ejq8zm1O9W/XLdrdSPE42Pi1neLaqLPqhL91LIkrF
 3jOjZ7XmbNY6Aq5DMJItnxRSS2jBlw2PMUA03eQk/6Hof38BXvBdpsQ3m7Ua4ofCAI
 V/SLD1x8nkrmO7bYb+rAx0IRaxGxMp5sIVic7l3Ag/IEZsqU6TsL4CrXpahHcOMgdv
 h7KnVf/JaR+mdmoBqC7ZHDjEn65aRbYGyX295KOGs5uhu+wR+lEEnHGiHmZetM9umA
 pcx1ExMLp2Oqg==
Received: from biznet-home.integral.gnuweeb.org (unknown [182.253.88.211])
 by gnuweeb.org (Postfix) with ESMTPSA id C9409245324;
 Wed, 12 Apr 2023 18:00:11 +0700 (WIB)
Date: Wed, 12 Apr 2023 18:00:07 +0700
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-ID: <ZDaPNx7WSKeMqgmj@biznet-home.integral.gnuweeb.org>
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
 <87v8jetaik.fsf@intel.com>
 <ZAXT1B1GTlmA78Ld@biznet-home.integral.gnuweeb.org>
 <ZDYw0vVg7Y1oExJL@debian.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZDYw0vVg7Y1oExJL@debian.me>
X-Bpl: hUx9VaHkTWcLO7S8CQCslj6OzqBx2hfLChRz45nPESx5VSB/xuJQVOKOB1zSXE3yc9ntP27bV1M1
Subject: Re: [Intel-gfx] Linux 6.2.1 hits a display driver bug (list_del
 corruption, ffff88811b4af298->next is NULL)
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Linux Regressions <regressions@lists.linux.dev>,
 Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org,
 Linux regression tracking <regressions@leemhuis.info>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 12, 2023 at 11:17:22AM +0700, Bagas Sanjaya wrote:
> From gitlab issue above, I don't see any progress on bisection attempt.
> Ammar, have you successfully boot Ubuntu 20.04 with v5.10 kernel and
> test there?

I am still using Ubuntu 22.04. Haven't tried 20.04. I'll arrange time
for it this week.

> Anyway, I'm adding this to regzbot (with tentative commit range):
> 
> #regzbot introduced: v5.10..v5.15.103
> #regzbot title: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
> #regzbot link: https://gitlab.freedesktop.org/drm/intel/-/issues/8274
> 
> (Also Cc: Thorsten)

Not sure why you marked it as regression. I haven't even found the last
good commit. It's possible that it's always broken since the beginning.

-- 
Ammar Faizi

