Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54AD9DB6EB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985C210E449;
	Thu, 28 Nov 2024 11:50:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PVOAPlPK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F76D10E459
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 11:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732794641; x=1764330641;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4qPmyldykvRIJtdTbdygBv+3kNPX4ssoPU3Vbi8Fj90=;
 b=PVOAPlPKH5KdgTSLlzajF+3YzRxcourLcezgTozDMZEaK2lynbWeP3r7
 uCmIXHCSPpNBWtls5mLR1FeKxeaeanoIuM+R0Y6QqiNuLyDSUxdhVOOIy
 pudiS2TwMuP7jdX9xNeNWqhYVa+5UY+Rbfkz3lgmqHpxPsk+Im/NcuRuY
 it3HUVBRuThnarQC5YWuFeUVt94S2Yr9kB91IzhuX4QXW3YSbcMDNrf/o
 IoIgcaUtX1wOOOexV5a2sFaeEQs9xjzvJhryliqmRgUAVv4DHSEDDtQv0
 heSRubaShQGn+4tork4aWrqrIGDvr1pb3dYlWK2PCaD586BSiCnTaX0RB w==;
X-CSE-ConnectionGUID: 9HpN5lJ3QMC6ScBe1HlzaA==
X-CSE-MsgGUID: C0a3N2jKTYqofb77LBmJVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="33268301"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="33268301"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:50:41 -0800
X-CSE-ConnectionGUID: bmPSIPccTB6rBpOzByiILQ==
X-CSE-MsgGUID: FhZHiyJETDKlreHZHtyktQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92024291"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.166])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:50:39 -0800
Date: Thu, 28 Nov 2024 12:50:35 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jiasheng Jiang <jiashengjiangcool@outlook.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_drm=2Fi915=3A_Fix_memor?= =?utf-8?Q?y?= leak by correcting
 cache object name in error handler (rev3)
Message-ID: <Z0hZC-OkJUUVSjbK@ashyti-mobl2.lan>
References: <20241127201042.29620-1-jiashengjiangcool@gmail.com>
 <173279289861.4072800.13122969002635510947@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173279289861.4072800.13122969002635510947@b555e5b46a47>
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

Hi Jiasheng,

> CI Bug Log - changes from CI_DRM_15756 -> Patchwork_133610v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_133610v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_133610v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/index.html

I retriggered the test as I think this is not related to your
patch.

Andi
