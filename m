Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B65977BD7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 11:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB34610ECCD;
	Fri, 13 Sep 2024 09:07:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="T9bxSaS6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D39210ECCD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 09:07:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F28305C5C5E;
 Fri, 13 Sep 2024 09:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9750C4CEC0;
 Fri, 13 Sep 2024 09:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726218457;
 bh=7brhamL/uQvbURtzuhiqi1K/e2r9ubXQp6Uk3jeCSls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T9bxSaS6yW2GhGrjhGBxfXzqHm8qSpyzRiE4PIg60Lj+a8p5Q02XwgolB7p825nrz
 MEhsKzDByp0fT5dO0H0hxWszP92KPtkRr1k6ulSv++NHyOkE04Ie0lKL/Jn1Mwsnr9
 GYp2G6ho49GteVAFEM2DNkEQfUhdHdTP+TvmCCMWnNvqKU5PC/pWGL8EovqQvhU112
 I9kQZEIicM5a9uesAx30cIUu3TmUWUvf78JNj2ANTWvwOONw/D7dO9G7+flggmCaeg
 SZ2hn8MWG4km31qMBj//wVT3oqYxtEwxPoYnxwRJiAuQhGKJLRMJkPyJyFnF4Kz2Ld
 5XFvy/7/472xg==
Date: Fri, 13 Sep 2024 11:07:33 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/irq: Rename suspend/resume funcitons
Message-ID: <rrd65omm4ldoimnilv4kcsyvjxc6rtgeiybjnh4mfl2b3lkt63@3wb3s5qpwm6k>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
 <20240912172539.418957-3-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240912172539.418957-3-rodrigo.vivi@intel.com>
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

Hi Rodrigo,

On Thu, Sep 12, 2024 at 01:25:39PM GMT, Rodrigo Vivi wrote:
> Although these functions are used in runtime_pm, they are not
> exclusively used there, so remove the misleading prefix.
> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

A general note, please add a cover letter even if the series
looks trivial. It's important to have an overview of what the
series does.

Thanks,
Andi
