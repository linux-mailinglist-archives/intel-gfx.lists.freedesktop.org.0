Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F867D9619
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 13:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A75310E973;
	Fri, 27 Oct 2023 11:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEF610E973
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 11:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698405255; x=1729941255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uWpqiCwJDmVioYV2ecz5cHNUrlKnVX+NKfYdy7Vy+W8=;
 b=Y5m3b7iEqoUfHRVgn9ki6WNsYsZCzbyxrzUsriSwdCKLbur3yeclYwGq
 wLgMl/sZrtwcOYh1mfIOGTRKJEQbqzLYAjkpmXEau3ZbIipPfIKDcnrkj
 Hm0OqQvm2MyZwznOx67i9A+wKbj9RuG7mTzEVhOqxwNr95k0rKpW7YLDY
 VPLzB6UZzSNmKcAPN24c6lB4SUDIcOiJUqn+3lkRVxf6cexQJsPWl1c1e
 r64pgUzb1yqSVfD4QnvfpusmRv9GKPAKp+eqJSIfthgP/shQ2ZBK4lYQ6
 mNEc0+UMnyRCUv1vcaf/7zONBaLxG036lzcq7Fw6Pp0KNG0b8dUR+bBFi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="418867671"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="418867671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 04:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="736056071"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="736056071"
Received: from patrizia-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.50.98])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 04:14:12 -0700
Date: Fri, 27 Oct 2023 13:14:09 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Soumya Negi <soumya.negi97@gmail.com>
Message-ID: <ZTubgay--6fzecc9@ashyti-mobl2.lan>
References: <20231026044309.17213-1-soumya.negi97@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026044309.17213-1-soumya.negi97@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove {} from if-else
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Soumya,

On Wed, Oct 25, 2023 at 09:43:08PM -0700, Soumya Negi wrote:
> In accordance to Linux coding style(Documentation/process/4.Coding.rst),
> remove unneeded braces from if-else block as all arms of this block
> contain single statements.
> 
> Suggested-by: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>

The failures in the tests are not related with this patch.

Merged in drm-intel-gt-next.

Thanks,
Andi
