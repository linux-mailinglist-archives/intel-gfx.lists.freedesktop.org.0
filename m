Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3ED89A24A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 18:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BEC10E359;
	Fri,  5 Apr 2024 16:17:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Fc7nDKnu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5F910E359
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 16:17:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3D87DCE23E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 16:17:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70DC2C433F1
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 16:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712333856;
 bh=DdqN1+75+M1zDGqGhcEWpBeqFamQsjC0GLCJ5dl5Vi4=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=Fc7nDKnuupTJGery08+0qj9Um45twnAafD3j2ufouL0Q7FhqkTKgSMmmtuP/BGSoL
 HGz7iOg6yZ7PCthmreCxykBO1GCi9uKqOzAmNNNgLnb2r5Nw+S6e4EiYsfVF0C1JIP
 /+0WaGDWLL3I7+IcL5XV9bYkYs7yuHRwWy06RQK7Gi1gi0opyowfGLAz61o1p5S2Qp
 TH64WfOWRHf9/MEzxqXJ3LS8dgfeT9+BONhyu/95mN1ktswNcU+fwc1A4ZLre9ZLZQ
 dUgzOEl7ROmnFvHFwVD//O9o8budJ/GXau/NOdA+0VbvE1CoTytKh1RQHEomD4+w34
 ZseYUcabDmBwg==
Received: by mail-yb1-f169.google.com with SMTP id
 3f1490d57ef6-dd14d8e7026so2310287276.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 09:17:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCUg4nnzq1Y28EmAj97C01oeH2E8ZtznqXSsYOWTKyUiwwjS08S0ux9QxeBo9OQl709Bel0lLc2bZFN4O6ShNmvwI0+KZUDTO2e+YXbYwv1R
X-Gm-Message-State: AOJu0YzWChPvq7qhGQMk2l+F1018GXa2GgRmeuawbn2Xu8VhA16g2IiD
 iIy2Up3pTGfQ0xNd+c3yCq0+sefQa91tJEHAFEQTLiwNlo/0qm/pBCONX85IHsG8JGjfHM4+GFM
 iZkBEkTOOr2FFUFc66HdIa8YBXno=
X-Google-Smtp-Source: AGHT+IEkVyTUVtr6OFCqWCmhArGL18PStJD0ASTAlHbghyWThmxZX1vdIgH4fspB748nKR14Qto+TYN/3Em+NkfFmPo=
X-Received: by 2002:a25:900b:0:b0:dcc:d196:a573 with SMTP id
 s11-20020a25900b000000b00dccd196a573mr1816048ybl.36.1712333855709; Fri, 05
 Apr 2024 09:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240401185015.624402-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20240401185015.624402-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 5 Apr 2024 12:17:25 -0400
X-Gmail-Original-Message-ID: <CA+5PVA76cR43jPCZmewp-sHtwufxMchM_TWoLJQXLE8HPQQeLw@mail.gmail.com>
Message-ID: <CA+5PVA76cR43jPCZmewp-sHtwufxMchM_TWoLJQXLE8HPQQeLw@mail.gmail.com>
Subject: Re: [PR] i915: Add DG2 HuC to 7.10.15
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: linux-firmware@kernel.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Mon, Apr 1, 2024 at 2:50=E2=80=AFPM Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
> The following changes since commit 93f329774542b9b7d57abb18ea8b6542f2d8fe=
ac:
>
>   Merge branch 'robot/pr-0-1709214990' into 'main' (2024-02-29 14:10:53 +=
0000)
>
> are available in the Git repository at:
>
>   git@gitlab.freedesktop.org:drm/firmware.git tags/intel-2024-04-01

Merged and pushed out.

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/188

josh

>
> for you to fetch changes up to ab144168469a77f54ad539ac98dede7ce4c6a75d:
>
>   i915: Add DG2 HuC 7.10.15 (2024-03-28 13:45:41 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>       i915: Add DG2 HuC 7.10.15
>
>  WHENCE               |   2 +-
>  i915/dg2_huc_gsc.bin | Bin 622592 -> 630784 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  mode change 100755 =3D> 100644 i915/dg2_huc_gsc.bin
