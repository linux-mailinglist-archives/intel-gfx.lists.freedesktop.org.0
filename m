Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A88C47512CC
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 23:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082D410E076;
	Wed, 12 Jul 2023 21:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725BD10E076
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 21:58:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4826A6192E;
 Wed, 12 Jul 2023 21:58:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10E63C433C8;
 Wed, 12 Jul 2023 21:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1689199084;
 bh=jZSsvZWCvXFez0v6aF03Ya52fB0dSIQ4PPjVA1ZEURk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CLdBTx5e7UlGsaNNbAsUQ0XInbDMk+oR+Ef3P4N2MtqqTRcgZ9hJai75YxT3OWctg
 79PqKHmifmOrhDK9ZKPrfgjrLoSLMosNknkY0LO/+ALT+icqAUDmyT+Mz51tdP2hfs
 If/D34wW6Dj3scaMmvy6prejlUhtqdLqVf1hQkaasBpGMqVaD6LFeByH11ekBTA4TU
 6IJZJdqk4CokwRFpdFHiT7Un1lis0UHNpUhetsXh9bySPdWMIckWfUCixS1yPLsENu
 S8qMBsZvw8DQB7P2puRe336YPqMJ3WB0Ca0tNJeG8qGxwoje3g19pANpi3wYr1tnG7
 8/8+xfW2E2CMA==
Date: Wed, 12 Jul 2023 23:58:00 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Message-ID: <20230712215800.nwqk4hjbpplbfvs4@intel.intel>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-5-andi.shyti@linux.intel.com>
 <6693d0f0-d9fe-464e-0d2e-7d19804e23b8@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6693d0f0-d9fe-464e-0d2e-7d19804e23b8@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/gt: Support aux
 invalidation on all engines
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

> > @@ -301,11 +336,7 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
> >   		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
> > -		if (!HAS_FLAT_CCS(rq->engine->i915)) {
> > -			/* hsdes: 1809175790 */
> 
> We should keep this reference which is getting removed by this patch.

Correct! Will add it back in the proper function. Thanks!

Andi
