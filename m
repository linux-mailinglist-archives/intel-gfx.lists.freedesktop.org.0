Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B8C50D579
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 00:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0469210E225;
	Sun, 24 Apr 2022 22:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B940310E225
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 22:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650837628; x=1682373628;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lffi91a3fCwIXOZLPNgO2BghnK1hnZTZYIWEdB8F9PA=;
 b=f4uJ7ASIi4QQe2Gk1hicmzNc+poKWb3N38/P+n8B2W9g3LfdiKVaOVZ8
 R9R+SQ84fg2r2Kg4BWd5qFJZrr/nTpTSaby0I6aJljJiIy6dsUJm9PH1t
 S6SAIiDzCfYtIa6ukaOh1YjuOvMDqchDBm/BdeaH/UltUdtHwPNaDf4dk
 NexAnNShWadX8BP3JCizS0PJGX1lergQFxMDx77q5b6xNTYLsBvRKdpxc
 EM9Ro+nz0GoCpbR0M8CCENFCkRL0Ki22k4Z1ZC2LP6OUgrLx2y/1pVJQU
 3dMp+i4LMP/EuPqxrjWxHzTM2NCJBY629tnyxr2/Wmmz/F2dyGVDsi2I0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="351538841"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="351538841"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:00:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="675805587"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:00:27 -0700
Date: Mon, 25 Apr 2022 00:00:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmXIeAQckk060qo1@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <85b4fcd249fb577b1d2acee2a6d39be7178540ff.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85b4fcd249fb577b1d2acee2a6d39be7178540ff.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/pcode: Add a couple of pcode
 helpers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On Tue, Apr 19, 2022 at 11:25:05PM -0700, Ashutosh Dixit wrote:
> From: Dale B Stimson <dale.b.stimson@intel.com>
> 
> Add a couple of helpers to help formatting pcode commands and improve code
> readability.

Can you please add some more details on the helpers?

> v2: Fixed commit author (Rodrigo)
> 
> Cc: Mike Ruhl <michael.j.ruhl@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

[...]

> +/*
> + * Helpers for dGfx PCODE mailbox command formatting
> + */
> +int __intel_gt_pcode_read(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 *val);
> +int __intel_gt_pcode_write(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 val);
> +
> +#define __snb_pcode_read(i915, mbcmd, p1, p2, val) \
> +	__intel_gt_pcode_read(&(i915)->gt0, mbcmd, p1, p2, val)
> +
> +#define __snb_pcode_write(i915, mbcmd, p1, p2, val) \
> +	__intel_gt_pcode_write(&(i915)->gt0, mbcmd, p1, p2, val)

to_gt(i915)

Why do we need these defines? Looks hacky and lazy. Can't we just
replace all __snb_pcode_read/write()?

Andi
