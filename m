Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 126973E234F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 08:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFF489A4F;
	Fri,  6 Aug 2021 06:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB3889A4F;
 Fri,  6 Aug 2021 06:37:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="201502251"
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="201502251"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 23:37:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="586579542"
Received: from imccann-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.82])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 23:36:58 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210715141854.1ad4a956@canb.auug.org.au>
References: <20210715141854.1ad4a956@canb.auug.org.au>
To: DRI <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162823181614.15830.10618174106053255881@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 06 Aug 2021 09:36:56 +0300
Subject: Re: [Intel-gfx] linux-next: Signed-off-by missing for commit in the
 drm-intel tree
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

Hi Matt,

Always use the dim tooling when applying patches, it will do the right
thing with regards to adding the S-o-b.

Regards, Joonas

Quoting Stephen Rothwell (2021-07-15 07:18:54)
> Hi all,
>=20
> Commit
>=20
>   db47fe727e1f ("drm/i915/step: s/<platform>_revid_tbl/<platform>_revids")
>=20
> is missing a Signed-off-by from its committer.
>=20
> --=20
> Cheers,
> Stephen Rothwell
