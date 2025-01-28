Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BA0A2137E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 22:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B419210E1A5;
	Tue, 28 Jan 2025 21:14:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P2rlPkK8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBAC210E1A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2025 21:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738098851; x=1769634851;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vzENO2xbXdt9fl3CDcXAD+aIkIUuonw2WAhQQTXk8ME=;
 b=P2rlPkK8DQVweKbTPH/wztNfzFWU+1DGxpgyYMb1dCwTQp+sgQ4Xwdct
 mIkf2l8BKwQ8bampoy8eWlrug9CLhv8dM3htn4y3TDa/zHvd5xwv4yp1S
 J8ynSCH/Nh0Jp9SxfC7jLGIpbokJ5VHRDtOjiY1rQ5f6Qen9kI0I8TcQX
 VZPGyaesVwqnXreyii+J4nNfDjC+c1jF94N1Vg7q22gnZTGYi59Gc8sDL
 7S4lRZnmaZrbPXigi6n5y6wVvcSHshP7SDlqRqB3kHhQN1Gf4YkNRLWVO
 95l2inKcTo96kYmbDA7FMr7ysIW8w1R0zCnDYAGmbFu6a5/TrMRUj3OTh Q==;
X-CSE-ConnectionGUID: 8nsC+XpjSV64l4ZeNhCSYw==
X-CSE-MsgGUID: MVBfWaKKQ2y8ZcoBJFPLDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49093227"
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="49093227"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 13:14:10 -0800
X-CSE-ConnectionGUID: YvcNgCPQTKS89qFAKU1KFg==
X-CSE-MsgGUID: SSpYt0nRSuWQvQWPmoEVmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139719037"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.188])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 13:14:07 -0800
Date: Tue, 28 Jan 2025 22:14:03 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sk Anirban <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com
Subject: Re: [PATCH 0/2] drm/i915/selftests: Correct frequency handling in
 RPS power measurement
Message-ID: <Z5lIm0ZMDWAEIzVd@ashyti-mobl2.lan>
References: <20250113095912.356147-1-sk.anirban@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113095912.356147-1-sk.anirban@intel.com>
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

Hi Sk,

> Sk Anirban (2):
>   drm/i915/selftests: Correct frequency handling in RPS power
>     measurement
>   drm/i915/guc/slpc: Add helper function slpc_measure_power

merged to drm-intel-gt-next.

Thanks,
Andi
