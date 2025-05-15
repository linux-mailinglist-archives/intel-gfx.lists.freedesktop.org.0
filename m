Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD83AB89A4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 16:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571E110E8CF;
	Thu, 15 May 2025 14:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="LyBF+e8S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A86F10E8CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 May 2025 14:43:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2806CA4DDFB;
 Thu, 15 May 2025 14:43:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE20C4CEE7;
 Thu, 15 May 2025 14:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747320198;
 bh=wDAJwoJn8sWFyIah414IR4gYEd9504X7l5lMFESAG3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LyBF+e8SSraGv5PixSyxyz0Oim21F0VQ8sAT07YD0Uza43z7S4/JZaLDZ99oGoiDG
 W96bqKpAbF+JGD5ITrr/zOKdkXOD6e0OsF6xCQKPRdqZshNco+lk8lKe2os8nArVap
 XW8OZb2AkhCetZMQXTpd2c0fzPnpGUnm9S/th2KZGIpKaUR7Iv3EmgfM1Alvmlf37s
 vbMPDa1nv9dZammYA8hT6BOVwF48W1sXFwTv1agkvwHlknm+dpHU5r+x826kPltaTp
 Zttyf1wkA/2GuJoHufO9TB5Y+eSWogup+jw0Rqwbs7mlAuxbEIWaT5LnKwgLHv64rO
 kFMayiu2lt6mw==
Date: Thu, 15 May 2025 16:43:12 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: DG1 fixes (rev7)
Message-ID: <7n67e3tpxxxrfvh3synrmnvpsbtcwudufv6ijjutnn3sdsjd32@4l7dvbad5vip>
References: <20250512192216.301771-1-andi.shyti@kernel.org>
 <174711066429.72431.6925085785209764406@c664b1dc75d1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <174711066429.72431.6925085785209764406@c664b1dc75d1>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

> Possible regressions
> 
>   • igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
> 
>       □ shard-mtlp: NOTRUN -> INCOMPLETE
>   • igt@kms_plane_cursor@viewport:
> 
>       □ shard-mtlp: PASS -> DMESG-WARN

I believe these failures are completely unrelated.
