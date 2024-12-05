Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C689E569E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 14:23:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0838F10EE61;
	Thu,  5 Dec 2024 13:23:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/KzLYkb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD9D10EE61
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 13:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733404988; x=1764940988;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2fCTBkfN7ktBrU7CnSluD3hJEaE2HGO0FcvWc86ucyE=;
 b=G/KzLYkbcWuGGaLXUlOOBqMBH4pr+0Yvk62bpomD8IcgQ1nxOqD5Lueu
 Dvxcm8tMLVVU6wT66wv9CqWzniVzAiiZoKpHlZq8HzGXQSNXfjUE5LxTB
 Blzd+chFoyAAd0d7GGhdvIRiR2JKh0crY4vjzbKbzJn/Nuh+2OgJiq82m
 HduRKM3EYtv/qwFIvwkO14ZsBpuqAT/jN6f7LOwT255sIAQ+ewJcO+A0i
 V/yLI2tuw8o0uSUVdCom1vIy6dO0MaRpEcbPIvLRnQkUTaflKwhzf/SkQ
 cxh2qsR7VLZ8exig7kA2gA968d8VPS9tX0NKrjXPyW3KbH+3xIUUp0dph Q==;
X-CSE-ConnectionGUID: WNzdGhh2QpaO1QgQ9gM2ew==
X-CSE-MsgGUID: //vwJYq6SBCWCH3hFLJ7eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="21301816"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="21301816"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:23:08 -0800
X-CSE-ConnectionGUID: SJQLql/rTcmXGtGslt/z5Q==
X-CSE-MsgGUID: 3fO8yh+lSyiSazVqmKArIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="98165127"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:23:06 -0800
Date: Thu, 5 Dec 2024 14:23:01 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [RESEND] drm/i915: add GEM_WARN_ON to remap_io_sg
Message-ID: <Z1GpNXaS5di7cd3Y@ashyti-mobl2.lan>
References: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
 <g2d547gsiadgmcjqh5rgsqhm4diwk6fmd2hnic5pkatye2zpei@3sjc6v6qj6ex>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <g2d547gsiadgmcjqh5rgsqhm4diwk6fmd2hnic5pkatye2zpei@3sjc6v6qj6ex>
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

Hi Krzysztof,

On Thu, Nov 21, 2024 at 08:53:39AM +0000, Krzysztof Karas wrote:
> Since we already have that warning inside `remap_sg` we can also catch
> this condition inside `remap_io_sg`.

didn't we agree that this is redundant?
If we hit the first what are the chances to hit the second?

Thanks,
Andi
