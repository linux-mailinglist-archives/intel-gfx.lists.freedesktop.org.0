Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNlZH2GS+Gl8wgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:34:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157FC4BCF3D
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9120110E06D;
	Mon,  4 May 2026 12:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kHFjHIGs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE6D89F41;
 Mon,  4 May 2026 12:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777898077; x=1809434077;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=VTxOPleJmAjsL1JTtJHm8C3mUIEEGPyDiVFFRYe145A=;
 b=kHFjHIGshgIJxWMKZUw7dPr466zMhFIA2fNt7n76ITV4P9EfkoYwkQ4R
 6ECXb+pAu934J5LLhZJoPGmeQ8zyIcyDsx8L79T0/LssbfqNIXKdTRtbw
 oiQfSVeYsjTzpkeNnJ4E9KoFELT727T2ob2YxCILwNzUjQRUg57/ywVX4
 EyxunBP8FYom0bKIftxqfT2hU2lZbCxYg/Hgsc/EhvhV7+AzAU20rCLT9
 um8Up5ucuXR2kvwf/S/B6jw6C/cMvlafXVTASqxODYrrlpEdV31htpRwK
 oBHlEcA3ou3NjQoUAUy6sbdPgDLcrBWc/OZAhdXRTWUFIyTsehSkYh+Nf Q==;
X-CSE-ConnectionGUID: 9HGNVs85T2ai0gIHQNPAWQ==
X-CSE-MsgGUID: M8pimggoSGus94mUEpaQbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="89444555"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="89444555"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 05:34:37 -0700
X-CSE-ConnectionGUID: e3HJ076ISqeAR7TAZ4rsrg==
X-CSE-MsgGUID: Bz93SLieSh+6XyMUwroP5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="234642542"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.157])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 05:34:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 0/8] drm/i915/display: refactor display funcs
In-Reply-To: <IA1PR11MB6467C9D685C9239670E691B8E3312@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1777537663.git.jani.nikula@intel.com>
 <IA1PR11MB6467C9D685C9239670E691B8E3312@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Mon, 04 May 2026 15:34:32 +0300
Message-ID: <42886f5914530eb3bff0f1fa82fc87c4c0b3c1bb@intel.com>
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
X-Rspamd-Queue-Id: 157FC4BCF3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,intel.com:mid]

On Mon, 04 May 2026, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, April 30, 2026 1:59 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 0/8] drm/i915/display: refactor display funcs
>> 
>> Split out the display function refactor from [1] into a separate series for easier
>> review and merging.
>> 
>> BR,
>> Jani.
>> 
>> [1] https://lore.kernel.org/r/cover.1777458161.git.jani.nikula@intel.com
>> 
>> 
> LGTM,
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
