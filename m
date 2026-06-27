Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 22anLXFYP2qhRwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 06:58:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514F16D125E
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 06:58:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YeNtSbrH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742B110E44C;
	Sat, 27 Jun 2026 04:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1437B10E44C;
 Sat, 27 Jun 2026 04:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782536302; x=1814072302;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wJ1ta97rP02Dpmjs4Fryy9pvJKVOVxnFECZwKojKxy4=;
 b=YeNtSbrHXlDZqGFugBvgpgFQ++lANP/fg6G6xY1GOQHFvmCmNiW2pLn9
 xVoJsvF7PPNI5hJeJCRzLDlFCtR8oflMnSfnxEMiv8TYg5NOP9/rH/WY8
 AoQlkA8un1m1x+QE3656bRCmazMCgEBEqzUKPXOfVx1/v0HESUgYd4dgT
 YDHQkKg29tfRo/KpI5aQhIDOtElUilT+R58SnO+RAGlxeYLJbddh5xfpV
 8QVmtVoJbaiaSNE+toO6SnnUqqH64AIFMzQFAfGpMKehD55Um1d2agWQ9
 GjD9oNZLHGXtWYbF8owadx8hIZSNdNMx2nk3gdxxQ4wc87vhRUsXMMgrr A==;
X-CSE-ConnectionGUID: 7Wfm4AJxQDqEedN34e5lpg==
X-CSE-MsgGUID: AmWjrYLRRV2B1tc/UOR1GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="106115973"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="106115973"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 21:58:21 -0700
X-CSE-ConnectionGUID: FEJTac5gSSe7gTlkLlaWNQ==
X-CSE-MsgGUID: tz7724V5S8mOzmvYDpKMqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="248839081"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 21:58:19 -0700
Date: Sat, 27 Jun 2026 06:58:16 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v2] drm/i915/gt: Return bool values from a boolean helper
Message-ID: <aj9YaEM48RkX7DSo@black.igk.intel.com>
References: <20260626215232.861416-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260626215232.861416-1-andi.shyti@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raag.jadav@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 514F16D125E

On Fri, Jun 26, 2026 at 11:52:32PM +0200, Andi Shyti wrote:
> intel_has_gpu_reset() returns logically correct values by
> returning a function pointer when GPU reset is supported and
> NULL otherwise. However, as a boolean helper, it is more
> appropriate to return explicit true or false values.
> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Link: https://lore.kernel.org/r/20260625114442.2912230-1-andi.shyti@linux.intel.com

Reviewed-by: Raag Jadav <raag.jadav@intel.com>
