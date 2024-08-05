Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CA1947A33
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 13:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F292810E1B1;
	Mon,  5 Aug 2024 11:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EQtoFKNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0AF10E1D3
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 11:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722855833; x=1754391833;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3d3jdvRpCljxd1S+zyc4/K2D1pWLBnI+yLZ43O8NbCk=;
 b=EQtoFKNTOImYrEyAJdpUjrYeXPE72IfRJzO5q0lkGoGKMRhYhiepGu4O
 ywBHCwBhWBQ8NbYFLShbhzDEL4wx9+vg9ZkjUkvV/7VP25AWuckESNs/Q
 p6MygUSvD6yZ67SAYP4ACa0USUCUh+iNz+ZIn+MzXbCbU9JiqFkt4P2eq
 phhYsHI8boXxug37twX3WXeHye8P5uc2ddB/Bu/4fN3NorS6qyivKBZ3a
 fsTJmdNEQ8Dqf43VQnG7F0vNNyUyeCVuVn6+lmMmozANQKfIRykZ/a+F2
 VGIL4+OU5zI9rSujsJccp9AcR+dsdC3wJsaaVmI8ywQ5GVOfJ2R234XuY g==;
X-CSE-ConnectionGUID: hUpQJ6iYRla3oC9OOmL6qg==
X-CSE-MsgGUID: iLMb1jOuTuu2CiuwH7qgbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11154"; a="12869685"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="12869685"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 04:03:52 -0700
X-CSE-ConnectionGUID: 9ggjJgvvTBa2Sv51X4Ls3Q==
X-CSE-MsgGUID: iYtWdOwjQBCqZQAiz01Jlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="55802067"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.249])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 04:03:48 -0700
Date: Mon, 5 Aug 2024 12:03:43 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, tejas.upadhyay@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@intel.com
Subject: Re: [PATCH v4] drm/i915: Add Wa_14019789679
Message-ID: <ZrCxj1nQOsJz7Jgg@ashyti-mobl2.lan>
References: <20240731155614.3460645-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731155614.3460645-1-nitin.r.gote@intel.com>
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

Hi Nitin,

On Wed, Jul 31, 2024 at 09:26:14PM +0530, Nitin Gote wrote:
> Wa_14019789679 implementation for MTL, ARL and DG2.
> 
> v2: Corrected condition
> 
> v3:
>    - Fix indentation (Jani Nikula)
>    - dword size should be 0x1 and
>      initialize dword to 0 instead of MI_NOOP (Tejas)
>    - Use IS_GFX_GT_IP_RANGE() (Tejas)
> 
> v4:
>    - 3DSTATE_MESH_CONTROL instruction is 3 dwords long
>      Align with dword size. (Roper, Matthew D)
>    - Add RCS engine check. (Tejas)
> 
> Bspec: 47083
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Even though the CI failures don't look related, I submitted
another round of test to be more paranoiac, as I saw one failure
in MTL.

I will merge it afterwards.

Thanks,
Andi
