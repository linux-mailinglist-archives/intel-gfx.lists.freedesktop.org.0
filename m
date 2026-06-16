Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f8D/BdgCMWqBaQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:01:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF84368D01C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:01:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BNYbsBsc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6981C10E8A2;
	Tue, 16 Jun 2026 08:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F5910E88C;
 Tue, 16 Jun 2026 08:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781596877; x=1813132877;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+OVST2XNK/kgyx41wKVCNM/tlzIzevW9Y2KhO5EkCjM=;
 b=BNYbsBsc7RzrJAOe3kvXE83d68+vR2OeimougCHh3SsxugqZUp7xr28t
 bVs8BZwUYTSBIoooxNwIdCRSVkDJMX6Uw8SyiAbfupU7SNqoTgXJz0daX
 l3jQNLnHYY2vvby/NcESrTaKokyi5MhWy3GnQvtBVt7GbRkgfoQ0nM7vr
 Dw/tdfsZlfRwfNgX7zlhGi82vizuyow+nKNz6YCJdmC6pJlPC1wZ8spYQ
 a9cmP075tnf/KfilBjiX3exk8KA7mg3SDsIGdvkNwazM7nZbAGh/neDho
 t2lX94ZxbaAkDB+xnONKWYxNrcWKSJblQTQLfG8IX30+v2oc7NHsPIG8H Q==;
X-CSE-ConnectionGUID: P2Y1PubtQWi8lPB6Y/tPkw==
X-CSE-MsgGUID: MRuuklMnSPaRxtaOgHyaLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86254983"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="86254983"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:01:16 -0700
X-CSE-ConnectionGUID: ptzPK6IhQ1qLmzHiur3Z0w==
X-CSE-MsgGUID: j/juYQcHTlqwZEXYjrvoiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="241324365"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.167])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:01:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Stephen Fuhry
 <fuhrysteve@gmail.com>
Subject: Re: [PATCH v2 0/2] Unify fec enable/disable across the mst streams
In-Reply-To: <20260616-fec-v2-0-49a22680138c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616-fec-v2-0-49a22680138c@intel.com>
Date: Tue, 16 Jun 2026 11:01:12 +0300
Message-ID: <9827508667e0b19e939284e7989a47df278667f7@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.00 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	ARC_NA(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[lists.freedesktop.org:query timed out,patchwork.freedesktop.org:query timed out,linux.intel.com:query timed out,intel.com:query timed out];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF84368D01C

On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> First version of the patch included only one patch i.e the ref count
> https://patchwork.freedesktop.org/series/167664/
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> Arun R Murthy (2):
>       drm/i915/mst: Unify fec_enable across mst streams
>       drm/i915/display: Refcount for fec enable/disable
>
>  drivers/gpu/drm/i915/display/intel_ddi.c           | 58 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.h           |  1 +
>  drivers/gpu/drm/i915/display/intel_display_types.h |  3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 70 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 ++
>  5 files changed, 138 insertions(+)

Okay, this may seem a bit unfair, since I haven't dug deep into the
problem, but I really have a hard time believing this level of
complexity is required for FEC.


BR,
Jani.


> ---
> base-commit: c585a0a7e48a48aca80f7c0acb7294c7bf301bb7
> change-id: 20260616-fec-82a3d27e0f11
>
> Best regards,

-- 
Jani Nikula, Intel
