Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAE9C9140F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 09:41:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B91910E465;
	Fri, 28 Nov 2025 08:41:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJcZn52b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C9710E465
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Nov 2025 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764319286; x=1795855286;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aEkxrHaqg+pO/3xje7eq9+DVukCbqJO/UrxTQexHoDo=;
 b=OJcZn52bvYdYK2+9F7hAJJo2pZsjm/3akHarRAtfB6tpyuKuuWS+T8sS
 v+nqtVxTtI2FwUJq8D6E6MQkMOfNUi4fBbdUvsxz+s0jSNui8483sJa8v
 Y37wJU/bIwdLiJTDpHwMiqJ+C5Wlqx5usBTFNrVStuYirmZNJa3JO3h2g
 QMdMAnFVm8r19ZtmSwzIxM3PtEfrIn6M3PizIu5xjjLUwAU7kni/GGivd
 FM2ktQ6qQnyeIWnQ3dNP5eakg3uaewkPkwfmVr1/K+JT/gSnKSvcpz6CN
 wrkaVEVIoQbXLOoyE+tNydtHD9pnaQhlJ0XauZLvX9NASPah5clED/PAb Q==;
X-CSE-ConnectionGUID: MDmRZiVZT6q92fQz5e+lWA==
X-CSE-MsgGUID: 4hUJC673SbuaKq5+gUbpIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="68945289"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="68945289"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 00:41:24 -0800
X-CSE-ConnectionGUID: vqTm//vNSOylGg5ESLlywA==
X-CSE-MsgGUID: DJ+0OjBgSnqsvj4E6dbdDw==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 00:41:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?B?15PXoNeZ15DXnCDXodeZ16DXmQ==?= <danielsinai0808@gmail.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: Question about the GTDRIVER_MAILBOX_DATA0 register in Gen 12.0
 (Tiger Lake)
In-Reply-To: <CADusC6XGSRY8snhf32xY8eT_P2PGp72Ne=-C3TOC=0CqkeKNVA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CADusC6XGSRY8snhf32xY8eT_P2PGp72Ne=-C3TOC=0CqkeKNVA@mail.gmail.com>
Date: Fri, 28 Nov 2025 10:41:18 +0200
Message-ID: <70da0a931679e4ef5cfdd6864db9a5e33b9192d3@intel.com>
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

On Fri, 28 Nov 2025, =D7=93=D7=A0=D7=99=D7=90=D7=9C =D7=A1=D7=99=D7=A0=D7=
=99 <danielsinai0808@gmail.com> wrote:
> I cannot seem to find the definition and/or the address of the-
> GTDRIVER_MAILBOX_DATA0 register in the PRM, this is true with the latest
> version of the PRM for that generation.
> I've used multiple search tools including the advanced search in Adobe
> acrobat reader and the recoll program.
> Judging by the definitions for 'GTDRIVER_MAILBOX_DATA1',
> and 'GTDRIVER_MAILBOX_INTERFACE', there seems to be a 4 byte gap
> between them where the register could be.
> I also looked in the Linux kernel (specifically, I found definitions:
> 'GEN6_PCODE_DATA' and 'GEN6_PCODE_DATA1' in i915_regs.h under-
> /drivers/gpu/drm/i915), it seems to also hint at the register being there.
>
> However, because this is my first time doing anything like this,
> I wanted to make sure, Is this actually where the register is located?
> If it's located somewhere else, where is it?

What are you trying to accomplish?

See also https://en.wikipedia.org/wiki/XY_problem


BR,
Jani.


--=20
Jani Nikula, Intel
