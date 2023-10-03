Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A23F7B62C6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 09:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F2E10E067;
	Tue,  3 Oct 2023 07:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CE010E067
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696319243; x=1727855243;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+gaWzjN8HiGysXUQqFXKJUolfFXTQoQbM0/cL0eveZc=;
 b=a/ea0SHIgYte0Bs5u3RyD8RsnGmksdRQgZ6ks3EDBJM0WtYYq0C/JsDB
 ULha62r/1yLCDv3pSBtifrSE9ona1FgdSyJsuXVJ+1kW+zfk8JkE5s7GO
 Vf3nwlTxFkxytdeHT/Akj9izfroXTI+v8R+J2f+mS4vEfy0ckgRfv3LlA
 b0Fi1B2EhGtHPATOQHZSTP//MPy1rPSqB4H+JJJDcNFMuIF2g3QENNp9t
 XLmoavNZM7cI8EzWA9HJwPQ4rUne8kvHHVKofLT7zraU0Lexf0M5qOLdU
 P3u/2mzc86Lj87smJLWiF3KUCb8xkvl83eRd/IUxs0pi4iWqJHTwYmz7g g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="380093420"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="380093420"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 00:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="841252449"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="841252449"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 00:47:18 -0700
Date: Tue, 3 Oct 2023 09:47:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRvHAFjw2grI5HhF@ashyti-mobl2.lan>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <5319364f4c9416fed218382d020a57c5b0a17bee.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5319364f4c9416fed218382d020a57c5b0a17bee.1696236329.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: remove i915->gt0 in favour
 of i915->gt[0]
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

Hi Jani,

On Mon, Oct 02, 2023 at 11:47:04AM +0300, Jani Nikula wrote:
> Since gt0 == i915->gt[0], just drop the former.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks correct!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
