Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A987DD127
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 17:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C745A10E54F;
	Tue, 31 Oct 2023 16:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED88010E54F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 16:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698768332; x=1730304332;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VnLw0O4DIC4bEB8NsRVthomhnn1yrjk0aR9HZO1spzY=;
 b=LdL/ayIrKCDsgJbH3Fr4hSPdIEfCFB8scT7UNsIlkZRtjb1Eevn9TV6k
 zr9KYzdqKS1GnU8LtJFNGocMLqUeKkHSA/FpWY35HlCNxdyahijvGSXWo
 mScn+sEcbcVILXE2cpkN+6ZaZiZGwjWiwsZEXK6msEZDNsdYsjI5u6FMp
 DHXJmYD5wItvGs34/t5VrtZwJmfVNEkZTpS6xAzZToJdceYNC0Y1IdO+e
 h/B+VHcKF5G9pTC3IGp7dcONLdsL7tB3i/Ywq4KpTPr/Tft4AczQRFA5D
 7If+ieEvC10H/5k942QF1fykwpsrlDPB52W9OR70cxvvA/w7ZS7JgLBA3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="367665938"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="367665938"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 09:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="884256656"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="884256656"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO intel.com)
 ([10.249.42.80])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 09:05:19 -0700
Date: Tue, 31 Oct 2023 17:05:17 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZUElvf5qzDMqqpZp@ashyti-mobl2.lan>
References: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915: use ref_tracker library in
 i915
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> This patchset replaces custom tracking solution
> with ref_tracker library. This is follow-up of the
> work from patchset[1]. Core part is already merged
> and present in drm-tip. This is actually re-base of [1]
> with minor fixes for code introduced later.
> 
> [1]: https://lore.kernel.org/r/20230224-track_gt-v8-0-4b6517e61be6@intel.com
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

yaay!!! Finally! :-)
