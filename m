Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C30+Bm4IMWp0agUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:25:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369B768D22B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:25:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ly9UVxV8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4ABB10E8D4;
	Tue, 16 Jun 2026 08:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF9E10E8C4;
 Tue, 16 Jun 2026 08:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781598314; x=1813134314;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=RrUIwK4W1729YONzzL/73Nf5VmCHlt5GAMRUQe9bZ8I=;
 b=Ly9UVxV8k60Rng9s2NhS9A5s+e6fseLAHbZqIHsNeTN7l2hmHyMsAyB0
 mIu2KcWY4QgbbkuiToHaZRoSBM0tkrIbaDxiN7bnnv+u15Ly8Xbq3mMTo
 eQqB9Ua+IAAhOcTRwxg7oiQGzuJFYdwBdBkOf8KFthaK78fUCbgH2UaZ5
 nWOV06K6ek821Ucf0Wn6VOwEujT3CwL9J9gd9t/Ym7WXP0M0EwSixeZs0
 XbYwvmSAnFij9PrhNF1/MlphWqVF6ixIVCAyzTfmKGssqURMICbODBHOK
 xvgH6bxlJV5r5wyrkbf/1896PORYHYOYk/WLsPV8JUJEYEQCiUCDMVJiK A==;
X-CSE-ConnectionGUID: t+n4UpaxT9Gv97uneEyoVw==
X-CSE-MsgGUID: OtLY8AVqTFG+duNUo5WhUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86195837"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86195837"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:25:14 -0700
X-CSE-ConnectionGUID: U7la9NPiQM+SqCw7tBAW4w==
X-CSE-MsgGUID: QRMZx1uCSyKk0BKjLNe8Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="245328777"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:25:13 -0700
Date: Tue, 16 Jun 2026 10:25:11 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without
 a full PLL re-enable
In-Reply-To: <20260612173653.7830-2-ville.syrjala@linux.intel.com>
Message-ID: <5a23350d-ced1-2189-fb10-22c0c0cf55f2@intel.com>
References: <20260612173653.7830-1-ville.syrjala@linux.intel.com>
 <20260612173653.7830-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1614799216-1781596986=:605841"
Content-ID: <7b9269c2-67f5-e9f8-e8b2-e66be978e1a7@intel.com>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 369B768D22B

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1614799216-1781596986=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <34ee6ca2-d1c9-9238-a5c0-ae3afa155675@intel.com>

On Fri, 12 Jun 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The GOP (and even Bspec on some platforms) is a bit inconsistent
> on what the CDCLK_FREQ_DECIMAL divider should be. Currently any
> mismatch there causes a full CDCLK PLL disable+re-enable, which
> we really don't want to do if any displays are currently active.
> Let's instead just reprogram CDCLK_FREQ_DECIMAL when that is the
> only thing amiss. For any other (more serious) mismatch we still
> punt to the full PLL reprogramming.
>
> We also need to tweak the bxt_cdclk_cd2x_pipe() stuff a bit to
> consistently select pipe==NONE since we have no idea which pipes
> are enabled at this point. Since we're not actually changing the
> CDCLK frequency here we don't need to sync the update to any
> pipe.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16209
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1614799216-1781596986=:605841--
