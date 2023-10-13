Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 911037C8D38
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 20:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F7E10E638;
	Fri, 13 Oct 2023 18:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E6710E637;
 Fri, 13 Oct 2023 18:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697222502; x=1728758502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QmJjnD+2fU4f3fzWVa5jHoDSCbyPRXuG2LGZh92S5I0=;
 b=U3D2tDIkeKEHFAq2h2XaPbTi2ufpFhg5MaZo20t1EYxgUnbUkyOus/Nl
 xKBHXLiQR6SuslZqcnoyDZGmIeA5dZ2WJfcRS8THMCefvyRCjwHyGB8Dn
 93//uvV8PCt5Ta3qI9znTKDqFq1rFu1ORHTT6dWpm9Ub56yRDcwwboP6f
 rQcDkdB+2dojBsBdliNPSBNmOw7itBhS7//VqzBVOVJKL5bLH6DrRG1uH
 f9160krlpDUbVEolxFH25Wl5E79fKYpsgo2lsgC+AgmW8dLcGsePa8ibp
 aryv6oH0dTqtAICGh9fe29b6BNPeSAVVx6QTk46R1VcOZMKWskGud7O/S g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388090692"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="388090692"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:41:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="825151085"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="825151085"
Received: from phamt-mobl2.ccr.corp.intel.com (HELO intel.com)
 ([10.214.145.117])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:41:35 -0700
Date: Fri, 13 Oct 2023 20:41:29 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <ZSmPWdt1yFbh23xy@ashyti-mobl2.lan>
References: <20231013042012.409376-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013042012.409376-1-shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [PATCH] tests: save GPU engine information more
 properly
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Shawn,

without the i-g-t tag in the title this path was picked up by the
kernel's patchwork.

Can you please use the [PATCH i-g-t] tag?

On Fri, Oct 13, 2023 at 12:20:12PM +0800, Lee Shawn C wrote:
> We encounter a unexpected error on chrome book device while
> running kms_busy test. It will restore GPU engine's timeout
> value but open incorrect file name (XR24 in below).
> 
> openat(AT_FDCWD, "/sys/dev/char/226:0", O_RDONLY) = 12
> openat(12, "dev", O_RDONLY)             = 13
> read(13, "226:0\n", 1023)               = 6
> close(13)                               = 0
> openat(12, "engine", O_RDONLY)          = 13
> close(12)                               = 0
> openat(13, "XR24", O_RDONLY)            = -1 ENOENT (No such file or directory)
> 
> Test code did not save engine data properly to cause this problem.
> So modify the code to save GPU engine information into a globla variable
> to avoid test deamon to open incorrect file again.
> 
> Issue: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/147
> Fixes: 9e635a1c5029 ("tests/kms_busy: Ensure GPU reset when waiting
> for a new FB during modeset")

please don't break the Fixes: line.

Andi
