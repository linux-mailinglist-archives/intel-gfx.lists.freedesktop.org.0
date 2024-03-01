Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C786E95A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 20:17:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03C310EBA0;
	Fri,  1 Mar 2024 19:17:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="gjEH0nCD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE5510EADC;
 Fri,  1 Mar 2024 19:17:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id AC295CE26CF;
 Fri,  1 Mar 2024 19:17:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E71FEC43390;
 Fri,  1 Mar 2024 19:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1709320666;
 bh=z8GzlGh9ZU3scyW1999m+nlQLRu24T7h7/0sJzusX7Y=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=gjEH0nCDQbZjfXgb5d6GtM4L8kAQMiWT7yL177tBj4EJfO63fltb9rZwSZAVGY17P
 oEvfjQfimyZ3KX2/6a/2U4vUYvm+WWTk5hFcVZTTG561xv4AKZpVZx1sSwjBaLx6A/
 /+4WU9Ug87gc2Er7rsFTzflHZgyrr9R0J3OFm1oEYWneIPDcYIosIWMMij6U4wkUaC
 uvpPanF8gFbG4V+OntNrD7+j2YXXek6mAkvfeznvM/0dfwXrpzXd6xcyOiM9PiFscr
 mjcVMAgS9cEM9d72nWe7Bb5Edbk4q1ObeAruyaL/BLx983XLBKeJDdgdqHynKxgmfd
 /q8rLe1/3C1Pg==
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-dcc71031680so2357971276.2; 
 Fri, 01 Mar 2024 11:17:46 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXVSr1E4xhOpxhS2rdEu9GbQK3ZoPwHfSY9e2s3kDmnOj69v96v9AzWJFXH+5dYqo0u798QyWvsmI2MwexkUY0n+1QZ4462XSTdQQuzQmB7M1Kt/k8mUeleEE1i2ElTONNAByQ5MurrFoqS97z071I=
X-Gm-Message-State: AOJu0YzcbgmpSFGS1Sg0EcTLuELoRIKt8iRo9aOmOdyfF5DajuUfhqOZ
 pymJJEwjPZ2SEU1h6pesPDdux0WPJa8nYxG2xPOdytvMN8kj9toE6dTRcERxUrlsqWSNGu7FSBQ
 Du8GB+nBS0WLHTpig+LzW8ks9VEs=
X-Google-Smtp-Source: AGHT+IFUwXFjd3NtIaZDxX9n9Z0aDNYK+U8cv092hikxkH4IkB5PKJt66APWw5HYXrDeLyJ9KzJ5JNYkWyFQyj9I2cM=
X-Received: by 2002:a25:660e:0:b0:dc6:9b89:3f75 with SMTP id
 a14-20020a25660e000000b00dc69b893f75mr2302508ybc.40.1709320665360; Fri, 01
 Mar 2024 11:17:45 -0800 (PST)
MIME-Version: 1.0
References: <20240222195634.291662-1-gustavo.sousa@intel.com>
In-Reply-To: <20240222195634.291662-1-gustavo.sousa@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 1 Mar 2024 14:17:34 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5a1hwas6CYVsL0h+7e-GXDSO0B2=fTuy3GWQXWky8MnQ@mail.gmail.com>
Message-ID: <CA+5PVA5a1hwas6CYVsL0h+7e-GXDSO0B2=fTuy3GWQXWky8MnQ@mail.gmail.com>
Subject: Re: PR for Xe2LPD DMC v2.18
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: linux-firmware@kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
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

On Thu, Feb 22, 2024 at 2:56=E2=80=AFPM Gustavo Sousa <gustavo.sousa@intel.=
com> wrote:
>
> The following changes since commit 78b99e9ebad8e4e24dded99842f94a8a7db3a5=
e8:
>
>   Merge branch 'robot/pr-0-1708610465' into 'main' (2024-02-22 14:24:47 +=
0000)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware xe2lpd_dmc_2.18

Pulled and pushed out.

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/160

josh

>
> for you to fetch changes up to 94d9a511a605cc0794bbe2d13328143e86df26e9:
>
>   i915: Add Xe2LPD DMC v2.18 (2024-02-22 16:54:31 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Add Xe2LPD DMC v2.18
>
>  WHENCE              |   3 +++
>  i915/xe2lpd_dmc.bin | Bin 0 -> 61208 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/xe2lpd_dmc.bin
