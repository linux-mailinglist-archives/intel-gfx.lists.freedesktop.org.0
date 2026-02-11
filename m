Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDPmByB9jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:59:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1F1249D5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFDC10E136;
	Wed, 11 Feb 2026 12:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jozH8VKc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4542110E136;
 Wed, 11 Feb 2026 12:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770814749; x=1802350749;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CwBIT/dMNtc3UTuWndlG/sN2Yw827ZKqYYK3zXgF+zs=;
 b=jozH8VKc7Z67NBlGU3Szn8+VCRcC/9O82crWqlzImf05JAJ1y4jfKNO6
 62S3v/OQ+J31kEFiH9sJDWRDGikBQj5RyxymH10jSI86EjqVWKwMZCg81
 u+OtEHHAR5PDosR7HLSI77TcRCCCYQJ/rZBkQS2TbSusEvszbrrgfurDR
 YF2wisdms6jimpnV6dT/3CS5ZDdh+lNqagEVvy7NGsYmt0NyYmVgQim1T
 xLgR+izrltB56OyqNSkCP54tVaqwVH3FuUXz1OdqhpCuMDWPSTVqp7rVZ
 tKG8GMP0ghL6g14BKgEcRj+//o51KqJA5/S0hKNr2hfTywU+c3rNSz83O w==;
X-CSE-ConnectionGUID: iqeunQFsQM2Zo3brDjsCrQ==
X-CSE-MsgGUID: sht+9MdfRX+zoan/ExgTmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="83402370"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="83402370"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:59:08 -0800
X-CSE-ConnectionGUID: KgN+elZIQT+M1HhmXPFpiQ==
X-CSE-MsgGUID: EgF/aT6RQFinukmQAlE9mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211179413"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:59:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 00/20] Make Display free from i915_reg.h
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:59:02 +0200
Message-ID: <8db65f70ee8ee5e0f0b77b6b7b5c0405e1bc42b6@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9DD1F1249D5
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move the common register definition to per feature header
> which makes display files free from including i915_reg.h.
> This will help avoid dupicate definitions and includes and can
> serve as a common file for xe, i915 and display module.

Good stuff, thanks. I think it's all R-b now. Please use SPDX in patch
14 while applying.

Oh, and a follow-up patch could remove
drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h.

BR,
Jani.

-- 
Jani Nikula, Intel
