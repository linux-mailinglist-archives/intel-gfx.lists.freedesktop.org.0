Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C0FC46348
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 983C010E30E;
	Mon, 10 Nov 2025 11:21:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuC9k1D+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07B810E0F4;
 Mon, 10 Nov 2025 11:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762773704; x=1794309704;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=t6ccO4ifrE6sfbNDvqxCrclmAc6f6e8lVI75X1vdeeg=;
 b=kuC9k1D+rKsm0JmMo2cV1nm5aXvFXnBqgGHScTK9aZ1Ci1wq82P6sioG
 0hs2TWDGH1azuHyfxbcTTZWp1pCDZkzAqkqI4WHL++26jCD3f3dgMQbPz
 aEkzwZbspHrT8uIcoA5Tgn4CaKT4GkRq6R+J65nErSpI7wjsCehzKWRkx
 0fPNNjFEW7v6M/DzGr0X2nW37ldJB/ZH74JG/fZnfz7OP/az3pGWdmeu1
 8XaydRX2wGildTpxRj2eIL//qporXrA62aLGlMhP+uJ74YusI+F1E56PS
 uouCnKM/LhJzJilKcxuJ5mz1oA++CFcfCPK7qZ+mzaqxqcR3j3hVzZEtv g==;
X-CSE-ConnectionGUID: 00SxENJzS2GQE5tLNCQzkw==
X-CSE-MsgGUID: axfv6uF5Tu2YER6cRmhwzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64731569"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64731569"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:21:44 -0800
X-CSE-ConnectionGUID: zCOyesVARdS0TuiuZSFFCw==
X-CSE-MsgGUID: EAyeI7y+TnKJnekPRvyBmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="189368973"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:21:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/psr: fix pipe to vblank conversion
In-Reply-To: <df54e434d95553c02fe9e7a8607cbc25652ef107.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106200000.1455164-1-jani.nikula@intel.com>
 <df54e434d95553c02fe9e7a8607cbc25652ef107.camel@intel.com>
Date: Mon, 10 Nov 2025 13:21:38 +0200
Message-ID: <8e51dd88918a9986049d4cbc29b219ab82bb1b9b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 07 Nov 2025, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Thu, 2025-11-06 at 22:00 +0200, Jani Nikula wrote:
>> First, we can't assume pipe =3D=3D crtc index. If a pipe is fused off in
>> between, it no longer holds. intel_crtc_for_pipe() is the only proper
>> way to get from a pipe to the corresponding crtc.
>>=20
>> Second, drivers aren't supposed to access or index drm->vblank[]
>> directly. There's drm_crtc_vblank_crtc() for this.
>>=20
>> Use both functions to fix the pipe to vblank conversion.
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks, pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
