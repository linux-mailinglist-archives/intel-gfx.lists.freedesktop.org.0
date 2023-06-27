Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D373F622
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 09:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E219210E02F;
	Tue, 27 Jun 2023 07:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B9B10E02F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 07:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687852402; x=1719388402;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hPC+TgVDYg5GSPDT70TWgkCvlj3zphakE5TxxP/q4Nk=;
 b=iDeTDny2/q+IwtE/U+ZYUzUmna/ZbvvVtuTsH3IC32fsMH8/O2UOWCMl
 QobGQa1O7n9DfzIx1yoeij2Gd0DXL9lrukPmjuZmnoOnjDokoTG9Onaw9
 /8MoXW+PujHqDx6TXItLchafAgSiizOwShKThyJ9FlFOfdL6VnIitHnQZ
 hP388O6A0nog71zHN/RKOop3i3uSPGvoyyYFUtdb6iK7foAwDPqOgOL5a
 H+z7LpgeR4d4Hz07qvbAQ+EdmrZI/VhI3Gan8mpR7GyRKbsMTB6EBQIOx
 B57WoE/+PidvUWrJcZEMG16m2gl6kDAWYoSL7jSS2sIRkK6W+7sqp7wde Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="361545881"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="361545881"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 00:53:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="751573266"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="751573266"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 00:53:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <ZJRV0ngY8zv/Vo5H@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230621183805.251128-1-jani.nikula@intel.com>
 <ZJRV0ngY8zv/Vo5H@ashyti-mobl2.lan>
Date: Tue, 27 Jun 2023 10:53:01 +0300
Message-ID: <87leg5tk82.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove display raw reg
 read/write micro-optimizations
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

On Thu, 22 Jun 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> On Wed, Jun 21, 2023 at 09:38:05PM +0300, Jani Nikula wrote:
>> Convert the raw_reg_read() and raw_reg_write() calls in display GU MISC
>> and INT CTL handling to regular intel_uncore_read() and
>> intel_uncore_write(). These were neglible micro-optimizations, and
>
> /neglible/negligible/
>
>> removing them helps the display code reuse in the Xe driver.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks, but back to the drawing board:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119703v1/bat-dg2-9/igt@i915_pm_rpm@module-reload.html#dmesg-warnings1253

>
> Andi

-- 
Jani Nikula, Intel Open Source Graphics Center
