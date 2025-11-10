Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 560A6C493A1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 21:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9EC210E2D8;
	Mon, 10 Nov 2025 20:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i37DyNQf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C393910E2D8;
 Mon, 10 Nov 2025 20:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762806502; x=1794342502;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YQ1lCdBOG1azQXFH4/BYXSfnvbFPilXOWL3/aXzuuC8=;
 b=i37DyNQfKUmu4AywBFMpR3EzYbWjpwy+271PVTl7/lVEELxm7t6yGt3E
 gWGqpMPJ3JQtd0/AYxkd3gyAilCaBdI1L9FR6QrfeQMZa6GEUbJscInw6
 PB02t6Vz4jHXNP1btl1jsztdq2r7jwnd7qIZd0IMXWxU2eWbBi++n45U5
 0rDORCiEuE91En7cKVnGOxrL2ube8RK47wPwXtHXOVjlqFo4ps1ioHhLY
 XjNp29csxhaoevvayNY6Ue467ZKlTKduyjs2GXbHuNYpSl3QqpBBJ6Xe6
 mP20k+d8nEzhGUyahAdjSu/GI66q7W+siNJmNqyhVjLNU5+LQL+rEObY2 Q==;
X-CSE-ConnectionGUID: XhUanh5pRweEtaelXrSz8Q==
X-CSE-MsgGUID: lfst1KCqRNmLAOhsh2xFFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52422432"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="52422432"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 12:28:21 -0800
X-CSE-ConnectionGUID: n6tdq2zOQcSOGEsIkC06eg==
X-CSE-MsgGUID: xI0jexXbSSCP+N6uEI93BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188404257"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 12:28:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: arun.r.murthy@intel.com
Subject: Re: [PATCH] drm/i915/fbdev: Hold runtime PM ref during fbdev BO
 creation
In-Reply-To: <602bb5d3-fe1f-47c3-8775-3078d0fc7bc3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106120313.2670852-1-dibin.moolakadan.subrahmanian@intel.com>
 <c08839f894cefc8f5fa801d4254934b8c4dfbdcb@intel.com>
 <602bb5d3-fe1f-47c3-8775-3078d0fc7bc3@intel.com>
Date: Mon, 10 Nov 2025 22:28:17 +0200
Message-ID: <5675660abb085c03948c8d54a0afd78e270a5dc2@intel.com>
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

On Mon, 10 Nov 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrah=
manian@intel.com> wrote:
> As this=C2=A0originates from intel_fbdev_fb_alloc()
> which was introduced by commit 44e694958b95395bd1c41508c88c8ca141bf9bd7,

Pro-tip, put this in your .gitconfig:

[alias]
	cite =3D log -1 --abbrev=3D12 '--format=3D%h (\"%s\")'

and you can do:

$ git cite 44e694958b95395bd1c41508c88c8ca141bf9bd7
44e694958b95 ("drm/xe/display: Implement display support")

to give you a human readable commit citation which you can copy-paste to
emails and issue trackers and whatnot.

BR,
Jani.


--=20
Jani Nikula, Intel
