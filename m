Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD366DD664
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 11:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FF910E514;
	Tue, 11 Apr 2023 09:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8677010E513;
 Tue, 11 Apr 2023 09:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681204481; x=1712740481;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jeDvQzbplQNugJmlefG4B//1yu7qWTM/yUoCVvotIlc=;
 b=RsRkFZB6oCxq0zW2OStgkY24l8O6zkd/2OPyamDbx8XMjBDO4X6PgYB2
 Fo4fZuVzfSmglLKwV1MhFgPV8pTlgEKZ6ET5ZlsszoDeVvPxVe5nxRWyW
 gS0BMw76P65j0SEMBwStZci/b633BPyNtWq8ZrYnF7E8N6Mj2zltIQxze
 rF1MYoJQBHZWFFZlBtlKKmqH51tJqIz/+Y4FEGzfjYpkru5Uu6urR3DjQ
 D7QhqQLTsd/EvCX6dVuW4r8mQQXyWjJ/CIpiYDPR8u38Dpd+cUaAX+Jne
 tIekEktQGLKhiwTjH8KesH5Yv/DCKbiL98FpegKMtSV3AGWeJbrm1M0Hx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="323926141"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="323926141"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 02:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="1018301166"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="1018301166"
Received: from tunterlu-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.56.34])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 02:14:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZDUkZKotRVT0bxga@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com>
Date: Tue, 11 Apr 2023 12:14:36 +0300
Message-ID: <875ya2eq6b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Apr 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Apr 11, 2023 at 11:51:33AM +0300, Jani Nikula wrote:
>> On Tue, 11 Apr 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Mon, Apr 10, 2023 at 11:32:14AM -0700, Jos=C3=A9 Roberto de Souza w=
rote:
>> >> Start to move the initialization of some lock from
>> >> i915_driver_early_probe().
>> >> No dkl function is called prior to intel_setup_outputs(), so this is
>> >> a good place to initialize it.
>> >
>> > I disagree. We don't want to sprinke these all over the place.
>>=20
>> I'm thinking if only foo.c uses a lock, foo.c should initialize it, not
>> someone else.
>
> Perhaps. But I think there should be some consistent place in the higher
> level code where all such things get called instead of dropping each one
> individually into some random spot in the overlall display init flow.

Agreed.

--=20
Jani Nikula, Intel Open Source Graphics Center
