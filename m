Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515C847E118
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 11:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22DC510E2DA;
	Thu, 23 Dec 2021 10:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4317.proton.ch (mail-4317.proton.ch [185.70.43.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B23910E2B6;
 Thu, 23 Dec 2021 10:07:27 +0000 (UTC)
Date: Thu, 23 Dec 2021 10:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1640254044;
 bh=zRwWsMDd5Kf2yQpedEA3Ka2dLpgNvYvwuOL0uYq4mxY=;
 h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
 References:From:To:Cc;
 b=gbYSD1oJfitEUpR//HJf9DzbjJxOgkD3iapphcrU/uZGqgKkUcCc1vIpK0dTcDkfx
 mpfR6x7lHdm88Xz4Wey/NerEFw2ZdhTaDSUqgg0kl9OEUeuhK5+60lH31lkXoHTW9n
 KiOuxYNdz3JEsXmRMBVcXtis824NHyURJ9U9vvBWd5Fr+qaLBhjLOE8h+6eAY4iXmC
 u2ssCeZrgyAv28ZuTVfoHOKWfKgWhfmLfcoVCQZigJGmeXViQPjFHaJbx6spoa6Tmq
 VQWWd3nbsAXijeEZUFhyrAlufaWuX8s2mWaIoOarcpLda7X20a3t5mQuP5BToi1Mtp
 NZi94UIxVtVnQ==
To: =?utf-8?Q?Jos=C3=A9_Exp=C3=B3sito?= <jose.exposito89@gmail.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <Mvx6OvWCWFlETEiAbcFfstJZLT3KuMwwbWOdID03IpRLb8IFXUyPXd89dKGZvd3UTYSrteRLv9gAFNJYc56X7-OFvC31c981WeUFDZDTAi4=@emersion.fr>
In-Reply-To: <20211222090552.25972-3-jose.exposito89@gmail.com>
References: <20211222090552.25972-1-jose.exposito89@gmail.com>
 <20211222090552.25972-3-jose.exposito89@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/plane: Fix typo in
 format_mod_supported documentation
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: airlied@linux.ie, alexandre.torgue@foss.st.com, stefan@agner.ch,
 benjamin.gaignard@linaro.org, festevam@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, marex@denx.de, linux-imx@nxp.com,
 intel-gfx@lists.freedesktop.org, tzimmermann@suse.de, s.hauer@pengutronix.de,
 mripard@kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 yannick.fertre@foss.st.com, linux-kernel@vger.kernel.org,
 philippe.cornu@foss.st.com, mcoquelin.stm32@gmail.com,
 dmitry.baryshkov@linaro.org, shawnguo@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Simon Ser <contact@emersion.fr>
