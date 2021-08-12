Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694F23EA557
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 15:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22F56E40D;
	Thu, 12 Aug 2021 13:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D81D6E40D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 13:17:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8BAB610A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 13:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628774252;
 bh=0pq9thTpUxN/XBgI6UiELffiw3TwJYtl4LQsaPbYEFo=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=XFMuztRaqnnNU/qk8mVBxQ2uqSOuRip2m7AJBAPhWo28aOA2pQUYiBKdyXhR9Zo8c
 3Fnllt57bExz2tJkmK55p7HBQgb6K4yDPswHXIAP7NdVSHDUEI1WtznNv7vKjPJ/6e
 mrCEaRtbS6hZFn+xC0XU8ODZCs0aMorYDiEraZrtvLArRNULql169eaKvwr5YSltt2
 8lgoymWyaZ0vx8eHKdNkd3FKER/L2CW2EbaRWT8MZMhl9puTN69l3aPSrCpuVDLmXJ
 l2Ki8v2krEWfQgfD4Y0Nl3KAwsN4oiVPsPFM5Vqkr5sI2JCPAJSbVSh3dXc/FWzw7a
 B/niseXEC/DzQ==
Received: by mail-io1-f46.google.com with SMTP id y1so8280810iod.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 06:17:32 -0700 (PDT)
X-Gm-Message-State: AOAM532hkIaI2i35XMnq+XAdaWiP3rvQJEozwoZEZQmDxTobv/uAeDoL
 yQLzruO1bg/49kzo9buODJxvC6asMCYdnX3PumA=
X-Google-Smtp-Source: ABdhPJxJDmrsOuEn0BSLpXe327UgnIG+TH4Tx6UFF33UyqCsbOpHecwWWL+3EKQZTkgyG+AzFz997uATgi/UofZfryo=
X-Received: by 2002:a6b:f205:: with SMTP id q5mr3138779ioh.158.1628774252396; 
 Thu, 12 Aug 2021 06:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <501e28bddabb4214a3c0c9f7fa8f320a@intel.com>
In-Reply-To: <501e28bddabb4214a3c0c9f7fa8f320a@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 12 Aug 2021 09:16:00 -0400
X-Gmail-Original-Message-ID: <CA+5PVA4p_tWOiijL3xF685mhKKADm0MaRROYn0gaeaY1iAwoxg@mail.gmail.com>
Message-ID: <CA+5PVA4p_tWOiijL3xF685mhKKADm0MaRROYn0gaeaY1iAwoxg@mail.gmail.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Cc: "linux-firmware@kernel.org" <linux-firmware@kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@mcmartin.ca>, 
 "ben@decadent.org.uk" <ben@decadent.org.uk>, Josh Boyer <jwboyer@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] i915 DMC Updates - TGL:v2.12 and RKL v2.03
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

Pulled and pushed out.

josh

On Wed, Jul 28, 2021 at 1:01 PM Srivatsa, Anusha
<anusha.srivatsa@intel.com> wrote:
>
> Hi,
>
> Kindly pull these updates from i915.
>
>
>
> The following changes since commit 168452ee695b5edb9deb641059bc110b9c5e8fc7:
>
>
>
>   Merge tag 'iwlwifi-fw-2021-07-19' of git://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware into main (2021-07-19 14:35:47 -0400)
>
>
>
> are available in the Git repository at:
>
>
>
>   git://anongit.freedesktop.org/drm/drm-firmware tgl_rkl_dmc_updates
>
>
>
> for you to fetch changes up to 6c9fd94d41310443ea4ff782ce1545e49e74221c:
>
>
>
>   i915: Add v2.03 DMC for RKL (2021-07-28 09:45:27 -0700)
>
>
>
> ----------------------------------------------------------------
>
> Anusha Srivatsa (2):
>
>       i915: Add v2.12 DMC for TGL
>
>      i915: Add v2.03 DMC for RKL
>
>
>
> WHENCE                   |   6 ++++++
>
> i915/rkl_dmc_ver2_03.bin | Bin 0 -> 18476 bytes
>
> i915/tgl_dmc_ver2_12.bin | Bin 0 -> 19760 bytes
>
> 3 files changed, 6 insertions(+)
>
> create mode 100644 i915/rkl_dmc_ver2_03.bin
>
> create mode 100644 i915/tgl_dmc_ver2_12.bin
>
>
>
> Thanks,
>
> Anusha
