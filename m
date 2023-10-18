Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A70217CE31F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 18:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C4210E197;
	Wed, 18 Oct 2023 16:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3273D10E197
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 16:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697647440; x=1729183440;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=s8J60qlxY92yV0IdTsPa2s+D+X9K48KZRleaRZDmduY=;
 b=FH2gzMJ7caN8ftPoZbrjap2aaDof48+vovztjr7sSRZU6le5Ka/RQGaj
 CuCtz6YWabWPC5tLAHoSWg5jIXb9KhoN5/GuzUFMFwjDkkmR+cPwKrNpI
 Au7X2Ug7oNJbM96GwhEqzIiBVq0UteNbJFere29KngdHsHwUvjBCCFbyl
 pzm1fXUIbvpdUxUrNIajv4Wd8MyzWRVyU3O8qcMaSGFMZzHSoH6UMHKxo
 fsTSQE/OSOCSchiJEUwwRhN1crQ1QtLerD2nqX1X+kfuy6BD7ELmDy9I2
 0IsmNcyt58HrL0GscEVksl6wPfFGOFagbxkeni/3DxzN3a782yYbr6EMe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="4648069"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; 
   d="scan'208";a="4648069"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 09:44:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; 
   d="scan'208";a="4618226"
Received: from nurfahan-mobl3.gar.corp.intel.com (HELO intel.com)
 ([10.213.159.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 09:44:01 -0700
Date: Wed, 18 Oct 2023 18:43:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZTALROwYzZNo4Jll@ashyti-mobl2.lan>
References: <20231017195309.2476088-1-vinay.belgaumkar@intel.com>
 <169759328299.15109.5802304051647309440@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169759328299.15109.5802304051647309440@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Don=27t_set_PIPE=5FCONTROL=5FFLUSH=5FL3_=28rev5=29?=
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

Hi Vinay,

> Possible regressions
> 
>   • igt@gem_exec_nop@basic-series:
> 
>       □ shard-glk: PASS -> INCOMPLETE +1 other test incomplete
>   • igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       □ shard-dg2: PASS -> TIMEOUT
>   • igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-hdmi-a-1:
> 
>       □ shard-tglu: PASS -> INCOMPLETE
>   • igt@kms_psr@psr2_suspend:
> 
>       □ shard-mtlp: NOTRUN -> FAIL

these failures look unrelated and besides they are not related to
MTL.

Andi
