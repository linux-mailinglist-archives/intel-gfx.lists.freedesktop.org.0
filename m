Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C700B84508
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 13:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BF210E0D7;
	Thu, 18 Sep 2025 11:17:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="KFZVvuf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211AE10E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 11:17:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C3F7A43858;
 Thu, 18 Sep 2025 11:17:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D21FC4CEE7;
 Thu, 18 Sep 2025 11:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758194233;
 bh=bE/tHY9XIkqxtoxxyKRO1bgApLOWyjyRCMVeJ3Rl+KY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KFZVvuf7YD2xJ0NtU0fYelsPlTQu9NnpXb+8rFpJgql2Fkv+Gd0nu8rKWotnM/Chv
 zACI+CX+y3Ir4OsN0gDa9N9uZ14HllAa1pAOljKTCcrusveTp34qpoRjg+whF2dJVy
 5Wh50T0x0wV8Ut8DRUPSqLleG3dXTQUvcgmn86ziHZz1fmfHbvDdVcXbJPhOmyqEVH
 avMketLJ/SpetTyJ47B74xRvf6La8Kwg8jA90m3ga/TM9qRw0YLw5loKqQsr6A2K2O
 3Pm25OlG0LxGfCw4n/17OrqU+czByAQ8IMyFuZczdW1gBA+pCYKeTqHODOTHNs3578
 yjl74FHsQnztg==
Date: Thu, 18 Sep 2025 13:17:10 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com
Subject: Re: [PATCH 0/2] drm/i915/gvt: Various mmio.c fixes
Message-ID: <wndqeq6euzuz6dsjgprgbewqif4f7a7sztyq4vqdayzlzefk5l@6ntnj4ogen66>
References: <20250916174317.76521-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916174317.76521-4-jonathan.cavitt@intel.com>
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

Hi Jonathan,

> Jonathan Cavitt (2):
>   drm/i915/gvt: Remove unnecessary check in reg_is_mmio
>   drm/i915/gvt: Fix intel_vgpu_gpa_to_mmio_offset kernel docs

pushed to drm-intel-next.

Thank you,
Andi
