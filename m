Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C23E7B9C14
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 11:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D4310E156;
	Thu,  5 Oct 2023 09:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F0410E156
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 09:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696497072; x=1728033072;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aUVTjgnbRskettLJ2ZOVgGkUkYLpQ6kNW0Dbj5XxP4E=;
 b=CaCCgT0D5bTf7EsCCdZBzaOtwkStuxTGBv5EOV9H6GKvGY0LRnT7U2LS
 sq+1dL8Y12kEf041oRxoyxuecq/L0UEBbbL019a1QPWv0+qeU4qKW8ru7
 8zwyzGVjyQMI9lzfWv7SiKqcBeV+kseOErOLabdw6GU05qFlfUn6+kv4V
 U9PYBZIs/VmFSl/u8Dtn1JGYfn5/3P1QNpieHSmT54z/709hxj6Huyy/N
 wpk4eL3qW5RwPt0mhiybXMTquYGZLsiSC1OSSiFwroRTo5D/pP65jd14k
 fdVm6ITCdu8FLhxvgz2fiWCA7rib3ZBd7VU6SMNfhbtoNcC6kG7RyhgoO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="380729507"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="380729507"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 02:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="895375998"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="895375998"
Received: from nurf174x-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.147.206])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 02:09:39 -0700
Date: Thu, 5 Oct 2023 11:11:01 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZR59pREyveKjZI8V@ashyti-mobl2.lan>
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005064257.570671-1-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
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

Hi Suraj,

On Thu, Oct 05, 2023 at 12:12:58PM +0530, Suraj Kandpal wrote:
> i2c_adapter is being assigned using intel_connector even before the
> NULL check occurs and even though it shouldn't be a problem
> lets just clean this up as logically it does not make sense to check
> the connector for NULL but dereference it before that.
> 
> Fixes: e046d1562491 ("drm/i915/hdmi: Use connector->ddc everwhere")
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

please don't leave a blank line in the tag section. No need to
resend, I guess whoever will merge this patch can fix it before
pushing.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
