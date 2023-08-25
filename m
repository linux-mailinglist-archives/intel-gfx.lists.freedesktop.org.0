Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7A4788032
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 08:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14FA10E60E;
	Fri, 25 Aug 2023 06:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D6B10E60E
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 06:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692946071; x=1724482071;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=gP8auH1rznC4gECcCE1elmlOQMceQkeUJ8wYUlEhyuE=;
 b=ftb24Dmc9FAL0uGNONGgrlDRPDTgw4MF8Ev3vdR+vT2LHyt8zfswWDdS
 oIfXMgWoyCQ8QMe6GjjEkdT6ZeqDUiYQSFialvbrGrlmTr3yWgxrNYBNN
 zx5TxqSGFhzqkHorYtPR5OMCe1O1wq32AAG6qI0fzR3IeV/bC0XhSiX7I
 RjFslxpZADp5hJANaNVGhBO3uyMMFUtunWTj2x5JmgsiU2c5BeQUww5B6
 9XgbtxdDMDHYdr1N9dPEK3h8igl4Yl6L1edU9iIIQw1RDii9DRQCISSsW
 /zNnDlWOJCEGuw+Sk6gTkoYt5IbXavbxOy8ruFqVZfbnjLjHaAr6GZzSN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="461010795"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="461010795"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 23:47:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="730929097"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="730929097"
Received: from ogbrugge-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 23:47:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230822204818.109742-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230822204818.109742-1-vinod.govindapillai@intel.com>
Date: Fri, 25 Aug 2023 09:47:45 +0300
Message-ID: <87wmxj39f2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v1 0/2] SDP split for DP-MST
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

On Tue, 22 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> SDP split config for DP-MST
>
> v1: Fix wrong port comparison (Jani Nikula)
>
> Vinod Govindapillai (2):
>   drm/i915/display: update intel_dp_has_audio to support MST
>   drm/i915/display: configure SDP split for DP-MST

Pushed to din, thanks for the patches.

BR,
Jani.

>
>  drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 21 ++++-----------------
>  3 files changed, 14 insertions(+), 22 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
