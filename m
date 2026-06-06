Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KiLiGSK7I2oYxgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 08:16:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F8864CB11
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 08:16:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cwyTlAQW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F95112D4C;
	Sat,  6 Jun 2026 06:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F8FF112D4B;
 Sat,  6 Jun 2026 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780726559; x=1812262559;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UcKiY/nP7F5DjOQEGW6cIxPXnLOlTjEn3dLFg0hCOsM=;
 b=cwyTlAQWmVO4XAFSPz9nLVnE3VFGKuWbCa59z03b1mW/7gb3DsKO8mPi
 hJAFDnCR4aBRe6Gr/swiunGBv323MpGQQSK9unNpokRJv7kVKr+EgMO9X
 PfCfMXBImkKIoXAXCyzM+YFbPXp2fYCQLHGaj1x0w2KpguuacX/jUJMDb
 skHwX6xdFqvrgqlQ4TvFCKaNQJTwtn6Mea9VSJLKQAzvue2beZUyzsn0L
 Tgk0d3ciaAlcZziZh6O47xn2tN+YwHYYaevA949omzQ4RnRL6MM7zOP7z
 I3iAz4M7l5fywcTmDmnZp2mUwt+vrGKXhC/uL9eqGZtdcAJOAOLATXECR w==;
X-CSE-ConnectionGUID: wTKwl0TbQpCZlwTusbkmSw==
X-CSE-MsgGUID: jGPdyXu+SGOfPWGchyT6Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="80583168"
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="80583168"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 23:15:58 -0700
X-CSE-ConnectionGUID: 2LJeA/bITIejMBB3JsmR7A==
X-CSE-MsgGUID: SpHsHNimSde5eseQbVEBJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="249365364"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 23:15:56 -0700
Date: Sat, 6 Jun 2026 08:15:53 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 saurabhg.gupta@intel.com, alex.zuo@intel.com, Michal.Wajdeczko@intel.com
Subject: Re: [PATCH v3 3/5] drm/xe/i2c: Use xe print functions in xe_i2c.c
Message-ID: <aiO7GVR1Zp31wDWd@black.igk.intel.com>
References: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
 <20260605210534.3843211-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260605210534.3843211-4-jonathan.cavitt@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,black.igk.intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64F8864CB11

On Sat, Jun 06, 2026 at 05:05:32AM +0800, Jonathan Cavitt wrote:
> Update xe_i2c.c to use the xe error reporting helper functions in
> xe_printk.h instead of directly calling the associated drm print
> functions from drm_print.h
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Raag Jadav <raag.jadav@intel.com>
