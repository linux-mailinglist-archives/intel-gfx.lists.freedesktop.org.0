Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFE3763E3C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 20:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114E610E05F;
	Wed, 26 Jul 2023 18:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F4910E04B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 18:16:07 +0000 (UTC)
Date: Wed, 26 Jul 2023 18:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail2; t=1690395365; x=1690654565;
 bh=MHVHWNiRFk45RwUMHZjzyqHvHB/7TIueiT4PFTuQxkM=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=Ay7oOHLfmGFsPbhpVgaXw64CWpTLO2Jc7obTWA9nxpU99nWyg4mLHOmhPKH0etHJG
 zd/gfMJRP910cx4K1jopLYL4mD7RcG/qE2niaVn5dSyl4/GQ87k0ZuEw1IiP10dLbA
 4jYhX5Lctrc2U07p3KVkD2zWiCnf/Qu4kL4D5IIGrPaqZh+q0v8YnjvCn/Q5hPosAV
 uM+tantdEa91El/9a+pXSQB4ztN4MfhFZ4xV1QkzZ6YCWCzF98+ypc4FUWU2OGbG+e
 /GY99WJj/z/XAkOz6G9KgEA9q3dIDlEFUtDN4vKs6wDVbVTmX8q6WpCN1CYxQfJGJi
 h5iSTkTOHzuOQ==
To: =?utf-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <83s0YPWEdYE6C2a8pa6UAa3EaWZ2zG-q7IL9M-y6W1ucF9V54VnZtigKj3BGKUA2FZpIrs0VVxmpHO2RAhs_FdOnss9vNLQNSHySY8uH7YA=@emersion.fr>
In-Reply-To: <20230724211428.3831636-4-michal.winiarski@intel.com>
References: <20230724211428.3831636-1-michal.winiarski@intel.com>
 <20230724211428.3831636-4-michal.winiarski@intel.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v6 3/4] drm: Expand max DRM device number to
 full MINORBITS
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
Cc: Matthew Wilcox <willy@infradead.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 James Zhu <James.Zhu@amd.com>, Oded Gabbay <ogabbay@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Monday, July 24th, 2023 at 23:14, Micha=C5=82 Winiarski <michal.winiarsk=
i@intel.com> wrote:

> Having a limit of 64 DRM devices is not good enough for modern world
> where we have multi-GPU servers, SR-IOV virtual functions and virtual
> devices used for testing.
> Let's utilize full minor range for DRM devices.
> To avoid regressing the existing userspace, we're still maintaining the
> numbering scheme where 0-63 is used for primary, 64-127 is reserved
> (formerly for control) and 128-191 is used for render.
> For minors >=3D 192, we're allocating minors dynamically on a first-come,
> first-served basis.

In general the approach looks good to me. Old libdrm will see the new
nodes as nodes with an unknown type when it tries to infer the nod type
from the minor, which is as good as it gets.

We do need patches to stop trying to infer the node type from the minor
in libdrm, though. Emil has suggested using sysfs, which we already do
in a few places in libdrm.
