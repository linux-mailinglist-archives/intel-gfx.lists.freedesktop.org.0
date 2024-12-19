Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42B89F7A02
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 12:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C5910E0A5;
	Thu, 19 Dec 2024 11:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZ3tCgo6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC0010E0A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 11:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734606263; x=1766142263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=00q8WQ4fUsjB1VPbMMI6U3JtCVDbpUa04HZji07Oh+I=;
 b=VZ3tCgo6MFcQbs53ZbgOY5yMtDsr1kSvWVgn516M5k0aeU8XP0n8FoA+
 BE5mTco5Pt08t4SCaDLNF+coqG0/i1rkQhaTY0HSuYaUr2/Og7GaJDpk7
 Fx+K7aPlkiuG+5onkUFa/0beJ+jZwr4ZuWiznVGrtvhZ9XmFpQQ2kw3ZZ
 gPHePru+vXksSgvA5GsO576RJeF9ZNd9Fr5Rb50AdvwQMoHTUr7YLmM+9
 sFt80T5GllrJPTL2htcsq1ZsnSLJbpUeSXXiWVGBR4Cwi8yXpjkBH5kp6
 DHzEc3+mSg8cp4bYvc1Wm+RMDJTrg15aYy5Jvjlp8sya1C9knghXhTkCg A==;
X-CSE-ConnectionGUID: 6SITVSqcSISjkBuVaezRbw==
X-CSE-MsgGUID: SY9tgMd7QtCkaImtYXWJOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34435249"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="34435249"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 03:04:22 -0800
X-CSE-ConnectionGUID: PKRAlMEPQqaLMpyNVtROQA==
X-CSE-MsgGUID: oA/aFcovQg6XmoV7d9Ruqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98979880"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.178])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 03:04:20 -0800
Date: Thu, 19 Dec 2024 12:04:16 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sk Anirban <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, sai.teja.pottumuttu@intel.com,
 riana.tauro@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v7] drm/i915/selftests: Implement frequency logging for
 energy reading validation
Message-ID: <Z2P9sIEGhQoFpOY3@ashyti-mobl2.lan>
References: <20241129154716.2764974-1-sk.anirban@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241129154716.2764974-1-sk.anirban@intel.com>
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

Hi Sk,

On Fri, Nov 29, 2024 at 09:17:16PM +0530, Sk Anirban wrote:
> Add RC6 & RC0 frequency printing to ensure accurate energy
> readings aimed at addressing GPU energy leaks and power
> measurement failures.
> Also update sleep time for RC6 mode to match RC0.
> 
> v2:
>   - Improved commit message.
> v3:
>   - Used pr_err log to display frequency (Anshuman)
>   - Sorted headers alphabetically (Sai Teja)
> v4:
>   - Improved commit message.
>   - Fix pr_err log (Sai Teja)
> v5:
>   - Add error & debug logging for RC0 power and frequency checks (Anshuman)
> v6:
>   - Modify debug logging for RC0 power and frequency checks (Sai Teja)
> v7:
>   - Use pr_debug if RC0 power isn't measured but frequency is (Anshuman)
>   - Improved commit message (Badal)
>   - Change API to read actual frequency without applying forcewake (Badal)
>   - Update sleep time for RC6 mode (Anshuman)
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

merged it to drm-intel-gt-next.

Thanks,
Andi
