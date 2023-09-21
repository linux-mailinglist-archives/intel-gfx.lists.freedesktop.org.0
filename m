Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58577A94C7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760E110E068;
	Thu, 21 Sep 2023 13:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F7810E068
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 13:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695302898; x=1726838898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=azOQLBevor6HHHpGnsg2LwKt9DnMTaiDGR6AjTHAVlY=;
 b=CldaRLLoDTm//dsuBYYERuEam3q2Vh3mZMNKyiN5hHmoSa/t2Lxukkvd
 TJPXmaUG2Bh8YbpSkaYwc+JrlNTKdGQ7LckpY/MaNyHnbu8ay+yqptgVA
 FQUHNHIq3M3sqwayh2nUly+QcJZFunXW2O2C9TfL94RX/ZIjlXYJxRwW4
 xt+Bb/4RAdp5c7uL7/q3zakkooNEB3X8/3DslMO4SORXHy+AeWPynr/lW
 nO5q5ryn6O7jDLTNscIl95HQNdTdHfYcz+fK9XsDutTHBfMRsGqoBJe/t
 OUWfzhOipscLDumIEouedPd8/OzbRTwfPK8HAmrL22dax7ooUK4dyaE3l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="377813299"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="377813299"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:25:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="890356442"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="890356442"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:24:23 -0700
Date: Thu, 21 Sep 2023 15:25:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZQxEL/XClEzR+xh/@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-8-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170257.8586-8-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Enable GGTT updates with
 binder in MTL
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Mon, Sep 18, 2023 at 07:02:57PM +0200, Nirmoy Das wrote:
> MTL can hang because of a HW bug while parallel reading/writing
> from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
> related pci transactions with blitter command as recommended
> for Wa_13010847436 and Wa_14019519902.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Oak Zeng <oak.zeng@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
