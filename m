Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3CB8C402C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 13:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D53F10E4DF;
	Mon, 13 May 2024 11:53:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GuFnClWH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017FD10E4DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 11:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715601231; x=1747137231;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3yj74tHOpbX/nsuq6zT8ihCq9EEhwt5JwxscoYGe89Y=;
 b=GuFnClWHhhfri1HaMkloH8sUMLULcNhPbIelL4j3QeejycyyG3Pofi9J
 qXa0o5cwVHRRQMK/v1Td/KTMqFuPB9cntTKYNimoPiOLU4GuiUJ/HTjN6
 FWI7Ezs+UviZioJzYT7ku9e/uC5lCHyrToKUxGedv/RDlwzV8wuHa3dIM
 69KtsNy0bOO28gNhewG4n5Pp0dyAEX177WrwPkzglGfQR+bVdWAoAhvhF
 W7oFeVRt5knQ2QsFMCDV6dw2YfnOUYTqLKZTRTxEapjdi81CfGzR+ITEx
 mY5WdVZ+w/QwwPVWe47jrUnMojIdQaNs4DtIA1oZdE5O/3iOGqRHI/LQz A==;
X-CSE-ConnectionGUID: K+H3ghkPRQeFqAdTqWHX7w==
X-CSE-MsgGUID: moEj06azR0eYGotdAcyFCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11706794"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11706794"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:53:50 -0700
X-CSE-ConnectionGUID: evwj1KtqQyGI1jvriOiBpw==
X-CSE-MsgGUID: w6NSBpmtSO2vRgSLZnMgWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30299258"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:53:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com
Subject: Re: [PATCH v8 1/7] drm/i915: Define and compute Transcoder CMRR
 registers
In-Reply-To: <20240509075833.1858363-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 13 May 2024 14:53:45 +0300
Message-ID: <874jb2exme.fsf@intel.com>
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

On Thu, 09 May 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add register definitions for Transcoder Fixed Average
> Vtotal mode/CMRR function, with the necessary bitfields.
> Compute these registers when CMRR is enabled, extending
> Adaptive refresh rate capabilities.
>
> --v2:
> - Use intel_de_read64_2x32 in intel_vrr_get_config. [Jani]
> - Fix indent and order based on register offset. [Jani]

How does this match with...

>  
> +#define	_TRANS_CMRR_M_LO_A		0x604F0
> +#define	_TRANS_CMRR_M_HI_A		0x604F4
> +#define	_TRANS_CMRR_N_LO_A		0x604F8
> +#define	_TRANS_CMRR_N_HI_A		0x604FC
> +#define	TRANS_CMRR_M_LO(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
> +#define	TRANS_CMRR_M_HI(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
> +#define	TRANS_CMRR_N_LO(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
> +#define	TRANS_CMRR_N_HI(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
> +

...this?

Please read the comment at the top of i915_reg.h

BR,
Jani.


>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)

-- 
Jani Nikula, Intel
