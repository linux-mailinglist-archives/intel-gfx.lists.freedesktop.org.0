Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJdDC1AgqGlQoQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 13:06:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B207F1FF7A4
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 13:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4966A10E9E4;
	Wed,  4 Mar 2026 12:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biM+LKOU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4FE10E9E4;
 Wed,  4 Mar 2026 12:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772625998; x=1804161998;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ANuuMYO/vF7yQGmzew+xe/nxKl1V6CMtN/3rlr43aRg=;
 b=biM+LKOUpubSTtakF5JNay6fSpDgMOHHC+j7nre01rHkGZmYGQsdzNo4
 uNB9aRETp1jnJmo3P3UjvcGk44MNmGwa4kx0i6t4ThWDXyZMcqynblYcn
 wYGU4ip1r77upBQoPGEetXAUJHiAfxEVpSKSZsawJqkyGcwLijkRnTUHk
 qcjI/tnQnjmg5vMLU80NJ0nvdYnKELTGnOBkBQH+fTjPTJUUETmVtiuM2
 oCuE4AGCf5E9Z0Ub9xKUkQG0jPMgW5enaIIYZQ6lzDpvdbpH2dz37dP8Q
 n2HAo7WIId8vOJ3OZ95Yu5QqZ9uK9tSyf5uaEO07IDCDqF93lMRk1b/4w g==;
X-CSE-ConnectionGUID: iqyxYYHDQcyA+zIS9iBSxA==
X-CSE-MsgGUID: yXgeCXEFTfGujA2muIZb9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73810842"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73810842"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 04:06:37 -0800
X-CSE-ConnectionGUID: PX7mwvG8Q1mblD52yjdrjA==
X-CSE-MsgGUID: iRMkUhxzT3G5QMtFDoJyLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="215698669"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 04:06:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
In-Reply-To: <DM3PPF208195D8DE8AD240BD7C41488F465E37CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
 <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
 <DM3PPF208195D8DBB70E17DC6764BC5A276E37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <676746dc5a9fe839e3ed071dee1c8e89174ce0ea@intel.com>
 <DM3PPF208195D8DE8AD240BD7C41488F465E37CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Wed, 04 Mar 2026 14:06:30 +0200
Message-ID: <bc588898a98e512b60e209324495e747cd003364@intel.com>
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
X-Rspamd-Queue-Id: B207F1FF7A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Wed, 04 Mar 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> I did some more digging and for aux_set enabled we really do not need to do get_backlight 
> And read register again that is filled in probe state and fills up the current_level variable that can be use.
> Check drm_edp_backlight_probe_state.
> I also found this little comment there
>
>         /*
>          * If we're not in DPCD control mode yet, the programmed brightness value is meaningless and
>          * the driver should assume max brightness
>          */
>         return bl->max;
>
> So this was a policy that was decided during VESA AUX Backlight implementation time. Also that Mode will not be DPCD
> Initially and will change later during backlight enable so we get to assume max brightness . That should be okay to do with
> Luminance_set case too then.

The comment says, if the panel is not in DPCD control mode, the value in
DPCD is meaningless.

Ditto, if the panel is not in luminance control mode (or whatever the
specific name for it is), the luminance value in DPCD is meaningless.

However, if the panel is in DPCD control mode but not in luminance
control mode, we should be able to read the non-luminance DPCD
brightness value and use that.

BR,
Jani.


-- 
Jani Nikula, Intel
