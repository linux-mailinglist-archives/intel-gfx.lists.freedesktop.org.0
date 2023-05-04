Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7822A6F69B9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 13:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1272E10E05F;
	Thu,  4 May 2023 11:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61F010E05F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 11:21:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 375F46335B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 11:21:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A03CFC4339E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 11:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683199260;
 bh=ljZUTddvaj7uRfhD7+gnwj65qqG+M216XcDPeqNqRBs=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=tLTjXy6qC/GGfHlzP+ZZoG+zDRYvAdAtw0bvdb+E6Vn7joQn6QqVlmoo45QacYPBt
 SYwNxhbtEvsXiis8/29iZemrH67/KieAva3AgZhQ/+Ut2f2hDwJwqCD5/JRspL2/YP
 cv0Q1R3U9SAJq0GCPgG9oO9EFa/C4141TiZONwme1E7Mog05gFprXLYWmWQZCKpAu6
 MPmjboMCJ7aPWzhblVXADCmUIASynctf0SLHxpmY8HRSSxr0h364m0eQNF7oTF3+Dl
 0aN+lFuQ9Tt1eOdSxY9SZGR7IdFRBM/VAYXcuY28otTqqjv1CxY025stZS8WR93Z/y
 ADm972ezabPcA==
Received: by mail-yb1-f177.google.com with SMTP id
 3f1490d57ef6-ba1815e12efso321561276.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 May 2023 04:21:00 -0700 (PDT)
X-Gm-Message-State: AC+VfDxNY3HrOmoUIqe0GSAK9hBwG2fPxJZqbiOo+4j6SEsSJwlrLMd+
 QfZ8FCLgQubFNP6cfgzz0ffwkhGiiw96KGKNZWg=
X-Google-Smtp-Source: ACHHUZ4hyiXFELtz+uH8zvw8xtX7BmLLptktEnELOmhcTb24Lwh+67J3WumMHl3nMeNdhpqCoIteLxnwhijC5HW3nDU=
X-Received: by 2002:a25:2491:0:b0:b67:463e:a719 with SMTP id
 k139-20020a252491000000b00b67463ea719mr22790069ybk.46.1683199259680; Thu, 04
 May 2023 04:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230503165828.1002609-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230503165828.1002609-1-John.C.Harrison@Intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 4 May 2023 07:20:48 -0400
X-Gmail-Original-Message-ID: <CA+5PVA6eQnGfJ8FD9ZWWbgcGOJVHDpaJt3piNgnX-4TT=siYZw@mail.gmail.com>
Message-ID: <CA+5PVA6eQnGfJ8FD9ZWWbgcGOJVHDpaJt3piNgnX-4TT=siYZw@mail.gmail.com>
To: John.C.Harrison@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for new GuC v70.6.6 for MTL
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

On Wed, May 3, 2023 at 12:58=E2=80=AFPM <John.C.Harrison@intel.com> wrote:
>
> The following changes since commit 312c61f5a6c9c6a313383a8f0c2b02711ec152=
62:
>
>   amdgpu: update DCN 3.1.6 DMCUB firmware (2023-05-03 09:11:02 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware mtl_guc_70.6.6

Pulled and pushed out.

josh

>
> for you to fetch changes up to 192ee6d1a7806620eeb6f8478e6a3ec6ea44821c:
>
>   i915: Add GuC v70.6.6 for MTL (2023-05-03 06:45:11 -0700)
>
> ----------------------------------------------------------------
> John Harrison (1):
>       i915: Add GuC v70.6.6 for MTL
>
>  WHENCE              |   3 +++
>  i915/mtl_guc_70.bin | Bin 0 -> 303936 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/mtl_guc_70.bin
