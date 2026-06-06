Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IRrBBty7I2pIxgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 08:19:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AC864CB31
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 08:19:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WyxK9saC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C44C112D50;
	Sat,  6 Jun 2026 06:19:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F9D0112D4F;
 Sat,  6 Jun 2026 06:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780726743; x=1812262743;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CP7+C8z3E8+Tt7Fy11CVC1S5hyAJTbWNPe4KzQdOTNo=;
 b=WyxK9saC1YMTZ8Kv3PPd6NW+z4EZbJH+N6SyCKJbnrvzc5o+ys9ufZVo
 i3xYQ0FFUB5gGrZEMruGq8StqwfVPnDKw+Ek9lAjZ8yjJPCK+/M1gP+XS
 Io9f3/B+uNj4ymCCriBNtMH26DwjDWRLqsyia6vp1pjLTPMgu/UQ2FDU3
 wDJpdpjgxxyKB0MwtNaiPu+b6bXaInUDnKXSwbsSuvPrvY6GGnE0olZsu
 f+zM2HvX3yRlJpJ7iaHfJ88BMI7zqLhv/n73IrAwNE3uaMriyQy9Rr2SO
 SNILgTitVwiZrrvXKXvnUdI+8z4XeQMn1FJudWySHd8wyKjACdT2CK72n g==;
X-CSE-ConnectionGUID: 6tqc0SgxRqy9QBoOt0q+Ew==
X-CSE-MsgGUID: dwm3NaNmTbaqXFL8UTNeBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81460979"
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="81460979"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 23:19:02 -0700
X-CSE-ConnectionGUID: y3Pm8tDeSleLm3UAdLH3Tw==
X-CSE-MsgGUID: n8U0Y8iBRs28JqEXw8qehA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="246876848"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 23:19:01 -0700
Date: Sat, 6 Jun 2026 08:18:58 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 saurabhg.gupta@intel.com, alex.zuo@intel.com, Michal.Wajdeczko@intel.com
Subject: Re: [PATCH v3 5/5] drm/xe/i2c: Report i2c irq handler issue
Message-ID: <aiO70vnHbWJpH9VL@black.igk.intel.com>
References: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
 <20260605210534.3843211-6-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260605210534.3843211-6-jonathan.cavitt@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raag.jadav@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,black.igk.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93AC864CB31

On Sat, Jun 06, 2026 at 05:05:34AM +0800, Jonathan Cavitt wrote:
> Error logging is expected but not included in xe_i2c_irq_handler() for
> generic_handle_irq_safe(), so add error logging there.
> 
> This issue was caught by static analysis.
> 
> v2:
> - Reword error message (Wajdeczko)
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Raag Jadav <raag.jadav@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>

Reviewed-by: Raag Jadav <raag.jadav@intel.com>
