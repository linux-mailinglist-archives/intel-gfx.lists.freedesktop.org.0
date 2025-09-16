Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D2EB5936B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 12:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC7A10E798;
	Tue, 16 Sep 2025 10:23:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="VraTI3vL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E5A10E798
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 10:23:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E5937600AE;
 Tue, 16 Sep 2025 10:23:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C959C4CEEB;
 Tue, 16 Sep 2025 10:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758018221;
 bh=mEXIrvRA594PvSssQid++2mUGkClb5U3/RGrvkXuG2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VraTI3vL5loD35HRU5BF/klIUU2kXdu6cacVC+zYthJUG3Y3sObC1GxocBmiOrZow
 rd33FHP/IEqbE0bB8pj/2AVUVxEBmPlsGL1JoH51AqcdGBYqA2V6eQw1XWoj+hewks
 YazV1KzRM55vvMUmlHyV0ob7eE703qBOF0kEUWdYrLaJDfoqnMEIsOmY9faL5NGtZX
 dZ0eyOnrMi9i7l9nPu31G5a4wbvKFK5GXCUA5Ouetv7Y80ba9A30umooDY1ktL9zge
 Py7x8FALym5Y0xs9kKSOZlxrkLTy8FUtSfVxyz9ei08Q1misqxdRDfHbdrnT5OqrpR
 bLkuI40EtWQGQ==
Date: Tue, 16 Sep 2025 12:23:38 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 2/5] drm: Do not attempt to round_up() zeros in
 drm_suballoc_try_alloc()
Message-ID: <5ryirdm42fwetmcuyble6dbk7xc73tbcxro6kfzrr3qlmszxpm@vspspesjf6re>
References: <cover.1757576103.git.krzysztof.karas@intel.com>
 <be63aaccc9beaf1861c51f069bed6982c2d01a49.1757576103.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be63aaccc9beaf1861c51f069bed6982c2d01a49.1757576103.git.krzysztof.karas@intel.com>
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

Hi Krzysztof,

On Tue, Sep 16, 2025 at 06:33:33AM +0000, Krzysztof Karas wrote:
> Due to the nature of round_up(), its first argument is
> decremented by one. drm_suballoc_hole_soffset() may return 0,
> which is then passed to round_up() and may wrap around.
> Remedy that by adding a guard against that value.
> 
> Fixes: 849ee8a2f0df ("drm/suballoc: Extract amdgpu_sa.c as generic suballocation helper")

No Fixes needed.

I don't even think this is an issue at all. I would drop this
patch. Please, look carefully at how round_up is designed and you
will see that it does already what you need.

Andi
