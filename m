Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCgLFpGinWlrQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:07:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C764718763A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9506810E304;
	Tue, 24 Feb 2026 13:07:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATq4tqFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E4F10E151;
 Tue, 24 Feb 2026 13:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771938445; x=1803474445;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FPlDcscWZgNNb7zWv7mk6QT1Eft5bG06Ej2rgu+VTb8=;
 b=ATq4tqFYKs8SeLu4oNAdD+SUnEOjC2L6ihixb/Z3xC5iFUSq2nWSVBID
 EfFBrRBMwpGdVofwrgpZq6aMReRrAe+ZuicpHrBNG+KOZ5oQ6zbK+po0E
 SoGHapMCyCVwjprN2paOpVaGozPBFN5P2/swIYGtAUU+CdjJhpwre2+OE
 nnOHeL4mkwW7t+BvAE5pXPSWCU8yGjfOx8Oy2J8sAUbTIqhsfxQmMXP3l
 4fT+51cG9HEoPFFGIQKIXEgaSa7VejHTmkaA3iPCucrnelkSdlSseCwWl
 ZUN0wLwzO3Uqe01Diw6Nq0Nje4nuAV6FZRHP64epIwkC/XpeCao05E+Bv A==;
X-CSE-ConnectionGUID: adi7m6t3QaKNT2/isAa2WQ==
X-CSE-MsgGUID: 6V2AKgnZSTS4/r00A9Hxjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="73014965"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="73014965"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:07:25 -0800
X-CSE-ConnectionGUID: WzQQQks8TKCGyHZv9Z7LOw==
X-CSE-MsgGUID: Rq1T8d5cRxW9x0E+TkUz5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215759147"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.20])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:07:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
In-Reply-To: <20260223171015.1035550-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260223171015.1035550-1-uma.shankar@intel.com>
Date: Tue, 24 Feb 2026 15:07:19 +0200
Message-ID: <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: C764718763A
X-Rspamd-Action: no action

On Mon, 23 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Display Code is made independent of i915_reg.h, hence
> it can be dropped from compat header.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

I already sent the same patch earlier, but *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h | 6 ------
>  1 file changed, 6 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
>
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h b/drivers/=
gpu/drm/xe/compat-i915-headers/i915_reg.h
> deleted file mode 100644
> index 8619ec015ad4..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#include "../../i915/i915_reg.h"

--=20
Jani Nikula, Intel
