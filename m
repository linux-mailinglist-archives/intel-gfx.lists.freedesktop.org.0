Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7265AB40A09
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 18:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34A810E7C5;
	Tue,  2 Sep 2025 16:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="A2Ce0e3v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC23210E7C5;
 Tue,  2 Sep 2025 16:00:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9062243793;
 Tue,  2 Sep 2025 16:00:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FA3AC4CEED;
 Tue,  2 Sep 2025 16:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1756828849;
 bh=klcLJVJ+9mlEKARtPSx4WiHGIYljswOOCpMzTEpVHJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A2Ce0e3vKg28nsh2IyEJx+DbtVZjWICjV0n4tCYxOOyqtTZ5mHyD7dh/xnRad+Yyp
 EVF/InxLpi2porWhkbrshGDoxr6aKf0bDN/RF3h6Tz7vNgGMYnJo0Y9KpiNGyg6eLr
 EKVPhK+WOEJfzdGZCNPGVOaC4QbfAZG6dEdp3AyJiSoOxJflwv34Yljynjy4PJ8XnB
 ZQewr4YkVLeNRIPHG2VXbw/OBbSyGt6uiEURQZQODyGe2GPoQO3OEJwm0xQ2QSrG9d
 LLCKR4HQ3opWD7D/mrffkmb6L3YmuJJ1OzoxSWb7iH6isHT5FwOSyzwW47QwIxNOw+
 bwE/BUN019oPw==
Date: Tue, 2 Sep 2025 18:00:46 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/power: drop a couple of &i915->drm usages
Message-ID: <7pcam3jusa5f4tjbdjlmix44rrsiy535vogb6xugwfcrj2gshq@ppx5j47f7jbt>
References: <20250902144929.3026700-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250902144929.3026700-1-jani.nikula@intel.com>
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

Hi Jani,

On Tue, Sep 02, 2025 at 05:49:29PM +0300, Jani Nikula wrote:
> Switch from &i915->drm to display->drm.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
