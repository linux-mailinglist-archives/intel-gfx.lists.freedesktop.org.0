Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGGmEw1uB2rY2gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 21:03:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1057A556900
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 21:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6951010E133;
	Fri, 15 May 2026 19:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKjQajwc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D74F10E133;
 Fri, 15 May 2026 19:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778871817; x=1810407817;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GBgknEXJJXOoY5E34cHu5f9HPCa8Hi4z/piAyf/okrQ=;
 b=AKjQajwc4J4bQayiq8Rtkz94/96OLdVWx+E1heMTFN5JfLoRJ2LYwn6L
 1ipx+yM0uaGj17hOj0NdhotSLil0tRB+/jsfAvkyAVyamwLBOBh4Aj9kn
 6Cd+lpX0eq7+Ar7Q6BoDb9iIcTHU6jucdbaG8tqx57MaaDHUd8II2vme1
 4yCYxh147SLbKCUiG+cA2rMGPwzHTJxrIc2E5yGVu9uCjOysPI89ps7do
 s5Pg19vBNXKKa5YhheQXFaj5XD6fi9HjTa1LFtHPBMeDLDJdawH2cgew8
 dfJv4aurncgahHaazswA0Ocs589BbjPMdxNlWud8rPsjXCaWZHOeaJRuJ g==;
X-CSE-ConnectionGUID: sskIpQB4TEejeS1LhCd8vg==
X-CSE-MsgGUID: Y9k8qq9LSx6Y0De4TCi4zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79862974"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79862974"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 12:03:36 -0700
X-CSE-ConnectionGUID: vK8MoxHCSCiFd04mcYatJg==
X-CSE-MsgGUID: 5DMUrrZ5TtufYr81ETZ4IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="238654429"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 12:03:34 -0700
Date: Fri, 15 May 2026 22:03:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 0/8] drm/i915: add display irq hooks
Message-ID: <agdtQcro5tTcKOJV@intel.com>
References: <cover.1778688699.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1778688699.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 1057A556900
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 07:13:23PM +0300, Jani Nikula wrote:
> v4 of [1], splitting patches 5-6 into two, resulting in patches 5-8
> here. There's no diff between the end results of v3 and v4, just the
> intermediate steps are there.
> 
> BR,
> Jani.
> 
> [1] https://lore.kernel.org/r/cover.1778666967.git.jani.nikula@intel.com
> 
> Jani Nikula (8):
>   drm/i915/irq: deduplicate dg1_de_irq_postinstall() and
>     gen11_de_irq_postinstall()
>   drm/i915/irq: constify pipe stats parameters
>   drm/i915/irq: add display irq funcs, start with
>     intel_display_irq_reset()
>   drm/i915/irq: add intel_display_irq_postinstall() to irq funcs
>   drm/i915/irq: add platform specific display irq ack functions
>   drm/i915/irq: add platform specific display irq handler functions
>   drm/i915/irq: add intel_display_irq_ack() to irq funcs
>   drm/i915/irq: add intel_display_irq_handler() to irq funcs

For the series
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../gpu/drm/i915/display/intel_display_core.h |   3 +
>  .../gpu/drm/i915/display/intel_display_irq.c  | 238 +++++++++++++++---
>  .../gpu/drm/i915/display/intel_display_irq.h  |  37 +--
>  drivers/gpu/drm/i915/i915_irq.c               | 182 +++++---------
>  drivers/gpu/drm/xe/display/xe_display.c       |   6 +-
>  5 files changed, 277 insertions(+), 189 deletions(-)
> 
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
