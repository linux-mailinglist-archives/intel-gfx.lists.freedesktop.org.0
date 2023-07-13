Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2F2752326
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 15:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F97310E6BC;
	Thu, 13 Jul 2023 13:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9C510E6BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 13:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689254142; x=1720790142;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FK5RJ1p4z39cyyWvr+e8eX0+0l9MS6H9uFQzxxs3C74=;
 b=jHBZes/SiSTh/tjPQtvgMg1bP5MvmnU4OhYWC9vgVjoNKlAYDO4SfDT2
 gzzp9tzqjhh4TH1jLFV+Go4AVC3PEJo9O5SrK7bktzuQeVR8Y3t3jKZXz
 pfSN+imLkk3nwO0TUSSOi6Y3a2y3inw/hIaDb4Vl2wd/etFgTFZtdbLg1
 BnQ8cHSufihJKv0zqh+T5h/0s1BIyUgSwse119orb/TL4EVm6NAmP7em7
 Zh9dW9olVmhq8iIC3s34qJLr5A225IX/FwCBMPSTFM2G+0dyCiyvkNFH0
 DmIdxSfPCh5TNKacdY0Io7I/0CdRiWVGQwYeMMWmk+c9zNEcmvblt9Vw+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="365218456"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="365218456"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="895993184"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="895993184"
Received: from atadj-mobl1.amr.corp.intel.com (HELO localhost) ([10.252.50.30])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:15:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230713062924.2894736-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
Date: Thu, 13 Jul 2023 16:15:37 +0300
Message-ID: <871qhceyva.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 0/6] Add DSC PPS readout
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

On Thu, 13 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Up until now we only verified one or two of the dsc pps
> params like bits_per_component and bits_per_pixel this
> patch series aim to readout almost all PPS param and get
> them compared.
> Along with that some work on making a common function to
> read and write PPS param regiters is also done.

There are some issues that I noted, and I'm sure some things could be
done differently, but overall I think this makes nice improvements, and
it's definitely better than the first version.

The further versions will still require detailed review, but the overall
approach is now

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> --v2
> -Remove duplicated code and create function that fetches register
> and reuse that [Jani]
> -move WARN_ON one abstraction layer up [Jani]
> -Split patch so that refactor and a new functionality is not added
> in the same patch [Jani]
> -Add a new refactor patch so that bit shifting can be done in a
> clean way [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Suraj Kandpal (6):
>   drm/i915/vdsc: Refactor dsc register field macro
>   drm/i915/vdsc: Add a check for dsc split cases
>   drm/i915/vdsc: Add function to read any PPS register
>   drm/i915/vdsc: Add function to write in PPS register
>   drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
>   drm/i915/display: Compare the readout dsc pps params
>
>  drivers/gpu/drm/i915/display/intel_display.c  |  31 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 622 ++++++++++--------
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    | 101 ++-
>  3 files changed, 463 insertions(+), 291 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
