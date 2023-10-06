Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1177BB3CA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 11:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89ABD10E1E8;
	Fri,  6 Oct 2023 09:05:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E941910E1E8;
 Fri,  6 Oct 2023 09:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696583149; x=1728119149;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XRBqL2sSyRxjXiZOO3ZJdmd8MY5ORWlkUO34KoATd9M=;
 b=fX7o3bJ9rdxNShHjHrPX19RngYs3qCMELEx4WiNGlswYmN9SmqwS1E4v
 RT9F9U94l7T3R2MEohbxxcpgJHS/6KOKxswh/2+fxjjxwAYHuQLsdkpEI
 2PlxxOU/cOffIE05LoYFbbBgAjKZ8g9stt33oGMnFCPjPFYDC5hKQ9EZJ
 8ijPbo/ZdZ07M0tEeg/lZ6/1xLPhP+WpirTS5Xzvq4wxBGgwpz9+3I2Qm
 pB69ydNBngTI6Td6asO2lFTgpIfW9a12tL2Mek+4yFyCwSbpMZZyPM1vy
 GNy5z7mwBwYOPgiinc/L4CG3iEZpi02NtMUfgaRJr1KHoDEQIE1dIRsUi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="469981336"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="469981336"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 02:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="752130296"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="752130296"
Received: from cchew3-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.41.249])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 02:05:25 -0700
Date: Fri, 6 Oct 2023 11:05:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZR/Nzhi8BHMojZQN@ashyti-mobl2.lan>
References: <20231006083103.660153-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006083103.660153-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/3] Trim some pre-production code
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

> A little bit of house keeping, trimming off some pre-production hardware and
> incomplete platform support.
> 
> Tvrtko Ursulin (3):
>   drm/i915: Remove early/pre-production Haswell code
>   drm/i915: Remove incomplete PVC plumbing
>   drm/i915: Remove xehpsdv support

That's a very nice cleanup! Thanks! I have started this same work
long time ago, but ever since it has been sitting there with
little progress.

Will review it now.

Thanks,
Andi
