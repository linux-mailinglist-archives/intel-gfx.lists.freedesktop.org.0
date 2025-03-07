Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63247A566C6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 12:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B714D10E114;
	Fri,  7 Mar 2025 11:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrIrRK24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C681110E114;
 Fri,  7 Mar 2025 11:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741347052; x=1772883052;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=bcLsAqg01/8S5FL6Xqnk8pVl08WKyTjG6CqWFNor6p8=;
 b=IrIrRK24pKGWq0ubJM95zTmNWFqtenXq4n0a95XLNLLu+zfo3OQchGT+
 I61NCJhVCELPBQpqlfg3iZ3u3gt5cq3vgim9KkW3lk4yKzgQQ1A9DXIT1
 EF5flgV9jJPyRLU/thzuMFoLa3jfsQO7ANN/FEoVlsqXCiGckNA1HcZnF
 cuDpDPj2NtbstjoApymxwJUB9iQ7WlDUv/mP5hXP5hABeeVkYcoOrpBi9
 3uOc396pM08JtDEShgOWIsKgRSJ4SFif8EOa0pzIKUDj5BF0f2KzTZGjw
 H6e1zkKokyjoBUInPJRKCL+dIeyp5p+QFUe4f0yD6uUAgsGX4KJoymjMp A==;
X-CSE-ConnectionGUID: 3AtQ9GB9TbuDQ3GkvbXYVA==
X-CSE-MsgGUID: L+QOXt28RY6Ghzaz9q6mFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41647242"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="41647242"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:30:46 -0800
X-CSE-ConnectionGUID: LWHMWY7UQmCTCihqnphLWQ==
X-CSE-MsgGUID: MZoXXI8CSOGjNyTZID59IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119052091"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.240])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:30:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: RE: [PATCH v2 1/2] drm/xe/compat: refactor compat i915_drv.h
In-Reply-To: <IA1PR11MB646726CF92026CD998153F89E3CA2@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1741192597.git.jani.nikula@intel.com>
 <d6bd95bf52aa37f48ddec3e675b7a3cc66829eef.1741192597.git.jani.nikula@intel.com>
 <IA1PR11MB646726CF92026CD998153F89E3CA2@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Fri, 07 Mar 2025 13:30:40 +0200
Message-ID: <877c51hycf.fsf@intel.com>
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

On Thu, 06 Mar 2025, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of J=
ani
>> Nikula
>> @@ -0,0 +1,15 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#ifndef __I915_GEM_OBJECT_H__
>> +#define __i915_GEM_OBJECT_H__

Exceptionally, I took the liberty of fixing this while applying.

It was pure luck that I caught it with clang's -Wheader-guard [1].

[1] https://clang.llvm.org/docs/DiagnosticsReference.html#wheader-guard

> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

Thanks for the review, series pushed to din.

BR,
Jani.

--=20
Jani Nikula, Intel
