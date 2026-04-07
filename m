Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NFVCGNd1Wl/5QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:39:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AF93B3C8A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6384710E4B3;
	Tue,  7 Apr 2026 19:39:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDyGwU8j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E818D10E4A7;
 Tue,  7 Apr 2026 19:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775590752; x=1807126752;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=z7A/ySROSkX4aW0Ri/vEVccpgrLOwsini0+mAhUayZo=;
 b=dDyGwU8jDwTeqcc7iaoHpCcenct1P+OAnzV+aNRn4CFyAhDoUFxMoeBh
 GV58OsRTkizlgCuyOkGam2HAft7IYi9QCjPTLUXVuvvJFnhCadUOAmk1z
 wXJHPB1mZgofXM9o0EX0xe/NrVyzjGH+FTTmbCuYGDsozwQt2JwMQi1oV
 X08FXrm3SgzGJHIvrYY59yrJyVeD+MTeWYLV3XYrUV8w9zEBRJu6xSEuh
 cHrHoFE1kmGNioN/25wYBezI38mxOP/vb+MZOdQDeIzKzJgMJPuknSBBW
 UIQ6YjTxtKzB0322QBRl0KIzw3jQqac+IQzrEmqx0RpvZD/vt7o3kNYHD w==;
X-CSE-ConnectionGUID: 7oIDHbh5QAiHfVuyVZr5Kg==
X-CSE-MsgGUID: MUeB7cFLRuGCboIDsMZmxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="88016643"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="88016643"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:39:11 -0700
X-CSE-ConnectionGUID: CdTaaMFgTuyMuLZccF29IA==
X-CSE-MsgGUID: GYjOHmxtSpOw8BApQmRjrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="225502220"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:39:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/mchbar: move intel_mchbar_regs.h under
 include/drm/intel
In-Reply-To: <adUsb9ODzDKO6jBA@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1775559414.git.jani.nikula@intel.com>
 <581eef80fb77b4ab78ca040e60b2a29c844a5232.1775559414.git.jani.nikula@intel.com>
 <adUsb9ODzDKO6jBA@intel.com>
Date: Tue, 07 Apr 2026 22:39:05 +0300
Message-ID: <62ecb5604db457e1023ec58c5656239c46816417@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A8AF93B3C8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Apr 07, 2026 at 01:57:41PM +0300, Jani Nikula wrote:
>>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c               | 2 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c                 | 2 +-
>>  drivers/gpu/drm/i915/gvt/handlers.c                         | 4 ++--
>>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c                 | 2 +-
>
> Those four don't seem to need the header anymore.

The last one does need it after all. Sent v2 with the cleanup patches.

BR,
Jani.



--=20
Jani Nikula, Intel
