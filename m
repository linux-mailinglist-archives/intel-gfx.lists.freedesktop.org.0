Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBMvMk5wxmmkJwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 12:55:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C006343DA7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 12:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B6810EC4D;
	Fri, 27 Mar 2026 11:55:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZvyMudzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B5D910EC4D;
 Fri, 27 Mar 2026 11:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774612555; x=1806148555;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6alnfp2vPlDIbbpKbsDyRVgTxJMerpMg5Y9fPzSrxww=;
 b=ZvyMudzV48qvKwePKvJhl5ARJPqRHunzMGgZI9NQZIqltyuEAQcfoF/7
 FOmPCSRUQ/PsNepVkiUXu7+ubZfDOdElQsDUw1lxEXC0KkbvnUDJ9M3Eg
 kdiQHYBP7XU9Z1xhRtsM3hj+uU/Gp/aZPwOp4hUhYMnxTYmEUcKok92x8
 JyXwOhvm2rC9OOuVCjT3q/DjEAiLpoRs+Quc9kKKb6EaCNGam8zEyd2F6
 JVuJihoXCMHj42gcq1Y1hdl4p8wVqwhsz67TNsipEgSc6fEoGNKRv3b6e
 cXmOu2TR8uJhtan1cdxVuMHXmvwK8lMTA3ZZq+sG3af2xE/sWKGlUeh/t Q==;
X-CSE-ConnectionGUID: e82/jjH0STO5PHZ9BOWJlg==
X-CSE-MsgGUID: JL2DFAkiQmGKtsjXX5Rz5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="93265145"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="93265145"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 04:55:55 -0700
X-CSE-ConnectionGUID: smU4y3vLSjmQmROvntxNYw==
X-CSE-MsgGUID: IZAiiKn7TsquOdvJ2lmvVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="225543135"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 04:55:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/psr: Do not use pipe_src as borders for SU area
In-Reply-To: <20260327114553.195285-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260327114553.195285-1-jouni.hogander@intel.com>
Date: Fri, 27 Mar 2026 13:55:49 +0200
Message-ID: <c2900e8eea468da57356e5d6472ea09a22553446@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5C006343DA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 27 Mar 2026, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> @@ -2866,6 +2867,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic=
_state *state,
>  	struct intel_crtc_state *crtc_state =3D intel_atomic_get_new_crtc_state=
(state, crtc);
>  	struct intel_plane_state *new_plane_state, *old_plane_state;
>  	struct intel_plane *plane;
> +	struct drm_rect display_area =3D { .x1 =3D 0, .y1 =3D 0,
> +		.x2 =3D crtc_state->hw.adjusted_mode.crtc_hdisplay,
> +		.y2 =3D crtc_state->hw.adjusted_mode.crtc_vdisplay};

Nitpick, following the kernel style here actually improves clarity.

	struct drm_rect display_area =3D {
		.x1 =3D 0,
		.y1 =3D 0,
		.x2 =3D crtc_state->hw.adjusted_mode.crtc_hdisplay,
		.y2 =3D crtc_state->hw.adjusted_mode.crtc_vdisplay,
	};

BR,
Jani.


--=20
Jani Nikula, Intel
