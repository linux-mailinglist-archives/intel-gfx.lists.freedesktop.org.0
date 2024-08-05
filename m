Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A2A948536
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 00:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C218410E2CC;
	Mon,  5 Aug 2024 22:00:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTxzAz12";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A8810E2CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 22:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722895245; x=1754431245;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UOVmupGDUHgKMibIzFMh7uUM3RkgLY1c+0EV6L22h2I=;
 b=VTxzAz12kevuNRp0jzXMkZTZiWoLjnkCQKezjm7Ygv2WOFMNMW17yOo1
 v4bGEdqvnG60/478rv4jMWBJUQYTGYTdNmbNuIHyLOwpej5gcJ+bs15tM
 6euhS3WGm6RCyn/x2gtfvxMYg+i2ab/W8C+WV7XFds+1me6qsNwpuroy6
 rLalcDOcOfTYOT1fvwQu0PuWmqkXLVmb01QKKB9CSGuweFedA0i5gOkWy
 pzXBTyaE0SDdY5IsZ8tl6YZ2X9PccnC/A+/Xp6gVcY4kOs5/OhMtIBLKe
 xJrncITy2fBpWdUuX1IyIUgH+17gxScIrdVTALb70gqVuGmDDRXUkYD1X w==;
X-CSE-ConnectionGUID: 8kBfXTpUTOOzZglWaB45lg==
X-CSE-MsgGUID: hoT8ICWcTfySdMlk+YpAEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="23797388"
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="23797388"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 15:00:45 -0700
X-CSE-ConnectionGUID: EiJpdllrTx6RS5wWE4l3QQ==
X-CSE-MsgGUID: WqdRXlC7QKK2x2BKRdKb3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="56214382"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.244.45])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 15:00:43 -0700
Date: Mon, 5 Aug 2024 23:00:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, tejas.upadhyay@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@intel.com
Subject: Re: [PATCH v4] drm/i915: Add Wa_14019789679
Message-ID: <ZrFLhgPRX37nNWfU@ashyti-mobl2.lan>
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

merged to drm-intel-gt-next.

I also added the "gt" tag after "drm/i915" in the title.

Thanks,
Andi
