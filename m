Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DE5A02365
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F1710E60F;
	Mon,  6 Jan 2025 10:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="jf3OAaHB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D8610E60F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:48:08 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (unknown [217.70.183.193])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 5F01EC1A7E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:46:34 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 81E4224000C;
 Mon,  6 Jan 2025 10:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1736160388;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DJ+D6qi4mbfuXPyLe+w6+zrZoPI7FQCfPbiq3MQBu4E=;
 b=jf3OAaHBEQgLGTdjbWJ+Nr6uK1KydwHIM3hULmkIuycUOpS+aWWLaVhvJBI6gXLfBSulpA
 4ZdY0BSkKOzjm8wEmec81rgnlTw5NS9VriPTznHJG0QufJgh6f25GwBkvx3uKA5+6Dq7zX
 JpuGqZYZ9Wp7oGapaizgXHwJJAj1ZJQdK5/28WWFtHUwgFuJStm2dp+xZDyNL/SjEBa5hT
 3qRFa28HM9kdIjhesx0jhoHPm1pcPtnDS8fdPxErY1mVXtlK6xQcp4CslbwJxM04vBh12u
 HGHEnGXaN6oo/TDcKqeBmMlyn/FACtOuBDAluilt536Nem9rQo0EGZgpIqIFNQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Lucas De Marchi <lucas.demarchi@intel.com>,  Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,  Rodrigo
 Vivi <rodrigo.vivi@intel.com>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
 <airlied@gmail.com>,  Simona Vetter <simona@ffwll.ch>,  Jani Nikula
 <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Tvrtko Ursulin <tursulin@ursulin.net>,
 Karthik Poosa <karthik.poosa@intel.com>,  Reuven Abliyev
 <reuven.abliyev@intel.com>,  Oren Weil <oren.jer.weil@intel.com>,
 linux-mtd@lists.infradead.org,  dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 01/11] mtd: core: always create master device
In-Reply-To: <20250101153925.865703-2-alexander.usyskin@intel.com> (Alexander
 Usyskin's message of "Wed, 1 Jan 2025 17:39:15 +0200")
References: <20250101153925.865703-1-alexander.usyskin@intel.com>
 <20250101153925.865703-2-alexander.usyskin@intel.com>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Mon, 06 Jan 2025 11:46:26 +0100
Message-ID: <87sepwp6d9.fsf@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
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

Hi Alexander,

On 01/01/2025 at 17:39:15 +02, Alexander Usyskin <alexander.usyskin@intel.c=
om> wrote:

> Create master device without partition when
> CONFIG_MTD_PARTITIONED_MASTER flag is unset.

I don't think you took into consideration my remarks regarding the fact
that you would break userspace. If you enable the master, you no longer
have the same device numbering in userspace. I know people should not
care about these numbers, but in practice they do.

If I'm wrong, please be a little more verbose about why :)

Thanks,
Miqu=C3=A8l
