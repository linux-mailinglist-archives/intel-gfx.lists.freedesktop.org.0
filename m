Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F59679A84
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 14:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5131610E683;
	Tue, 24 Jan 2023 13:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94C810E683;
 Tue, 24 Jan 2023 13:50:02 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id bp15so23423743lfb.13;
 Tue, 24 Jan 2023 05:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rxsDLNkA+Mfgi6mBuWt7DVjy9zeEag3oHg+xpIV01n8=;
 b=U9NymzyNqAyIWJN9PQxuTSnWXjU6a1Vzyw+W58kr6fRCZDPkkzzEEI2SXnooGuVNtl
 SyP5Jsjz9WgcXptJfzWMlOPWEKoE/RJ1gm3hMbn091UT585ho5ayFK8uzZ7q6pxcdt7+
 S7KE3qfOgb8NEp1DBxjD8+CrgLsRUI0e7NGxMEy1YW8YfGLql2qUAb4+bsD4XNUYyT+q
 asjOUYCzCspIXjEgTMGTCTGfEhE/DbxtVyoiaDskNLGz9RXqdrqQSEVbhayrkXC9k0SA
 vbLGdmuFrx2aXSuQhYrVIH7na9G/KOPOF3aYM0RPkkVoDW6FXcQWDT+d6MoIbST/YInw
 7mQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rxsDLNkA+Mfgi6mBuWt7DVjy9zeEag3oHg+xpIV01n8=;
 b=ulxF4nDTnbj/sN4B/jN7Zk8oO4KHFEUXSX4o4wT0wsyZzc7nkrcmsR0VjcEn/ViBE9
 kdRje+CBev/13cFR8bDDVblRyDv8QBQSzYr/2t09VPTczRRg27kgV4D0JggoxEC9SngL
 TebVZ76tmkYQ8bZxR0iEF3eawzOzf8q8aROgRypAnUtK0xuVCgpzJc6r9S0DbkWwAaEG
 D01fDmwtfRX+D9gTJx0eSUaQM2T3Pb1ORWjaShNDdB6ufuaCqhjmG1NTQt5EZNyRfsxG
 2fVl5i7oRBf2prSmn6FMWVYyiVXMi6p3KSCyM05PpdbWO5qAH+XTicIyNVHbvA17EynY
 uuDQ==
X-Gm-Message-State: AFqh2krBUN0T3Wdh+b2c6TpEN3ApsKWybmpgRjZXj14pOAxDxZc3EazR
 RVltyoqzwEfzYnhISZQ7Q9ghjCc70+xIJZqgDX8ufhmxraI=
X-Google-Smtp-Source: AMrXdXutASFrd9wrmb0F9R0Js8zOp7JVQ+A5wsGzGfk12EBT3oFySZfMcWpVYDCs//ZNbpKqJHcPaYwDIf+k7IdiPus=
X-Received: by 2002:a05:6512:3a8b:b0:4d5:5fb3:929b with SMTP id
 q11-20020a0565123a8b00b004d55fb3929bmr1655608lfu.604.1674568200898; Tue, 24
 Jan 2023 05:50:00 -0800 (PST)
MIME-Version: 1.0
References: <20230124125726.13323-1-christian.koenig@amd.com>
 <20230124125726.13323-2-christian.koenig@amd.com>
In-Reply-To: <20230124125726.13323-2-christian.koenig@amd.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 24 Jan 2023 13:49:33 +0000
Message-ID: <CAM0jSHPHRpdbysCAJ3VcyDgFfAKKaO8O3z0px_nLfj5xDKF-LQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/ttm: stop allocating dummy
 resources during BO creation
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Jan 2023 at 12:57, Christian K=C3=B6nig
<ckoenig.leichtzumerken@gmail.com> wrote:
>
> That should not be necessary any more when drivers should at least be
> able to handle the move without a resource.
>
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
