Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK18ITm3pmk7TAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:26:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3494C1ECA2B
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE8A10E6C1;
	Tue,  3 Mar 2026 10:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eC1O6WdY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CF210E178;
 Tue,  3 Mar 2026 10:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772533559; x=1804069559;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=njApmznPEAadkHWt/cCZ/YNP28SQsDt0VzdlUQ21HIQ=;
 b=eC1O6WdYqCj1OJrKUlpeMkjs0F/5biu++fA0u2LG/yIy4nD5rPgbEuls
 OPK5OOjTQUUUvtUK8GPyg/AEjhTzZ34CIUu882VEAjdcGm+T16lxdIhlg
 vM1omO2jAuxpxftD13Rn/pWnZ0ey0000AzMB1I+e9sKroUSsN/tZ+D89a
 pU5rGo1rFXOCz7LTe9hwj7pIZmdFlqglVXUGchTsEEQkyK0EGpDU+Cjbe
 hQiR/7BYFS19oxgzu2cX1MItC3L5DdRPILkdGBKAPvMVi57pAUabbwZU2
 S4S6rm0HJk/BPK27oxH/yul3NQsxXdcQoi4KbU8GNQ1SNb3hSL5ZvIbzU A==;
X-CSE-ConnectionGUID: c6m3ZYSVQJSepiWI+PteMQ==
X-CSE-MsgGUID: RNzms6k8Tzque5OTNEW3/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="99042325"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="99042325"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:25:58 -0800
X-CSE-ConnectionGUID: tpvxLQsVTuqtmIG9LvGxcA==
X-CSE-MsgGUID: 7a5wuDmuQdCBfEqtXQi5RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="217942870"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:25:57 -0800
Date: Tue, 3 Mar 2026 11:25:55 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/overlay: Fix oops on unload
In-Reply-To: <20260303101417.14409-1-ville.syrjala@linux.intel.com>
Message-ID: <67e4ef68-268c-57ad-1abd-5c07cefd6270@intel.com>
References: <20260303101417.14409-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="1527428566-1991801551-1772533557=:1845334"
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
X-Rspamd-Queue-Id: 3494C1ECA2B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-1991801551-1772533557=:1845334
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 3 Mar 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Apparently I failed to test the unload case properly and
> thus didn't notice that the i915_overlay_is_active() needs
> i915->overlay after fetch_and_zero() already cleared it.
> Stop using fetch_and_zero() and only clear the pointer at
> the end to avoid the oops.
>
> Fixes: 38d9a352c45e ("drm/i915/overlay: Extract i915_overlay_is_active()")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--1527428566-1991801551-1772533557=:1845334--
