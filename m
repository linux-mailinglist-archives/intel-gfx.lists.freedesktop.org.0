Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F56FB07C08
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 19:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07D810E2B1;
	Wed, 16 Jul 2025 17:29:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ltNrT3uq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DEF10E2B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 17:29:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A412961433;
 Wed, 16 Jul 2025 17:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71AA8C4CEE7;
 Wed, 16 Jul 2025 17:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752686986;
 bh=AOcGVglOEtuSqId06h214Q4JCt0IbTi2gVfs63CnQdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ltNrT3uqqGRUzuB/R73Hku41BLGGWj2MLFy+IH19GxrP/PaxGCFnzafJ3WdomEWpR
 rm8Hta1gj5VUWtcApuJTJUrE2s9F3Da0U9tVI1KxN6zmBkKCT7ZGbBSagWI98i/Muk
 Gk/kaYVkcVHuqRR09ArA46YR7ygZTQAkWdWbXBgPZn4q5zBq/pa3LL2nThMQNIIXpF
 PBnxgqeMIGa9w+GlyPMgYbxEx+13b8egSfk5w/1f/IcEUcl3Ifk/NOvzV9KedCtbLq
 CPOGzlX+mZ/5JkX0ZPiJHm57LRAJodvp61r+h3LC00bgS/uixlyTtqf/KEiehbxp9m
 Hep18l5DpFiUg==
Date: Wed, 16 Jul 2025 19:28:19 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
Message-ID: <cetvl5iy2fhmaiwkr7lbsrs24afdke76vhcrxvdepdqvdujhvm@bc7ntlhdcnhd>
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-2-sebastian.brzezinka@intel.com>
 <htvnnxraq3dichhoa22cvvhxh4qzv3wyg7gyxxdwn7i7gye37a@hig3vattgvdh>
 <DBDK1X31YM2T.1DZCWWEZYALZI@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DBDK1X31YM2T.1DZCWWEZYALZI@intel.com>
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

Hi Sebastian,

...

> >>  out:
> >>  	reloc_cache_reset(&eb->reloc_cache, eb);
> >> -	return remain;
> >> +	return ret;
> >
> > now, this function is also returning a different value, not the
> > remaining bytes anymore but 0 on success and -error on failure.
> > Is this something you wanted?
> Function still returning the same value as before, but now we
> don't reuse variable. Regardless, the caller treats any return
> value the same. Still, the return value is either 0, an error,
> or an offset, just like before.

Even when this is true:

		} else if ((s64)offset < 0) {
			remain = (int)offset;
			goto out;

?

Andi
