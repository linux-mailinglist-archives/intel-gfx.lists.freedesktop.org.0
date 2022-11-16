Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F7562BFD8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 14:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018FB10E4AD;
	Wed, 16 Nov 2022 13:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944C810E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 13:43:33 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ovIhO-0002B5-IY; Wed, 16 Nov 2022 14:43:30 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ovIhM-004fGt-Lm; Wed, 16 Nov 2022 14:43:29 +0100
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ovIhM-0009pm-Td; Wed, 16 Nov 2022 14:43:28 +0100
Message-ID: <773cf4a1b289ced10f4373b03cb14126c7d32bf7.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 16 Nov 2022 14:43:28 +0100
In-Reply-To: <20221111155844.3290531-9-tvrtko.ursulin@linux.intel.com>
References: <20221111155844.3290531-1-tvrtko.ursulin@linux.intel.com>
 <20221111155844.3290531-9-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH i-g-t 8/8] gputop: Basic vendor agnostic GPU
 top tool
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
Cc: Rob Clark <robdclark@chromium.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fr, 2022-11-11 at 15:58 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20
> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be use=
d
> to display a sorted by card and usage list of processes using GPUs.
>=20
> Borrows a bit of code from intel_gpu_top but for now omits the fancy
> features like interactive functionality, card selection, client
> aggregation, sort modes, JSON output  and pretty engine names. Also no
> support for global GPU or system metrics.
>=20
> On the other hand it shows clients from all DRM cards which
> intel_gpu_top does not do.
>=20
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rob Clark <robdclark@chromium.org>
> Cc: Christian K=C3=B6nig <ckoenig.leichtzumerken@gmail.com>
> Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>

Tested-by: Philipp Zabel <p.zabel@pengutronix.de>

on etnaviv with [1].

[1] https://lore.kernel.org/dri-devel/20220916151205.165687-3-l.stach@pengu=
tronix.de/

regards
Philipp
