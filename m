Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC87688BEB3
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12AB910E4CF;
	Tue, 26 Mar 2024 10:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4adIj8a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD6F10E4CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711447499; x=1742983499;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IR75BS7IQNTY47UBzBAh6pr5T5fOmp0PlVv8XCDJQPE=;
 b=T4adIj8a9pbeccT+t/Kr6GsQ8fXLXlLSQMWf4Hx/e3bGTwZWNGb7csBJ
 JybZfYjCtI53cgHV8pOif39fYTfDe+JtRNyiLUJlZMY859pu1l2aC6tbJ
 1E1B/Wc0lA4aUC67Kn+pgvoYOFPPR8ne56bj1tXzhwD0/Dws1WYK1CmUN
 GKNe7VVAZMqbzO8xJxp8hGYgTdEt3meQw5JVDxz0IDP6UO+0oOe7kcWrU
 aHdh3o9t/aYXoxYXj/ExIGAj6bQtRvk/EfI5s4cukiXVrgmXBRF3+DP4f
 moZryEe7ZCmgXJRslSQt4RKNRPzlw5AoW+7oG2cMwXb0jS4Hdc3Jx/nHS A==;
X-CSE-ConnectionGUID: TbWz7kNsSAOQsUiU29BI9A==
X-CSE-MsgGUID: OcyX6byxTbqWRK/yT7xSEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="10282492"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10282492"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="39024590"
Received: from eldobson-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.140])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 02:55:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 radhakrishna.sripada@intel.com, clinton.a.taylor@intel.com,
 matthew.s.atwood@intel.com, dnyaneshwar.bhadane@intel.com,
 haridhar.kalvala@intel.com, shekhar.chauhan@intel.com
Subject: Re: [PATCH] drm/i915: Add new pciid's to DG2 platform
In-Reply-To: <20240326094820.3828528-1-ravi.kumar.vodapalli@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240326094820.3828528-1-ravi.kumar.vodapalli@intel.com>
Date: Tue, 26 Mar 2024 11:55:46 +0200
Message-ID: <8734sdiafx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 26 Mar 2024, Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com> wrote:
> New pciid's are added in Bspec for DG2 platform

drm/i915 subject prefix does not match the patch, which is for xe.

Do the i915 PCI IDs also need updating?

And please call them PCI IDs instead of "pciid's".

BR,
Jani.


>
> Bspec: 44477
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  include/drm/xe_pciids.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/include/drm/xe_pciids.h b/include/drm/xe_pciids.h
> index ab4a8987ac65..c7fc288dacee 100644
> --- a/include/drm/xe_pciids.h
> +++ b/include/drm/xe_pciids.h
> @@ -134,7 +134,9 @@
>  	MACRO__(0x5692, ## __VA_ARGS__),	\
>  	MACRO__(0x56A0, ## __VA_ARGS__),	\
>  	MACRO__(0x56A1, ## __VA_ARGS__),	\
> -	MACRO__(0x56A2, ## __VA_ARGS__)
> +	MACRO__(0x56A2, ## __VA_ARGS__),	\
> +	MACRO__(0x56BE, ## __VA_ARGS__),	\
> +	MACRO__(0x56BF, ## __VA_ARGS__)
>  
>  #define XE_DG2_G11_IDS(MACRO__, ...)		\
>  	MACRO__(0x5693, ## __VA_ARGS__),	\

-- 
Jani Nikula, Intel
