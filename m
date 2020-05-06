Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 127551C7E08
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 01:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE296E077;
	Wed,  6 May 2020 23:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B8E6E077
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 23:42:12 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBA5D2076D;
 Wed,  6 May 2020 23:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588808532;
 bh=CrL0vY8NzNe+Jnr1Alkh1Cnhdd78xGVrP+CFWalWXyo=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=ruquXAZzhXmj9ypRdl1IIVXjYGUvKM9XDqkHbXx7aVNiMy1aEnsU+HEikHfH+Q/Mq
 NL6+ikdZiJ9M1cbDyQs9DuLxjkL3rPoLPsi6SoHHfSpdh1KyFIBEO6X3M5LrWeQRCY
 uasujcTleIdKBWXcocTN9m0zgtQCrfFDnivV/QRk=
Date: Wed, 06 May 2020 23:42:11 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200505131516.12466-1-chris@chris-wilson.co.uk>
References: <20200505131516.12466-1-chris@chris-wilson.co.uk>
Message-Id: <20200506234211.EBA5D2076D@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Mark concurrent submissions
 with a weak-dependency
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: c81471f5e95c ("drm/i915: Copy across scheduler behaviour flags across submit fences").

The bot has tested the following trees: v5.6.10.

v5.6.10: Failed to apply! Possible dependencies:
    8e9f84cf5cac ("drm/i915/gt: Propagate change in error status to children on unhold")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
