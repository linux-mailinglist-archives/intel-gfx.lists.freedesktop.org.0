Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF8F1787E3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 02:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71176E114;
	Wed,  4 Mar 2020 01:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2A96E114;
 Wed,  4 Mar 2020 01:58:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 17:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233955188"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 03 Mar 2020 17:58:47 -0800
Date: Wed, 4 Mar 2020 07:28:49 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Message-ID: <20200304015849.GC16504@intel.com>
References: <20200212102942.26568-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212102942.26568-1-ramalingam.c@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 0/5] HDCP misc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-12 at 15:59:37 +0530, Ramalingam C wrote:
> Combined HDCP patches together. Few for DRM SRM handling and few
> more for hdcp2.2 compliance fix at I915.
> 
> v2:
>   minor changes in i915 related 3 patches.
> 
> Ramalingam C (5):
>   drm/hdcp: optimizing the srm handling
>   drm/hdcp: fix DRM_HDCP_2_KSV_COUNT_2_LSBITS
Thanks for the review. Above two patches are submitted into
drm-misc-next.

-Ram
>   drm/i915: terminate reauth at stream management failure
>   drm/i915: dont retry stream management at seq_num_m roll over
>   drm/i915/hdcp: conversion to struct drm_device based logging macros.
> 
>  drivers/gpu/drm/drm_hdcp.c                | 158 +++++++-----------
>  drivers/gpu/drm/drm_internal.h            |   4 -
>  drivers/gpu/drm/drm_sysfs.c               |   2 -
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 189 +++++++++++++---------
>  include/drm/drm_hdcp.h                    |   6 +-
>  5 files changed, 171 insertions(+), 188 deletions(-)
> 
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
