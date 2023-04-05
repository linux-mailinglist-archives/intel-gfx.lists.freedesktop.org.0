Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0178A6D775E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 10:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B7E10E887;
	Wed,  5 Apr 2023 08:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C979210E887
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 08:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680684801; x=1712220801;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gOQh9h/50JU6v/bmyRJlW4BlgPAtpvx0cUOXZCHbrpw=;
 b=ZASnS35uAHAj0BKqjbwcGnvL+FmbrkHVNT5+gClU0fOubd/EAWD3MZzV
 0byYkEfkZySi31+oGjAWZkhhVFEcNIQKgjoATGpOmAChWFx59h313Lt1x
 en+r+mNPldffKwoxQ/V16i5ldpYGoINAt5hlaX3B5JVzosuN729vAOkvd
 G3jivo9ARJfp90L602dMji1d0BcjAv5qOxzZCq5ZKsVnV+5HlAEGKkmBq
 YQhte5fyCdnXcBe/u292pd36R1f2c4V+Y2/SxdZ9G6/1eERSqn8vSFPOO
 v0ig/CNfIiG8m6BvyNaBX4NA3R0uJXebVQRyQwNlv6Ct/gQ3DZV2qyxgY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="326436538"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="326436538"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:53:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="751194949"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="751194949"
Received: from jfunnell-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.51.209])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:53:19 -0700
Date: Wed, 5 Apr 2023 10:52:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZC025PixMYQpD4Ae@ashyti-mobl2.lan>
References: <20230327123433.896216-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230327123433.896216-1-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/mtl: Add Support for C10 chips
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

Hi Mika,

On Mon, Mar 27, 2023 at 03:34:26PM +0300, Mika Kahola wrote:
> Phy programming support for C10 PICA chips. This is the first part of
> the series that adds support for PICA chips. Later the support for
> C20 chips are added.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> 
> Clint Taylor (1):
>   drm/i915/mtl: Initial DDI port setup
> 
> Mika Kahola (3):
>   drm/i915/mtl: Add DP rates
>   drm/i915/mtl: Create separate reg file for PICA registers
>   drm/i915/mtl: Add support for PM DEMAND
> 
> Radhakrishna Sripada (3):
>   drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
>   drm/i915/mtl: Add C10 phy programming for HDMI
>   drm/i915/mtl: Add vswing programming for C10 phys

please add your SoB at the end of every patch. The last tag needs
to be the SoB of the person who is sending the patch.

Thanks,
Andi
