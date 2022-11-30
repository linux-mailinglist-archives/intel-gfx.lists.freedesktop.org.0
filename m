Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A663D606
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 13:53:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A04710E096;
	Wed, 30 Nov 2022 12:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B47510E096
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 12:53:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 566FBB81B34
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 12:53:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21CABC433D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 12:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669812801;
 bh=O135k3EjtaR5pVeq5ZX3cd5MKaWtgT0WO/xCt+a4K+A=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=TprDieo+6NSQJM7mxZcDbfJwznJcjKWqsBJYo2GTaHoPArog6uAik1xQA4XM7fSDF
 qZbBmH5GRYMVn13lG+w6gaJ1EjTm4ffQnwVpQ31Aa4xcyfGPNTiIE23B9M1zyJ0BeO
 P4qob4zjSLXOXUrkODrKhy4Mc7226QiUMCaaK3UqH/4lw0OuSK9B/5DUFZt08n0DMA
 tE0DJEr1m2OLG2ngQTxiEBBFwibXR5CxccDdcy2qfQw5nMMlSb/WdOoklc1qCJae4G
 vXmB4l6v2s9jVm4j3u9VXKkfkmewzj9x90iHTWfqR3RHR2ScNu6Fs1YDzrK600Xhvy
 XTjmw5VmNxQEQ==
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-141ca09c2fbso20826985fac.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 04:53:21 -0800 (PST)
X-Gm-Message-State: ANoB5pn4u9TyvGFWFfHEDAWWF8gwWFznZp+aDW/+LY30tszoX1td7iQ5
 KoVHCMf5T9mhi9bqFSqHlpSpNDkkSi1iVUfrqxk=
X-Google-Smtp-Source: AA0mqf6Sr2IS6+ys5YTP/Df4NQKDayIfhQtpmu93rN5w+I/XEB+8J8PQnHdS2VNL4gI4BmaVQMh7xYbBaGVBkLGn6WI=
X-Received: by 2002:a05:6870:fd8d:b0:13b:5fff:181b with SMTP id
 ma13-20020a056870fd8d00b0013b5fff181bmr23339824oab.267.1669812800250; Wed, 30
 Nov 2022 04:53:20 -0800 (PST)
MIME-Version: 1.0
References: <20221123140335.4xqxepev4bdvybut@gjsousa-mobl2>
In-Reply-To: <20221123140335.4xqxepev4bdvybut@gjsousa-mobl2>
From: Josh Boyer <jwboyer@kernel.org>
Date: Wed, 30 Nov 2022 07:53:09 -0500
X-Gmail-Original-Message-ID: <CA+5PVA6rWdPwgmy7RvTY_GbOcGz8qR-6-08Too47_66+aQCkhg@mail.gmail.com>
Message-ID: <CA+5PVA6rWdPwgmy7RvTY_GbOcGz8qR-6-08Too47_66+aQCkhg@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] PR for DG2 DMC v2.08
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 linux-firmware@kernel.org, "kyle@mcmartin.ca" <kyle@mcmartin.ca>, "Hutchings,
 Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 23, 2022 at 9:03 AM Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>
> The following changes since commit 391fb47caabaae8719fb72ba4891d1fc27ca1923:
>
>   amdgpu: update green sardine DMCUB firmware (2022-11-17 10:42:59 -0500)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_v2.8
>
> for you to fetch changes up to 7f6279b3dd76ff955278fcd9e517eab85a4c97d6:
>
>   i915: Add DMC v2.08 for DG2 (2022-11-21 16:38:26 -0300)

Pulled and pushed out.  Minor conflict in WHENCE fixed up.

josh

> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Add DMC v2.08 for DG2
>
>  WHENCE                   |   3 +++
>  i915/dg2_dmc_ver2_08.bin | Bin 0 -> 22540 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/dg2_dmc_ver2_08.bin
