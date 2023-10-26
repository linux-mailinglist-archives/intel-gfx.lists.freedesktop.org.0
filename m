Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 846347D82C2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D904E10E7C8;
	Thu, 26 Oct 2023 12:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 706E210E7C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698323794; x=1729859794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9ZWhB7miTOLjB+T95GONG1MSkJ/f8jBi/ZKIK02XLWI=;
 b=FyxJHPn6zfHL10w6saQmIle2oPjWmtwdlYB/StFy039yPyYhAM+rkxNq
 Ue4CFh/rBYQe/7qWn5hTCtSGQnCeCF2msVMXr9ueGoUniUuoxcjwNNJxO
 jz0lE3Mk+3rk6q4CvkfbkmVtX9MmWAndBn/qe0wbrsReThlMCW3yVGHmi
 aHhwTF5kcfatqOv8uiAdWKT4K8HMazEtkhK/271mdJQ5y7HVvFHVTxOJG
 C74B6P04047C6XB5DEO3dOzFUOiCU+IPX442Oh67GjZsP2HdfD+5OK7xZ
 kwF8/CKtSIH7qtdH1ml55uSx6N1aiayEJXIILZ2D7EQc6i0LYyEIE4lbY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="335885"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="335885"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="932720348"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="932720348"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:36:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231026121139.987437-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
 <20231026121139.987437-3-suraj.kandpal@intel.com>
Date: Thu, 26 Oct 2023 15:36:29 +0300
Message-ID: <87r0lh7e7m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Convert
 intel_hdcp_enable to a blanket function
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
> Let's convert intel_hdcp_enable to a blanket function
> which just has some conditions which needs to be checked
> before connectors enable hdcp.
> This cleans up code and avoids code duplication.
>
> --v3
> -Keep function name as intel_hdcp_enable() [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

-- 
Jani Nikula, Intel
