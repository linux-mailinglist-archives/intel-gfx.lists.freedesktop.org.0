Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC9B7D82C1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4D210E7C7;
	Thu, 26 Oct 2023 12:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1527D10E7C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698323793; x=1729859793;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RJvvUZeqAPfnnOaXvBXJ7RKllioSyczcQPuw7DTtkY0=;
 b=bjEtnu62pWsNddrls4zumYb+lukv2ys215TrBZ4nBwd9LVsJgHQIBVFX
 3JdAoCKmpSJD9b5VV/i/0PCQvmzEyvFHwo34w/zfSY5U54qSubUuualCh
 yil1+sRxZGgIKHe6CGmtN9WVt8SLNxLyO2p9ZjcBrihLJdqYAEBlDnMm0
 7F1fs2oK2CJ5qypWBSjYWuUDe2p36RzitofciDysTc4TLYZqFIoFaMRzP
 nIu6yyQsOjfLkrt/TrGySwEp5l8Jcj5VKjXJKH3fWQUhCZpsCWp9PSTGU
 06dIexiSyHOlZ0n8IWXMnbvz/LV0e/tMGK8homBRSTPXt0MhgZOsisBWz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="9087174"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="9087174"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="875928246"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="875928246"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:36:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231026121139.987437-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
 <20231026121139.987437-2-suraj.kandpal@intel.com>
Date: Thu, 26 Oct 2023 15:36:05 +0300
Message-ID: <87ttqd7e8a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: Rename HCDP 1.4
 enablement function
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

On Thu, 26 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Rename hdcp 1.4 enablement function from _intel_hdcp_enable to
> intel_hdcp1_enable to better represent what version of hdcp is
> being enabled
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

-- 
Jani Nikula, Intel
