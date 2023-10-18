Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC6C7CD2C9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 05:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A23D10E365;
	Wed, 18 Oct 2023 03:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0A210E365
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 03:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697601105; x=1729137105;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ohUMsO0Wn7K4XRDeI/ucunlSyZi9Dbd+1/RYuX/PojU=;
 b=Llxp6If6+T6D4YDUdov3HMQnEHMuTu/LCyA4RX+4SPJrPqPaCKmHwcVP
 TCNXyUsdm29N+1ecoSDz5GPpnOti9ic7DDT/3gHTvOKcuz6Kjm601KF3x
 21b2TsTk4L60hN9XeVkm2mcV5wzAFGFvHvVfce3RD9PfziuzAzrlupB3J
 74JPQwQ4G3d2DAnktN2PpNNSzMNzRergc2srRZ7pVVScgiPkdiIucezzF
 G4SZOz+qB5JvpbNJYFofBLZTcJmQgSsWh3M+Jb5LgDDT1gTnamD50CatP
 43r0OYWWAa7oUK9rmyUnjjw9HEO/KHsRAPyvw6X83mhKcs9f7SxFsjFNJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="383153142"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="383153142"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 20:51:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="822267220"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="822267220"
Received: from kchua1-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.248.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 20:51:41 -0700
Date: Wed, 18 Oct 2023 05:51:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZS9WRr1m/3VL5tKN@ashyti-mobl2.lan>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
 <169759684741.15109.1577462693795053429@emeril.freedesktop.org>
 <ZS9Q7hmOBGzz1le7@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZS9Q7hmOBGzz1le7@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_routines_?=
 =?utf-8?b?KHJldjMp?=
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > Possible regressions
> > 
> >   • igt@gem_exec_parallel@fds@vcs0:
> > 
> >       □ shard-tglu: PASS -> INCOMPLETE
> >   • igt@gem_exec_parallel@fds@vcs1:
> > 
> >       □ shard-dg2: PASS -> INCOMPLETE +1 other test incomplete
> >   • igt@gem_mmap_offset@clear@lmem0:
> > 
> >       □ shard-dg1: PASS -> INCOMPLETE
> >   • igt@kms_psr@psr2_suspend:
> > 
> >       □ shard-mtlp: NOTRUN -> FAIL
> 
> These failures don't look depending on this series.
> 
> The gem_exec_parallel test has been causing some troubles also
> during the test of v16, but it already has some history that
> needs to be looked after[*].
> 
> I don't want to start all the chain of tests I did yesterday, so
> that I'm going ahead and merge the series.

besides these failures happen on machines where the patch doesn't
have any effect and in our manual tests we don't see them.

Andi
