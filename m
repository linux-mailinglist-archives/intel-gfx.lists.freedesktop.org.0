Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0634F64CE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 18:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1A610E480;
	Wed,  6 Apr 2022 16:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBBF10E2C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 16:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649262291; x=1680798291;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SyED0sxoKMp468qRSofsVxSnBBYCqOlobtNrTFUacoA=;
 b=LOTqTG0OlzzhxAU0A2G6kwKgwTRjmEgSzr2fI77e4BUKjoKjkiVjZXl6
 4DAft0/fjrESWNakd9XEiPa0Ivaxd859nJ+k537yqf4gD9bcpeasXU7wi
 a6IJ5sLLwNnpWRTkY3Z4HQEGRymSN2OcGARVHmAwP9USakjxaJ1Hmdcws
 FfCTkh3DadUll1OSreUpbfRLyDUmrkghwCtx8sTAHCwxlDn2cbwNGom0r
 nKpDSQVW97Gckd9jtYWkfDrz35J1mREhpcPNM+at21OYCZbMZ0FuXU0bY
 MQ3GIhUF9sZpnB2H56FDlwI9Ow19cWTHfWkKDftbaUckAYy/2DVne6ppK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="321789308"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="321789308"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 09:24:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="851336933"
Received: from aclausch-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.8.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 09:24:49 -0700
Date: Wed, 6 Apr 2022 09:24:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <20220406162449.eluvu62fodbmflsa@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220331204343.1256150-1-casey.g.bowman@intel.com>
 <20220331204343.1256150-2-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220331204343.1256150-2-casey.g.bowman@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 1/1] Split i915_run_as_guest into x86 and
 non-x86
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 31, 2022 at 01:43:43PM -0700, Casey Bowman wrote:
>Splitting i915_run_as_guest into a more arch-friendly function
>as non-x86 builds do not support this functionality.
>
>Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

now we have CI results and they look ok. I reworded the commit message
to use imperative sentence and added the required "drm/i915: " prefix.

pushed to drm-intel-next.

thanks
Lucas De Marchi
