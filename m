Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLgUAM8p62mPJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:29:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009AF45B79A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D8910F440;
	Fri, 24 Apr 2026 08:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXgPVE1y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D5010F43A;
 Fri, 24 Apr 2026 08:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777019339; x=1808555339;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+vVweeVP/5przVOBwvYEqVOZPpZBTzG89YhB8PtZ1a0=;
 b=CXgPVE1yJRewlNMD/q6dUp7Foh21DlDrhPJns8NGv8XxnBpsZHN6HjjL
 Ng9N3h0AWBncNlR0TU/7ayMHme1hNCXTYeKQBJ4lz29gOzUfDDxOwcHSA
 WEu/NIdBk68Z5y8hOdm1wW31wsygK18NCUYcc+OPjdKWIYq8L+vVHtURw
 +e5pvPW/oykWelC5dTPyAEOvoncYCMkQ2tIXYuioq+jGNHyWpGu6vuses
 yRX8uKuV0MTJOpINn0evdbAdhCyvIHHsp0Q3H7xFW5PerlgqBn1hPSGtt
 d0FtltwxhpohPeqfTWm43ujXzTr+7CJADQIZD2FbLCrKgTOFXpAMYtRKS g==;
X-CSE-ConnectionGUID: PUBsdAaHQNyg6URcEG95UQ==
X-CSE-MsgGUID: m9PNBUX6R3yiz1JsfsOtfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88607314"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="88607314"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:28:59 -0700
X-CSE-ConnectionGUID: FRyY5kWZTY+7RGpscr6O/Q==
X-CSE-MsgGUID: qUKfoWWCS0uYKn8HPWEKLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="232036980"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:28:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Grzelak, Michal" <michal.grzelak@intel.com>
Subject: RE: [PATCH] drm/i915/ddi: add wrapper for calling ->get_buf_trans()
 hook
In-Reply-To: <DM3PPF208195D8D3C6C4E3E729D61D48F2DE32B2@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260415115104.1721008-1-jani.nikula@intel.com>
 <DM3PPF208195D8D3C6C4E3E729D61D48F2DE32B2@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Fri, 24 Apr 2026 11:28:54 +0300
Message-ID: <00f5c612c22f8b626736003e889330cf2876447a@intel.com>
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
X-Rspamd-Queue-Id: 009AF45B79A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Fri, 24 Apr 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH] drm/i915/ddi: add wrapper for calling ->get_buf_trans()=
 hook
>>=20
>> Add intel_ddi_buf_trans_get() wrapper for calling the
>
> Nit: Could we name this intel_ddi_get_buf_trans() to keep the hook name a=
nd function name that calls this hook uniform
> But with or without this change

I put more value in having the function name prefix be the same as the
file name.

> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> encoder->get_buf_trans() hooks, allowing for a centralized place to
>> e.g. check for VBT overrides for the buf translations.
>>=20
>> Cc: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

--=20
Jani Nikula, Intel
