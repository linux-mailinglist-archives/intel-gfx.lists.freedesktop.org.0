Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D446E92AE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 13:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A4810E0B6;
	Thu, 20 Apr 2023 11:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF0A10E0B6;
 Thu, 20 Apr 2023 11:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681990216; x=1713526216;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Cqs+EELo53RdH4U4DaTZCJmLqUNti5L0XLa0DKn/4L4=;
 b=XycByq7aWcVyF9Hlb8jsGfHNiLQI9GUhTKGwFX2FSTTmYOe9fuB3vkoj
 Rp3RV1kTPseGMDjUrwoUbzoi4JSyubks3ZHsu/qryKK6UobTt7pO7for2
 XXr+c59DwsDdNCkO5MghoisYQ0JvItYO+TRYJWqj6G50ZOuuBwtYWw63l
 t76hddyw8aSvU9h3cIfJq8mwenAzwiuNtsvV1J3lQShLEhS13iQ7Sqkkj
 TDbsvqubLZzf/dRICLD4xeTtPKL2EzaSLUR2Mgj5Zeif4kbmCUemo03q4
 dHLLoKjOBOgwhMDHny/nv9l5ulPKgmal0ndNH98exbG/zPmJ3t2MA97FP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="334538334"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="334538334"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="685316658"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="685316658"
Received: from ashwinva-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.120])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:30:11 -0700
Date: Thu, 20 Apr 2023 13:30:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: fei.yang@intel.com
Message-ID: <ZEEiP9q+v62YwwNf@ashyti-mobl2.lan>
References: <20230419230058.2659455-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419230058.2659455-1-fei.yang@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915/mtl: Define MOCS and PAT
 tables for MTL
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Fei,

On Wed, Apr 19, 2023 at 04:00:50PM -0700, fei.yang@intel.com wrote:
> From: Fei Yang <fei.yang@intel.com>
> 
> The series includes patches needed to enable MTL.
> Also add new extension for GEM_CREATE uAPI to let
> user space set cache policy for buffer objects.
> 
> v2: addressing review comments and checkpatch warnings
> v3: make mtl_ggtt_pte_encode static

This series is a mixture of different series, bug fixes along
with PAT table. Maybe a good solution is to split this series
in more series, so that CI has the possibility to perform a
better per-patch testing.

Nirmoy has already sent the first two patches of this series for
testing. The 4th patch can be also taken out from this series.

Andi
