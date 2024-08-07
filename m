Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391E94AA87
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790D710E55A;
	Wed,  7 Aug 2024 14:44:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSRzSAQ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF9D110E558
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 14:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723041858; x=1754577858;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=D3xyWVjz8yva5fdKsPaQ2rBueYizu3FzoWAagySNR30=;
 b=bSRzSAQ+iJ2HQ3sB1nd7rtkpMdik8evjwf1EIIpZvsOB35N4sDTi0L03
 8XzyG2H/UUJcQBcne8R7ddNGgLH0i85nVVIM/dMT4O/WPbzhz4P22TQWf
 OcVutFkkQwiTGLExmi4sO8idZcX57zCLc/TfTcO26NzAog6R+0qoBAetI
 azvIdo2c1e3RgpOT3DBigGaQ7hdveTzrgToxAzdLaF2bhZrnjMmR5sBA+
 lIZYz8adYQsyeuFfzPktDO/kdOv+MjIHvy2cvqcFYj7MrfjEdN8jxkHLm
 gwu4RHj2EyAHCjNayJhK8uEmLGSFJ08jZYlVaivPC7NkFnwMIS/ite2Ur g==;
X-CSE-ConnectionGUID: 00P8FiPfSrmtcSI3+GY33g==
X-CSE-MsgGUID: muK+TJrySDuX6cw+NtTIMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32518957"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="32518957"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:44:18 -0700
X-CSE-ConnectionGUID: 80adGvTzSOevKs/nnnDSdA==
X-CSE-MsgGUID: noYQH23TSDue+3rPoYBYfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="56967721"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.8])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:44:15 -0700
Date: Wed, 7 Aug 2024 15:44:12 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915: remove i915_report_error()
Message-ID: <ZrOIPLRFKg2MFQCg@ashyti-mobl2.lan>
References: <cover.1722951405.git.jani.nikula@intel.com>
 <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
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

Hi Jani,

On Tue, Aug 06, 2024 at 04:38:31PM +0300, Jani Nikula wrote:
> i915_report_error() has only two users, both in driver probe. I doubt
> these cases are worth having a dedicated wrapper to also print bug
> reporting info. Just switch them to regular drm_err() and remove the
> wrapper.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

with the commit log imrpovement suggested by Jonathan:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
