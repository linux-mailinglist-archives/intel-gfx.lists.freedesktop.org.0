Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C91AEAE89
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 07:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6157310E96A;
	Fri, 27 Jun 2025 05:44:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="CfISt+0i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F9A10E96A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jun 2025 05:44:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D45BD6111F;
 Fri, 27 Jun 2025 05:44:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCE5CC4CEE3;
 Fri, 27 Jun 2025 05:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1751003058;
 bh=Ks7P59RD01b23KmPSNLvCNEjNotYS/hqNaurlXRS1wY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CfISt+0i5OK8cl9KyD64b5FuDOzNmmFejQVM2KN5dLL25AY5UddmxfuPGeBj6HgQu
 RVDWey60bRnfGwIYAtMpPd/om7qGUJYqH64lRzTa7hZG/swIHH3sJGFIID79yLud+/
 QpHJYjSTq53tRo4A1z7+Sf4BNKVEPay+CtObKBUvIu1aJaB0c3rKwuDF9Peg46Qbb+
 gM/GRkwbb45OTPq8xOP1//Dl+MG9domqz5ZJQePjMorUhH5/TCNG7IYBr74gs84014
 Gz6EoPV+JEk2hW48+WRnS9YVOTckdhk8o+cD6Jckpu8WUsAll4BrhKspBQMJu0Lx1W
 X4lW6ZI6inBFw==
Date: Fri, 27 Jun 2025 07:44:13 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to
 i915_gem.h
Message-ID: <mdow4gnanrdt42vfhfaok3vw74tjnamb5lkrozi42nsim7oe5c@dtiydxukilwv>
References: <cover.1750251040.git.krzysztof.karas@intel.com>
 <ca83a9d8aa86bb92de84c31fd075e92a61f78895.1750251040.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca83a9d8aa86bb92de84c31fd075e92a61f78895.1750251040.git.krzysztof.karas@intel.com>
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

On Wed, Jun 18, 2025 at 01:52:22PM +0000, Krzysztof Karas wrote:
> Move this macro where other GEM_* definitions live.

too eager to send the patch here that you forgot your SoB? :-D

No worries, I will add it.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
