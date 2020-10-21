Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD44B2953B1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 22:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A26D6F507;
	Wed, 21 Oct 2020 20:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57CDC6F507
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 20:58:03 +0000 (UTC)
IronPort-SDR: +zJi7c7W+j1tcEIlv+PTNEDGv/pMLU4A5PBa3/OdHke+gKh76DQ85CTDvS+yXBdmmJNyFkPRNb
 wnql7AdSF3Zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="185105978"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="185105978"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 13:58:02 -0700
IronPort-SDR: Y/fcge+kgo4RlNpLxzV4BCzAcnZNWZxmk5DFRPoQbG6EmyVvXzYW1lrhHqCxgNyZcKcqmJuXVN
 6TnLWZbxR1fQ==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="533681392"
Received: from vibhasma-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.136.128])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 13:58:01 -0700
Date: Wed, 21 Oct 2020 13:57:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20201021205758.eda3fesehvzmnc6w@ldmartin-desk1>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-3-aditya.swarup@intel.com>
 <20201021204342.GC627052@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021204342.GC627052@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/18] x86/gpu: add ADL_S stolen memory
 support
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 21, 2020 at 01:43:42PM -0700, Matt Roper wrote:
>On Wed, Oct 21, 2020 at 06:31:57AM -0700, Aditya Swarup wrote:
>> From: Caz Yokoyama <caz.yokoyama@intel.com>
>>
>> ADL_S re-uses the same stolen memory registers as TGL and ICL.
>>
>> Bspec: 52055
>> Bspec: 49589
>> Bspec: 49636
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>
>I think you need to Cc the x86 maintainers on this patch and get their
>ack to merge it through the i915 tree.

Yeah, but make sure to mention the dependency on the first patch so they
don't try to apply and get a build error. See
https://lore.kernel.org/intel-gfx/alpine.DEB.2.21.1907170845470.1767@nanos.=
tec.linutronix.de/

Also see https://lore.kernel.org/intel-gfx/20200520093025.GD1457@zn.tnic/

For the patch itself,

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
>
>Matt
>
>> ---
>>  arch/x86/kernel/early-quirks.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quir=
ks.c
>> index a4b5af03dcc1..6edd1e2ee8af 100644
>> --- a/arch/x86/kernel/early-quirks.c
>> +++ b/arch/x86/kernel/early-quirks.c
>> @@ -551,6 +551,7 @@ static const struct pci_device_id intel_early_ids[] =
__initconst =3D {
>>  	INTEL_EHL_IDS(&gen11_early_ops),
>>  	INTEL_TGL_12_IDS(&gen11_early_ops),
>>  	INTEL_RKL_IDS(&gen11_early_ops),
>> +	INTEL_ADLS_IDS(&gen11_early_ops),
>>  };
>>
>>  struct resource intel_graphics_stolen_res __ro_after_init =3D DEFINE_RE=
S_MEM(0, 0);
>> --
>> 2.27.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- =

>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
