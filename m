Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8AF82FF38
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 04:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD9310E627;
	Wed, 17 Jan 2024 03:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9245E10E627
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 03:14:20 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id
 3f1490d57ef6-dbed179f0faso8179346276.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 19:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1705461199; x=1706065999;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=59p+fnH5rT0frfeom0IV/J7px6MXmab6xfrDrxBnvA4=;
 b=elQTUuIK+7CtacKCImUl7Ji2mdiTcr2mZutrhfl4pAFsGMaowf5WglPlZtjd07wMNt
 Ho/dBsIlSl9cGb6nRgH26tg3UJjw0A2LefnAe8o7D3/lPh4oAgEs6ZR2QgEA0k4qbfyS
 57HJMhVB3UjZJZjo7E/EB2L2TxxARya6/8suU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705461199; x=1706065999;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=59p+fnH5rT0frfeom0IV/J7px6MXmab6xfrDrxBnvA4=;
 b=GElYiAv0WZfzwB5DXOeChXi+9elyr10TOIL5V5dOSgkNATHhpaudyOoz2y0Cc7l8mn
 TCaalNgfKKYa2ddwNKd9q3MM39Fb+iFOk6UZM1yMFURqfkfCPxY2/sCY9feM9q1pqu+1
 tfoMQN4AEHXJnhqXugrUv0HLN8wEDaz/AN1fS78Cu3Yt8KCd/w4vDET19pSHDDwJztvy
 o7DENiszWkXv10v0efup4yQqu2qOVEuxxYB/J55bHaQyqXrkAl4b6yC+DLMHJ+Eowr1v
 2gc0hjmUFZ335IpUL5B13kAdGVY/IT9Fhi4tOL7sDoalEtNl/NF9nLnuORG/vbBmvRf4
 1XYA==
X-Gm-Message-State: AOJu0Yy2F/OXVvmgtBBd+hasB0Kw+tJOyg7LrOx2iEX5L1xj1F2f6SSl
 E7or2KbwXoVfe4llPqWW4G+JOYuAIIR6pQsLdL6775y66iKR
X-Google-Smtp-Source: AGHT+IGRFGRbecsFxBH7oI2HKW/w7qzUsKpySNvwdsvVWjq4+0lDvbQqMdICxi2kISBDmJSGqnx5rsPyHeyrGWwg5CI=
X-Received: by 2002:a25:ab88:0:b0:dc2:26e5:a76 with SMTP id
 v8-20020a25ab88000000b00dc226e50a76mr76206ybi.47.1705461199670; Tue, 16 Jan
 2024 19:13:19 -0800 (PST)
MIME-Version: 1.0
References: <20240112125158.2748-1-christian.koenig@amd.com>
 <1df3cfff-50af-4873-b228-57b6900b9ba8@gmail.com>
In-Reply-To: <1df3cfff-50af-4873-b228-57b6900b9ba8@gmail.com>
From: Zack Rusin <zack.rusin@broadcom.com>
Date: Tue, 16 Jan 2024 22:13:08 -0500
Message-ID: <CABQX2QPdXjC_S9tUhPAuGo0P7=GMXvS0uMqDSr-jgpBQVm7gUg@mail.gmail.com>
Subject: Re: Rework TTMs busy handling
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
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
Cc: thomas.hellstrom@linux.intel.com, kherbst@redhat.com,
 michel.daenzer@mailbox.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 zackr@vmware.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 4:57=E2=80=AFAM Christian K=C3=B6nig
<ckoenig.leichtzumerken@gmail.com> wrote:
>
> Am 12.01.24 um 13:51 schrieb Christian K=C3=B6nig:
> > Hi guys,
>
> just a gentle ping on this.
>
> Zack any more comments for the VMWGFX parts?

The new vmwgfx code looks great, thanks a lot for implementing it! In
fact the entire series looks good to me. For the series:

Reviewed-by: Zack Rusin <zack.rusin@broadcom.com>

z
