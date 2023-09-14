Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D8779FE54
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 10:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A5110E51D;
	Thu, 14 Sep 2023 08:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F6F10E530
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 08:28:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 876C5B827D5;
 Thu, 14 Sep 2023 08:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F5C4C433C9;
 Thu, 14 Sep 2023 08:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1694680090;
 bh=MsmhYO8KJ8ECWfZWMSMi+rY8Po1xZWCObFsBHCpOn6c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cRZVXHpkX7+mCAMdof/igi9Dp/bmgFOaOxEWb+0/7Vsleq/vjC7WeEhC9gP6KRiO6
 esSdsjpmahz1W2/wYgyM5+oGYJaanY/1zNC7/XT/8SGAgt9UsefgcTvtFcnigMCw+S
 gvdGqS0xHs+DL2rlmU/lS3gba4ZTIF5v2SiPpPIVCB3rVCfco5fmGR/tYmRBUVff1v
 rPfL2WFj7L+4ifH6cCOKNQ8zf8Qe4siRqQXobCF8o8bYZAFbfZnpRKCaIaxzOtzlCw
 B3LTxwNiZrj1Xvkwal5lLLnSQ/JfLGwjolWK7Ks1wUBnH6BxoQsqqxlGy04dr4bDjY
 1tqtdPSDiZWxA==
Date: Thu, 14 Sep 2023 10:28:06 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20230914082806.zbtcyiz4s47dd7bs@zenone.zhora.eu>
References: <455b2279-2e08-4d00-9784-be56d8ee42e3@moroto.mountain>
 <169464981588.29165.162062522450308577@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169464981588.29165.162062522450308577@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Prevent_error_pointer_dereference_=28rev2=29?=
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
Cc: Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

> Possible regressions
> 
>   • igt@gem_ccs@ctrl-surf-copy-new-ctx:
> 
>       □ shard-mtlp: NOTRUN -> SKIP
>   • igt@gen9_exec_parse@allowed-all:
> 
>       □ shard-apl: PASS -> INCOMPLETE

I believe these failures are not caused by this patch. I had to
retrigger the tests because the BAT tests failed at first (Jani,
actually did it).

I applied your patch in drm-intel-gt-nex.

Thanks!
Andi
