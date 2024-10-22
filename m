Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D889AB19C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ABFE10E337;
	Tue, 22 Oct 2024 15:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EkXKVSvE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3C410E1F4;
 Tue, 22 Oct 2024 15:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729609445; x=1761145445;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qfRyE6OGLIeW3p4GnNyq52nCX9Bel9iVIk0u15VpOPQ=;
 b=EkXKVSvEbBFi0ZX3DhFo1PJejfPa2hzmu6Gd6kvRn8i6M91iZF7KwL8v
 jrtRlAu7Png/o4TZ5ch3F02DrVGbMpfJID4pQa/YJTbzLXXolnFTBRxHn
 RNask/4Sqh5Az72FDaGU1dsUNTKuS5lKhUZNaZ+ZVD81PrmWOOd06swBU
 ikn8vriYeAJpBuE/VDgr+8umrIvrIvCZzuboHRuOtQuFfGY2EW6o3NgJ3
 jJMQNGVj19xGGimttH7CWyW4CIDRPQ/KGU+o97k6sDVi4ZGDOfCXaj9Zx
 32obUbsBjJMzHEcFaF3vTnjPiH1p354RMzBYasNXoyQWdsZBvhVC4ZQQ2 w==;
X-CSE-ConnectionGUID: fJaYE/d6QqSil8YBiorAug==
X-CSE-MsgGUID: E7znYgxHQYyw3eCcGtWRdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="33079460"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="33079460"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:04:02 -0700
X-CSE-ConnectionGUID: 7DtR9gZmT/6hhDtw3zwheA==
X-CSE-MsgGUID: vvEnpTtUQf6CeMoEu13q6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80072049"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.31])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:03:59 -0700
Date: Tue, 22 Oct 2024 17:03:55 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v2 2/3] drm/intel/pciids: rename i915_pciids.h to just
 pciids.h
Message-ID: <Zxe-29RohklKnA8E@ashyti-mobl2.lan>
References: <cover.1729590029.git.jani.nikula@intel.com>
 <835143845faa5310e4bb58405a8a0848392bbf06.1729590029.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <835143845faa5310e4bb58405a8a0848392bbf06.1729590029.git.jani.nikula@intel.com>
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

Hi Jani,

...

> Could be intel_pciids.h too, but it's already in include/drm/intel

If we met in the coffee corner and you asked me, I would have
said that intel_pciids.h would be better, but I won't complain if
you keep it as it is.

> subdirectory.

...

> -#ifndef _I915_PCIIDS_H
> -#define _I915_PCIIDS_H
> +#ifndef __PCIIDS_H__
> +#define __PCIIDS_H__
>  
>  #ifdef __KERNEL__
>  #define INTEL_VGA_DEVICE(_id, _info) { \
> @@ -822,4 +822,4 @@
>  	MACRO__(0xB0A1, ## __VA_ARGS__), \
>  	MACRO__(0xB0A2, ## __VA_ARGS__)
>  
> -#endif /* _I915_PCIIDS_H */
> +#endif /* __PCIIDS_H__ */

Should this be __INTEL_PCIIDS_H__ anyway?

Andi
