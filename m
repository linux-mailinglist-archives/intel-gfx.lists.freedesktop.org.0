Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBF672333D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 00:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C7510E18B;
	Mon,  5 Jun 2023 22:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F4C10E069;
 Mon,  5 Jun 2023 22:33:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BD89461D10;
 Mon,  5 Jun 2023 22:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7BEFC433EF;
 Mon,  5 Jun 2023 22:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1686004435;
 bh=Tqjwije9sLgBSKVPubakZQef4W29AG6vJdvRbwzWZFA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u4UpGwVAXBNmNOBdzFx2eOpybeXThMuPcjcEDpb2NvlXw2cu+FC/OTJCsZx330ANA
 ltRzzkE8ui5JByaYoCTzdMFV2PZrrWvNUkDpDh0jha8XpttHWzXWT+ePGhofCUdKE3
 Q5lNLMwhAfF3Xd8bBszufYjvzh3itiXD8/PnET6xVflb5MpRr5Yd+XuaEpAfCYDUq7
 sv8v1Ybbgh6I9s7CICIIx/xVvdL73k+fhMTh1xmVjNkwzhuOTbVbkWbV20yCUgSOPr
 tR5qNAtb+o0ibrLWy8YExtafobLRv8gypF8PNeyJwJkdgbWz+BKVhUl6/B/abzxxAZ
 B3YTRXdsObNzg==
Date: Mon, 5 Jun 2023 15:33:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <20230605153353.029a57ce@kernel.org>
In-Reply-To: <20230224-track_gt-v9-0-5b47a33f55d1@intel.com>
References: <20230224-track_gt-v9-0-5b47a33f55d1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 0/4] drm/i915: use ref_tracker library
 for tracking wakerefs
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Dumazet <edumazet@google.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Jun 2023 12:21:32 +0200 Andrzej Hajda wrote:
> This is reviewed series of ref_tracker patches, ready to merge
> via network tree, rebased on net-next/main.
> i915 patches will be merged later via intel-gfx tree.

FWIW I'll try to merge these on top of the -rc4 tag so
with a bit of luck you should be able to cross merge cleanly
into another -next tree.
