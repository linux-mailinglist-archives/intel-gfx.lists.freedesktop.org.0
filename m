Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EB6B0775F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5063710E0BA;
	Wed, 16 Jul 2025 13:52:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="doQWwYw+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86F510E0BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 13:52:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 118A3A572F2;
 Wed, 16 Jul 2025 13:52:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27D34C4CEEB;
 Wed, 16 Jul 2025 13:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752673970;
 bh=jmAkcRLS6tu8ZafcoDJl5VzoTx1vxWeyzdclSXrNIOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=doQWwYw+RiCIJX2Yce+kYqI7leFd1GIiOIRo8k9XrfnOBT7vnrYge377feB32iHBc
 Z1s0bY+VeRUbyBopEsGjIHvwZzdeIeZZvjSFTSS9yhbTkuonqx128ku5eM6SDPrmXL
 0w+5s9H69B+TrH1wIXLSFEsZU+peSW+4ybbtsEX0XHBpk+D2D6iznOJdBzR00oVISj
 meMGPFfQD4LLsbwXmk0ElKqE73sLtrp5+IQ1ODcDYsIYxcS5+FvmWNxGX7T+lXHLDo
 A7V1VDLaNZ8dXh+JUFXVdoGLof3/9+tf0Gvhvu0XXiEP3WJ4pLnaKWyt+wWWbAIzkv
 HZzf6+XQjs80Q==
Date: Wed, 16 Jul 2025 15:52:46 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH 3/3] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
Message-ID: <j3q3mnt54wmdhoksxsx2ybv2z63j6femagt4kjmbyailbcpr3m@433enaxizil2>
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-4-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-4-sebastian.brzezinka@intel.com>
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

On Wed, Jul 16, 2025 at 09:37:27AM +0000, Sebastian Brzezinka wrote:
> The value 4095 is most likely intended to represent PAGE_SIZE - 1.

"most likely"? We need to be sure :-)

Andi

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
