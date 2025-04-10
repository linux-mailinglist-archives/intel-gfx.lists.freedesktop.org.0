Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C39A83D88
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 10:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4662810E7F7;
	Thu, 10 Apr 2025 08:52:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBZYLzeS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7105910E7EC;
 Thu, 10 Apr 2025 08:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744275177; x=1775811177;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GrW0V7ybzjx9Ky4d1+mvQ9/5XpHUkdPZl8iYei3Y/cQ=;
 b=nBZYLzeS1Kr+YgfeijSQZZMqYt9RXO1zElxVOughgakeh4oqqTjHYSTP
 SzGToHgsh3Jjq5gluucJEYg51uf/ZgqaZ4R2DhU8U+cubQBAc9tq6AeTd
 LS19bu+NkQ2B3wWtGpASXlC0y+xBE91q5YJPUKqPCIAFaf9ytHPYwBPkS
 ZYyV9r+bs+Y4ly6B/xQxQIoNAU3u7XerwBpUVmuX4gs1VPajbZ5p/j/G2
 NzA9p1VN6hM9qQmYX0a+uA324MG8QFtzrsr/zjU4tSIyJ1gk9jJtwiQxQ
 8swr3JNlPy+pqJELz7xtTKSBT8rtHIsgCcGeJCZJTrwKJ0kbl2RPod/0R A==;
X-CSE-ConnectionGUID: pUhWes5LTLm7gTmrDX8lqQ==
X-CSE-MsgGUID: ltcnI9xFRv+FOKLCeyOWtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45669245"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45669245"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:52:56 -0700
X-CSE-ConnectionGUID: e9iPuCsjRt6PClpPdwUWBA==
X-CSE-MsgGUID: KJ6j86ElTMiNFvw3fd77Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128758822"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:52:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 5/6] drm/i915: Remove unused dpt_total_entries()
In-Reply-To: <20250402172240.9275-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-6-ville.syrjala@linux.intel.com>
Date: Thu, 10 Apr 2025 11:52:51 +0300
Message-ID: <87semgv1ng.fsf@intel.com>
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

On Wed, 02 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> dpt_total_entries() is not used anywhere. Remove it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i=
915/display/intel_dpt.c
> index 2bf4ad6a0fdf..b505b52e93f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -32,8 +32,6 @@ i915_vm_to_dpt(struct i915_address_space *vm)
>  	return container_of(vm, struct i915_dpt, vm);
>  }
>=20=20
> -#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
> -
>  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>  {
>  	writeq(pte, addr);

--=20
Jani Nikula, Intel
