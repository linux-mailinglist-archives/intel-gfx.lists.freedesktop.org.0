Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9DE4DC19A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 09:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850F310F0BB;
	Thu, 17 Mar 2022 08:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A19910F0BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647506633; x=1679042633;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:subject:from:message-id:date;
 bh=cGgKvYicfzbD7Yyfasv/6WsDT1IhHu1cS7Pa/GhgZHY=;
 b=d7G5wICyzmJmxCKnraVrAfQfo3DgFTANNiRLTM8IZhafRQhmS9bbXimq
 sMJpSecV72+x5YyTDyMyELBpeH2NPWyPqbN7DwHOxATYJw4bQd6rdFcu6
 MzKARl8w7OXc7QIhyDjRdi7j12lyHXTcJP5by4bWFTvI5Jm7BpXqMVQAJ
 Gk2r6jEy559q/BK191Egve5JyUG0JXZHh2s8roziHSFBrpjUmL0/tooUt
 6tpx/VfGFa9vQI4JY16uaWSdTuvFjX+AVIaH6HUeDVzZU/1VtIgszeHA5
 HcTk8dSFELahcmf8tFvulWcIuhz7CXesT83sOCsQ6LvAoV2iawDcrp3U+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="257005586"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="257005586"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 01:43:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="557840271"
Received: from emalinow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.227])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 01:43:50 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
References: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>, Thomas Hellström <thomas.hellstrom@linux.intel.com>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, Ramalingam C <ramalingam.c@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 17 Mar 2022 10:43:48 +0200
Subject: Re: [Intel-gfx] Small bar recovery vs compressed content on DG2
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

Quoting Thomas Hellstr=C3=B6m (2022-03-16 09:25:16)
> Hi!
>=20
> Do we somehow need to clarify in the headers the semantics for this?
>=20
>  From my understanding when discussing the CCS migration series with=20
> Ram, the kernel will never do any resolving (compressing /=20
> decompressing) migrations or evictions which basically implies the=20
> following:
>=20
> *) Compressed data must have LMEM only placement, otherwise the GPU=20
> would read garbage if accessing from SMEM.

This has always been the case, so it should be documented in the uAPI
headers and kerneldocs.

> *) Compressed data can't be assumed to be mappable by the CPU, because=20
> in order to ensure that on small BAR, the placement needs to be LMEM+SMEM.

Not strictly true, as we could always migrate to the mappable region in
the CPU fault handler. Will need the same set of tricks as with limited
mappable GGTT in past.

> *) Neither can compressed data be part of a CAPTURE buffer, because that =

> requires the data to be CPU-mappable.

Especially this will be too big of a limitation which we can't really afford
when it comes to debugging.

Regards, Joonas

> Are we (and user-mode drivers) OK with these restrictions, or do we need =

> to rethink?
>=20
> Thanks,
>=20
> Thomas
>=20
>=20
