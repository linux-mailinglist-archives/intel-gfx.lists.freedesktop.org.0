Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D175A34A81E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 14:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB736F3DA;
	Fri, 26 Mar 2021 13:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214A56F3D8;
 Fri, 26 Mar 2021 13:31:24 +0000 (UTC)
IronPort-SDR: PtOjnimDqOWKNuKEDUkN7if51K9oPSaI4tDWL1pk4bolRUIptaHTnLxM9CmjenrfDkh1hgIIRW
 YrswPcOXvvPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="170522032"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="170522032"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 06:31:23 -0700
IronPort-SDR: T0OzkN48/3SWyo7z/SaHQVmt4RqLnbZ7h9rTCjSFVfSKIf1Imezn6FdLiegZ7somNvbdHSy2VI
 n30EOOVG3oyA==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="416534742"
Received: from mpaulits-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 06:31:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <YF24MHoOSjpKFEXA@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <YF24MHoOSjpKFEXA@phenom.ffwll.local>
Date: Fri, 26 Mar 2021 15:31:17 +0200
Message-ID: <874kgy2g9m.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PULL] topic/i915-gem-next
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 26 Mar 2021, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> The rough plan we discussed somewhat ad-hoc with Jani&Rodrigo (Joonas was
> out this week, but back next) is that they send out a pull with what's
> there right now. Then once both this branch here and the -gt-next pull are
> in drm-next they will backmerge, and the -gt-next tree is open for
> business again.

I guess worth noting is that drm-intel-gt-next is now rebased on top of
current drm-next. Since the topic branch is part of drm-tip, I presume
the conflicts are manageable.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
