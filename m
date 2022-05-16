Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6489F527F3C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 10:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4E410F8D0;
	Mon, 16 May 2022 08:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE6A10F388;
 Mon, 16 May 2022 08:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652688450; x=1684224450;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=FP8hlpXcwlF9e5PgDQBA2Y/1jTSHU1GPNaYK14SpGG0=;
 b=KoMuzi7OCuLMk1ep3bR3KFNpXmHz3fAWXVblZ1T88EXfQNk5/6u+vLJ6
 a7VqQXmcLC3WSLPneaBOZqFwVY0SZTpd4M5QsJ2rQRGngQPhWcyhAfh1R
 MqaSHWETRCZIStnhKZSt4DYJQFSb3Jtr66d685q1dnC7ycFPtzhbnUBeq
 rjXtE99keXchnLnBL1ADyPuGc5Cf/s9hsuepKhyW5odUuuxhUG1Jw+nbZ
 hZwiUPA3TgbHS4atdE2kt3f7jFtC89yETWXN4bpVHBfhgipw7eS7L/OBk
 /4C8XdP7Hnf+qW46sXUr5APLvs6Xgg7FbyzpKv+nqP01aeEe37OHZThTw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="270718017"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="270718017"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 01:07:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="699426726"
Received: from rjay-mobl.amr.corp.intel.com (HELO localhost) ([10.209.4.185])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2022 01:07:26 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <dc3d7dad-7aac-5ad0-73dd-73a5de320ef9@intel.com>
References: <20220502141508.2327-1-ramalingam.c@intel.com>
 <08039c07-a32e-7725-bc98-db49eefb3e86@intel.com>
 <165247597144.852381.16262736277926454494@jljusten-skl>
 <dc3d7dad-7aac-5ad0-73dd-73a5de320ef9@intel.com>
From: Jordan Justen <jordan.l.justen@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Ramalingam C <ramalingam.c@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Mon, 16 May 2022 01:07:20 -0700
Message-ID: <165268844013.852381.17064023378382799061@jljusten-skl>
User-Agent: alot/0.10
Subject: Re: [Intel-gfx] [PATCH v3] uapi/drm/i915: Document memory residency
 and Flat-CCS capability of obj
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 mesa-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-05-16 00:47:43, Lionel Landwerlin wrote:
> On 14/05/2022 00:06, Jordan Justen wrote:
>>=20
>>     Acked-by: Jordan Justen <jordan.l.justen@intel.com>
>>=20
>>     I think Nanley has accounted for this on iris with:
>>=20
>>     https://gitlab.freedesktop.org/mesa/mesa/-/commit/42a865730ef72574e1=
79b56a314f30fdccc6cba8
>>=20
>=20
> Thanks Jordan,
>=20
> We might want to through in an additional : assert((flags & BO_ALLOC_SMEM=
) =3D=3D
> 0); in the CCS case

Yeah. I noticed this potential for concern when looking at the
small-bar uapi on iris. I added an assert, and I haven't seen it get
triggered yet.

-Jordan
