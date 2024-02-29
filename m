Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A1186C8DE
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 13:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B574810E0C6;
	Thu, 29 Feb 2024 12:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="meSexiXW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4695A10E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 12:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709208515; x=1740744515;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=46EdcPPKReDilAsXhPoAi2nKOziwYYb24pLmCBSords=;
 b=meSexiXWfjzdB1QtuFm93Tg7wGgwNCI+4H/tTilR/MZcZMFR1xKecCoF
 ChSnCfqXEImNjw8Yl76ys3nsQD1HPVFNtzfmdU8itHlgCuRjKZFuQdrVV
 7LxBIpJqrz5iuBH5LfmmQwdr9tmg8L29jerJs7XgI87N5gXKuE7vWNMIp
 uVzlBUoomGthNE5u7JFSufnWYWyioSMhSfQperDYR9t3OTc/bw5hwVTuR
 O6IH4vjq+hKo5Y2qdY57ZToaGRGJG849Deod3tr0vDYGMEfJYvGQmT8zd
 c2yUqu5yfwR3a15p6vRKPU5Jwc3bZz5oLvSY0VbnWklvCR/L8NnE6Kp6Z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="6619574"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="6619574"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 04:08:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="38842455"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 04:08:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/12] drm/i915: Use drm_printer more
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
Date: Thu, 29 Feb 2024 14:08:30 +0200
Message-ID: <87cysf8och.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 15 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> Convert the entire state dumper and state checker to
> use drm_printer.

I've backmerged drm-next to drm-intel-next to get the required
drm_printer stuff, so it's actually possible to merge this.

BR,
Jani.


-- 
Jani Nikula, Intel
