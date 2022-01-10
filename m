Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D174895DA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 10:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2D312B744;
	Mon, 10 Jan 2022 09:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B412C12B744
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 09:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641808751; x=1673344751;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Cz587lX8psdvI14vKci1/WtbxfHPjluS9NtPoG3Sxu0=;
 b=P2w8yLk5fUzPSezwY/tE3kSc++7J94BRpvRVIWjkV5FOISwzcVERX9LA
 nhNMO59RLMRvO44PXBXXY8WVQp34wFvjDLpqF6NzxKpQD+cv4vSfgpZza
 OWk1nXZgOX2SXBi50CdXSap1qBVV8rUGC5RK3kz0AhanFe78H/+yXbMd8
 9cehkOmIM+Vw6Kdgo8lf/tIGLw6FIz0z9/L7lU6+iNUI3DVgYZbfjEesd
 XPwzkUuAtnzfSGubhVByedkIPfKlrjjdbsGwNbr6pl1D2Sk5o9l5/Yck+
 0WDE8Rkix+9g5AEtDkhnGs1C1eAQMb4nA21cP7x46jzxKuK6BY3CjhIem w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267521132"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="267521132"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:59:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="474075103"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:59:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <Ydh0B45uYhxMmznT@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220107094951.96181-1-jani.nikula@intel.com>
 <Ydh0B45uYhxMmznT@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 10 Jan 2022 11:59:05 +0200
Message-ID: <877db7c3o6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: split out PCI config space
 registers from i915_reg.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 07 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Jan 07, 2022 at 11:49:49AM +0200, Jani Nikula wrote:
>> The PCI config space registers don't really belong next to the MMIO
>> register definitions.
>>=20
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
> ...
>> diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i=
915/intel_pci_config.h
>> new file mode 100644
>> index 000000000000..db35b91d36e0
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/intel_pci_config.h
>> @@ -0,0 +1,85 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2021 Intel Corporation
>
> It's 2022 now!

They were written in 2021, but I guess it's the first posting that
matters. Fixed in v2.

>
> Otherwise,
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
