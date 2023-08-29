Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C94378C7E0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 16:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A7410E374;
	Tue, 29 Aug 2023 14:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA8810E374
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 14:46:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E2ACB61C54
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 14:46:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55991C433C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 14:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693320405;
 bh=aTVfCS5G8oNdVAkcUiSVyTv7+G6m0h198/8RZVHDp4o=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=A1t4e8a3y3JUyrv8aobUj2xI6AC0ndaeSIxISXGaO2AOvztbetXEg4mxvNgGHpb0c
 W7NHtgFCuL/DkFUJ76XCyueFwQRVHYiBYRbaU3OcJ8Is7fV9kBC4xa7SArARhLkPnZ
 1TJrkIpK9huMIrNYjdtAIowWVSJxrHxIwyJOArMm8FiuDKGL5XwAHwc68rNsuuVQyW
 CgfScIRrpMHaGrbVbMVvHFM8c2/mgCy5URrKDbr+Tjcwlzm7qUBB1yJDlNZkCD/Aio
 Zzmt5wHbIAdAMwepYUax11pHma8rRlbrB/DFkI3jDnVkyFZ968rasrfCQMGtS3tbNu
 oFUGbK28/lnPg==
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-59209b12c50so54542857b3.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 07:46:45 -0700 (PDT)
X-Gm-Message-State: AOJu0YzpiYiFsqQgL4UDuHZXF8oosVNJPbxVuIKsae26KaMAr/9KDacT
 d6b6CTHHeVKRz/IkYmT7dGUGjH/Qj/EjoJ0u91M=
X-Google-Smtp-Source: AGHT+IGWVbnosjzoV5p1Pex3bCnY2iwJeAP0RxIUvAXZ7o4t8KS6z68jmajeVSJeIOuZm+dzwcwmaf2SvHhc8+lQpkQ=
X-Received: by 2002:a0d:d646:0:b0:570:77b3:1c78 with SMTP id
 y67-20020a0dd646000000b0057077b31c78mr30552225ywd.25.1693320404302; Tue, 29
 Aug 2023 07:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <ssndxmkgnqc3nkhe4l6ohs6kbrufiiv4vxukecuiz5ayki34y7@iw77itt3adlo>
In-Reply-To: <ssndxmkgnqc3nkhe4l6ohs6kbrufiiv4vxukecuiz5ayki34y7@iw77itt3adlo>
From: Josh Boyer <jwboyer@kernel.org>
Date: Tue, 29 Aug 2023 10:46:33 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7_HuOOM+s+EnD94CP5-SK6kWsH2T_app-XBh5cwAsQqQ@mail.gmail.com>
Message-ID: <CA+5PVA7_HuOOM+s+EnD94CP5-SK6kWsH2T_app-XBh5cwAsQqQ@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for MTL DMC v2.16
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
Cc: Josh Boyer <jwboyer@kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-firmware@kernel.org, kyle@mcmartin.ca, ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 29, 2023 at 8:56=E2=80=AFAM Gustavo Sousa <gustavo.sousa@intel.=
com> wrote:
>
> The following changes since commit 659dfe6435b77a075d9896ff34250bcaab55d7=
5b:
>
>   Merge tag 'amd-2023-08-25' of https://gitlab.freedesktop.org/drm/firmwa=
re (2023-08-29 07:27:29 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dmc-mtl_2.16

Pulled and pushed out.

josh

>
> for you to fetch changes up to 49f9e3479fb564ab96ebbfef327743b0ec2a7620:
>
>   i915: Update MTL DMC to v2.16 (2023-08-29 09:49:34 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Update MTL DMC to v2.16
>
>  WHENCE           |   2 +-
>  i915/mtl_dmc.bin | Bin 52164 -> 52388 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
