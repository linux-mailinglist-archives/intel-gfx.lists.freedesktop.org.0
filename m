Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBADE589B1F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 13:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF0F967A7;
	Thu,  4 Aug 2022 11:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44789967BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 11:38:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C0B55B82525
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 11:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AFA6C4347C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659613113;
 bh=z21kJlvXvK0Q1+3ihbfUBguejdVuOWAqRLEEuOwiA3k=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=Js5ktWm62Oi4vP+Js2Ebwslma5qDi45NR8EDM4NYqKv9prLobzASrwHYJIdnS1tEQ
 6EJfOhTPzOEQe3510B9sHIt4dsW0G7eaLwRs8N8L2VWrIlDVyOmcMOofUFEl7onQBH
 Tanjy/y2DKghva3NqsY5sqnBWha/RjbTsqcA/wcHYAHBfDfs4sRHROro8V7pA2c1m/
 nqTvTujaprj3SZJxyLk13N4zNDcDBCFldnZAfmbPXQGH2mYppw3Ei+18K6KYWSMvFg
 ChluU17kP2tS28NwC4rDlHkNrmKsdh2eLjOyybJKRiN7A3ujpbzwLfQkY5hTquWq4m
 she53M4wQuqBg==
Received: by mail-io1-f49.google.com with SMTP id l24so14882745ion.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Aug 2022 04:38:33 -0700 (PDT)
X-Gm-Message-State: ACgBeo0LD88m2w84L/hifm0OnV8Xq3eZbz8N1OM8hwZLHF7Fa38PfFQZ
 RI3s2I6Wr26TkMZl2FV5Rr9ltkCqDPZ/HArnGho=
X-Google-Smtp-Source: AA6agR7vKOQmlcvnZcvt2RxPpnVC+Au4MKVLJ5uNEnCmnJS/225rP/rRD6yUwokzgZAjnX4Xf5V+8XAC9dKG0kJ6r4o=
X-Received: by 2002:a05:6638:d93:b0:341:5cab:4d9 with SMTP id
 l19-20020a0566380d9300b003415cab04d9mr665886jaj.146.1659613112752; Thu, 04
 Aug 2022 04:38:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220801180229.3824606-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220801180229.3824606-1-John.C.Harrison@Intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 4 Aug 2022 07:38:22 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7p-Z+FDoX2mavn2CtTxgRYZMdww1bxZywaAg5r2zXZrw@mail.gmail.com>
Message-ID: <CA+5PVA7p-Z+FDoX2mavn2CtTxgRYZMdww1bxZywaAg5r2zXZrw@mail.gmail.com>
To: John.C.Harrison@intel.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] PR for new GuC v70.4.1 for DG2
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
Cc: intel-gfx@lists.freedesktop.org, kyle@kernel.org, ben@decadent.org.uk,
 linux-firmware@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 1, 2022 at 2:02 PM <John.C.Harrison@intel.com> wrote:
>
> The following changes since commit 150864a4d73e8c448eb1e2c68e65f07635fe1a66:
>
>   amdgpu partially revert "amdgpu: update beige goby to release 22.20" (2022-07-25 14:16:04 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dg2_guc_v70.4.1

Pulled and pushed out.  Thank you.

josh

>
> for you to fetch changes up to a4235e0aa4d4753119fd81f582eef84addf3f4a1:
>
>   i915: Add GuC v70.4.1 for DG2 (2022-07-27 18:03:49 -0700)
>
> ----------------------------------------------------------------
> John Harrison (1):
>       i915: Add GuC v70.4.1 for DG2
>
>  WHENCE                  |   3 +++
>  i915/dg2_guc_70.4.1.bin | Bin 0 -> 369600 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/dg2_guc_70.4.1.bin
