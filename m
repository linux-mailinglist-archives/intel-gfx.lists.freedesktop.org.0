Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE353C15B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 01:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB7610FDD7;
	Thu,  2 Jun 2022 23:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180FB10FDD7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 23:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654212964; x=1685748964;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=amzQG6lRbl+q/XFNk3BlyXcPnqrLXET0SOerCuMxjJo=;
 b=g2KV8kQXNRG6WZmyWGsW5ZN1223jDYiTcCu29/Fn0fdfQBl5NQ5/77ON
 jOVX/579PmChrMMuwEQOctLyZ4Re0RLa3uixnIf23AVTCu666nLzIwfWe
 esiKN67WYJcQ2EQNQGuJW6WBnSwcVvfBKyZsWQioH04A2Dq0KSBfEY8zM
 OQdCQAWknVAnrAxi/L6GXNf2dmQoKw56aoWAfnI6lmpo3MLZC1SZkr5mT
 XkjMKCS0R7FKrmdsPb6bmFpJrAs5xO36AeyXLcoQMs70+t/Z5w0mjCshl
 w9CFxvKICV3Z6b4gKnyOG4NI1HP2QRvHzQvmpIujp/XP4DcFGm+7pgX/x w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="336771195"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="336771195"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 16:36:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="668221463"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.6.174])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 16:36:03 -0700
Date: Thu, 02 Jun 2022 16:36:02 -0700
Message-ID: <87h7527i59.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <YpFhqItqXp6GoEzi@mdroper-desk1.amr.corp.intel.com>
References: <cover.1653591227.git.ashutosh.dixit@intel.com>
 <YpFhqItqXp6GoEzi@mdroper-desk1.amr.corp.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 0/3] drm/i915/gt: Expose per gt defaults
 in sysfs
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

On Fri, 27 May 2022 16:41:28 -0700, Matt Roper wrote:
>
> On Thu, May 26, 2022 at 12:00:42PM -0700, Ashutosh Dixit wrote:
> > Create a gt/gtN/.defaults directory (similar to
> > engine/<engine-name>/.defaults) to expose default parameter values for each
> > gt in sysfs. This allows userspace to restore default parameter values
> > after they may have changed.
>
> Drive-by comment:  since this is a GT-related change, I think we're
> required to Cc: dri-devel as well.

Sure.

> And since this is new ABI, we'd need an open source userspace consumer
> or a very clear explanation why this is an exception to the rule (e.g.,
> if these are meant to be twiddled directly by the user rather than
> accessed by userspace software).

This series is in response to the following oneAPI requirement ("setting to
-1 will return the frequency to the factory value"):

https://spec.oneapi.io/level-zero/latest/sysman/api.html?highlight=zesfrequencysetrange#zesfrequencysetrange
https://spec.oneapi.io/level-zero/latest/sysman/api.html?highlight=zesfrequencysetrange#_CPPv416zes_freq_range_t

So maybe an open-source oneAPI user mode driver will be acceptable
userspace? So yes not merely to be twiddled just by the user.

Thanks.
--
Ashutosh
