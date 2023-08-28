Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BF478AE0B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 12:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE3410E286;
	Mon, 28 Aug 2023 10:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE27D10E286
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 10:55:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0865264598
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 10:55:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BEC1C433C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 10:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693220129;
 bh=dm9y9OCP+t43iO19XArWc+A5EajPmlhWmQiniBBe6EI=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=f39yRMGx1Ul4Hlmuh7KqOqegKQKbJlfjnmRsJGT5wGIgYo3qYYqyE/j0whIppqkCT
 zZQiFUMzY8xT+5s13uZ2P2QKFp1znV78UFeal2TEkIN+DtlCKGwqBa4xUFFpaEvXiN
 ZJmWlOcioZ3lTpz72iSTuR5zyO2LtFtEBqyBrn/CnOaRg4Ji/yodZWHTv6LcV2dfcn
 iJGBMwqcKTGLqQH+NaAIrM89IhxgA/Ud0zzDGV0XfrKfM6Ib/XOPwHC5nviMc2gqJL
 kXfvWEqFh1XrL9IUnPo+CHi7QvL+3x4WtEqO6IynJtQgwuUgLU2798e1K4JRkxVbZ2
 ydUYqUxg8COmw==
Received: by mail-yb1-f172.google.com with SMTP id
 3f1490d57ef6-d66f105634eso2698425276.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 03:55:29 -0700 (PDT)
X-Gm-Message-State: AOJu0YwLwag8CYe4sN0YvqyTQgA1F2wemTRpse9Gj4JJ4V7RbSwYjc2H
 z2AjobDyAdpLHfpLHOB55uw6If3qL5m1VWR1pjM=
X-Google-Smtp-Source: AGHT+IGSgbXBFnZtjGGBOVBt1hFAkHS/vTA4TQkoHVcdFTW9O/hoMnUCw3DaA7J+fGZ8VB7l+dYXVgNG9PZL7VG7+30=
X-Received: by 2002:a25:4014:0:b0:d08:20f1:f7cd with SMTP id
 n20-20020a254014000000b00d0820f1f7cdmr24139775yba.16.1693220128411; Mon, 28
 Aug 2023 03:55:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230823184247.1767725-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230823184247.1767725-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 28 Aug 2023 06:55:17 -0400
X-Gmail-Original-Message-ID: <CA+5PVA61vRm9ZawR=gh_FLPEniOLdX0udQjjro3q79_yGOasuw@mail.gmail.com>
Message-ID: <CA+5PVA61vRm9ZawR=gh_FLPEniOLdX0udQjjro3q79_yGOasuw@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for GSC FW release 102.0.0.1655 for MTL
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

On Wed, Aug 23, 2023 at 2:43=E2=80=AFPM Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
> The following changes since commit 0e048b061bde79ad735c7b7b5161ee1bd34001=
50:
>
>   Merge branch 'for-upstream' of https://github.com/CirrusLogic/linux-fir=
mware (2023-08-14 13:03:41 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware mtl_gsc_1655

Pulled and pushed out.

josh

>
> for you to fetch changes up to 81caac98eda16944446fa057191ee969c377154a:
>
>   i915: add GSC 102.0.0.1655 for MTL (2023-08-21 14:13:11 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>       i915: add GSC 102.0.0.1655 for MTL
>
>  WHENCE             |   3 +++
>  i915/mtl_gsc_1.bin | Bin 0 -> 1142784 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100755 i915/mtl_gsc_1.bin
