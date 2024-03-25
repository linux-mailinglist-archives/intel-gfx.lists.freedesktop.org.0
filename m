Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4D18898F2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 10:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3698510E6E8;
	Mon, 25 Mar 2024 09:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbwon6DT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34FE10E6E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 09:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711360618; x=1742896618;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=WxOEtPpuwHfVjMfBK1LOe8Zb6OWpbTGiYW6xRmMrRs0=;
 b=bbwon6DTyt7a/J710JrmskKF9ml07QxWID8nbCWM/QbMg9T9aRlMnufM
 QB6jX3n888z3+4iIP0rlZRhJnFsHKNZCeAOh6h/2LUnB8pbMBY9gpX5D5
 Zow5sb5hGkxmEroKHmdr6eJQdWhfbhcKtMCGbe5im43EbnDBd8Llg+Ehj
 aUkNmMlVOnv5U+0cySB10VM4z4Lsb0xoXXiFqi2bsSmSvVC30FAow/59F
 ZTt9Eq1riGLgPacctXZyYX1Qtm9bsuXSFpVjiaTZ3XedoVEkFdqCasM7S
 mAK1G5ETRMoXjntBVSvjFp8bjGmVmTW4lMG8FAMtdnPAtF2Sso4hmzZcq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="31790494"
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="31790494"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 02:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="15591411"
Received: from idirlea-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.171])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 02:56:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [CI 0/6] drm/i915: cleanup dead code
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
Date: Mon, 25 Mar 2024 11:56:51 +0200
Message-ID: <877chqk524.fsf@intel.com>
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

On Tue, 19 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>  .../gpu/drm/i915/gt/intel_workarounds.c.rej   |  18 +
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_workarounds.c.rej

Whoops. [1]

BR,
Jani.



[1] https://lore.kernel.org/r/20240325083435.4f970eec@canb.auug.org.au


-- 
Jani Nikula, Intel
