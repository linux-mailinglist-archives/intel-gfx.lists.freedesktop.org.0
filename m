Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C44B1C620
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 14:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B471D10E755;
	Wed,  6 Aug 2025 12:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K2mu8Q22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD9510E755
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 12:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754484151; x=1786020151;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Yldn5Uh7qdMpBEUSrZ9J8SC/atCEmrENIJiTRfl6Afs=;
 b=K2mu8Q220dbfVpuAd4uCEJ2vqtsk8y/GGKaUuypUx5L5fxKdQ71wqzDt
 rJbvmowORDFlGVJsDFvm29230Tz4rcqbP61XUDTGp8Cuxgg5iMKhnr84p
 b+R4ggIyJCkpQNFFYxRyCU/rcaJevDm00M5JtDeKhMCNhTcO1x4anOR4v
 Nwos2gjarWd7sylvQCRKX/Y5UmUmYPHkil3h66wuvCTjBrrTVHd8wl4ML
 qykxes1XTuVkLXh4PkYdtHcKwFVJercrlk+Er+eaJsdQ+nlPjNkJ4jLcM
 PXJ+BvOpUYH2xd7BTLj1TOB2614oPoeGD47ASx+DEHRNtBqTC4SIOmfg5 Q==;
X-CSE-ConnectionGUID: x5nlwe8sRxefAR+adq2I9A==
X-CSE-MsgGUID: yd+J1lcKT3aZc+3Od2crVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56693626"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56693626"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:42:31 -0700
X-CSE-ConnectionGUID: ejfLnQ6hRiWcawKTrwfniw==
X-CSE-MsgGUID: zK/HPJNdSdi1OFNNcxQmng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="170140123"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:42:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/dsi: Fix overflow issue in pclk parsing
In-Reply-To: <c02246564c85265aae33d6206ea750c274901cf3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806102727.2043589-1-jouni.hogander@intel.com>
 <c02246564c85265aae33d6206ea750c274901cf3@intel.com>
Date: Wed, 06 Aug 2025 15:42:26 +0300
Message-ID: <b71b5161c44e2ef73bd46917339bfe6f4e8864ac@intel.com>
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

On Wed, 06 Aug 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 06 Aug 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>> Parsed divider p will overflow and is considered being valid divider in
>> case pll_ctl =3D=3D 0.
>>
>> Fix this by using do while.
>>
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/dr=
m/i915/display/vlv_dsi_pll.c
>> index b52463fdec47..f56985c3da54 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
>> @@ -142,10 +142,10 @@ static int vlv_dsi_pclk(struct intel_encoder *enco=
der,
>>  	pll_div &=3D DSI_PLL_M1_DIV_MASK;
>>  	pll_div =3D pll_div >> DSI_PLL_M1_DIV_SHIFT;
>>=20=20
>> -	while (pll_ctl) {
>> +	do {
>>  		pll_ctl =3D pll_ctl >> 1;
>>  		p++;
>> -	}
>> +	} while (pll_ctl);
>>  	p--;
>
> Alternatively, use p =3D lfs(pll_ctl), check the return value, and p--
> after that?

Should be fls(). (Find last set.)

>
>
>>=20=20
>>  	if (!p) {

--=20
Jani Nikula, Intel
