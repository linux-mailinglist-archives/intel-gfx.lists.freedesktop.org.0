Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A20B09E9C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 11:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AAD10E133;
	Fri, 18 Jul 2025 09:04:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBkN2DYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE6510E133
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 09:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752829474; x=1784365474;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JxdpOXSpUrdvI3efe/bwIavpsXLUJ/DF8yi9PjatH1M=;
 b=DBkN2DYbITiKZ/vg6mf94dZifyObv59ql2awHB1vizfq/wZSg2/YnR/l
 VmXChnXHssQhM42SrF0Fk0Vb1VWsH57qVvg3EXG8SV+yyiUbbPnNP3NHe
 tIBqnuQveolzSAszA11gR8iOZoH2TmsXRSRs0/TSX//Vp/KvKdapMPIcX
 eifAL1hScBkqCdr0hRKIvoJVXA05HHwK9K6+4PWRF/d7taCiVVWMEAF0K
 nTXMfHUZiIVmfRI1UrEbuyz1Sr1bTD7soKR7yiBryEdIqVHLIv28NzOA4
 oc3bnQEzIsEtpQu9KrVZlAbrRfb4vUewmBhx/BL3dCad9MVB57ZGVDmlo Q==;
X-CSE-ConnectionGUID: dUUjhYvaQhyvzNW8SY9sDA==
X-CSE-MsgGUID: pKIRw8FVTMmTW5TN/XJWBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55060709"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="55060709"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 02:04:34 -0700
X-CSE-ConnectionGUID: E6q0/jWtT8aUTnUmh5mHrg==
X-CSE-MsgGUID: bXhMVEojQnGc86lAKasrhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="162037451"
Received: from agladkov-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.37])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 02:04:32 -0700
Date: Fri, 18 Jul 2025 11:04:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com,
 andi.shyti@linux.intel.com
Subject: Re: [PATCH v2 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <aHoOG1IlkNGvAd7V@ashyti-mobl2.lan>
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-3-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-3-sebastian.brzezinka@intel.com>
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

Hi Sebastian,

On Thu, Jul 17, 2025 at 12:38:47PM +0000, Sebastian Brzezinka wrote:
> According to the kernel coding style, if only one branch of a
> conditional statement is a single statement, braces should
> still be used in both branches.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
