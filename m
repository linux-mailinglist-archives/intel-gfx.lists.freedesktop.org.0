Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 721EA9B4C34
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 15:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644B710E299;
	Tue, 29 Oct 2024 14:36:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nd+Fb0rL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4A010E258;
 Tue, 29 Oct 2024 14:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730212564; x=1761748564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fdIKsdgWW0MpJnN8sThMVEmEPaz5PFI6uA5p2eQwUrE=;
 b=Nd+Fb0rL+He3dj4rUvNQPJ0m6V2P4UxpFJQOEQwQQusWuJKdMqlX/3OQ
 fSE+yivH6WIlItEO9XqxQoccB3MORwt3CFhi/Ro7aMP2oWwSSM1WtWNlv
 jSrzd3ZXPKtIf/dW+SYU9532DDdX1+hmN0mfWr001jOhFkWMs/bSzCzQ2
 1pv/21GN6vcEMxUY51q//8YpxwjOA2FbEo05u9lhyxQZRr2LiqPJTfLVN
 JAFdq2M8l8PQ2ikeR0maPo49fRI0OoST9FXv3Qew+skL/BJA4XT47FgJh
 bxCiRC3/s9+wgFDGbrqCFnetIBSCsxazroWjbDS12znZ/fYX2gRho6CIq w==;
X-CSE-ConnectionGUID: XjZqTPYGQnGpL8vg9haeDA==
X-CSE-MsgGUID: JBMUHgDSThyRNc6HrOB4gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33556707"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33556707"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:36:04 -0700
X-CSE-ConnectionGUID: 6SHLEyhiS3inNiLT1w/onw==
X-CSE-MsgGUID: EelqmjH+R1+peUmzqFiEJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86533655"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:36:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v2 0/3] drm/i915 & drm/xe: shared PCI ID macros
In-Reply-To: <ZyDj_yreAKZ4piap@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1729590029.git.jani.nikula@intel.com>
 <Zxe_BOBoy8H_ub09@ashyti-mobl2.lan> <87sesfnvfs.fsf@intel.com>
 <ZyDj_yreAKZ4piap@intel.com>
Date: Tue, 29 Oct 2024 16:35:57 +0200
Message-ID: <87ed3znfhu.fsf@intel.com>
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

On Tue, 29 Oct 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next. The PVC stuff in topic/xe-for-CI
caused a bit of a hurdle, but it's there now.

BR,
Jani.


-- 
Jani Nikula, Intel
