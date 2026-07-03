Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MePGHf2sR2pfdQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 14:37:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BBB7026A0
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 14:37:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="JbP85/pg";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C170010F7DD;
	Fri,  3 Jul 2026 12:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E5010F7DB;
 Fri,  3 Jul 2026 12:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783082233; x=1814618233;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=G89FnOPToZ0rZKdhhss6/AXvwPyYSeIBBi40p8MuUiM=;
 b=JbP85/pgTbKjKvq+63RiYfWF6f1d48o49tphj8p382hDU/FSXF6LTVYn
 XsdyVwdSA7M70EXWwGhU4HDX235ioYaDSV0yUmPELs32nAWE19xm+EoMN
 3njNrLFKwYtmPkrE3yvaD5Z9h4aofMZQWOOZ6zqmExxG4dCrbXU68M7N9
 dd665JAWLk1UdnVSIsiDW4WKAXnQyo1iEAdyQ2rlBU+xypjEWlJLsCH5T
 o8c3ni5Sk0d3S3ml92u+Uc8qS+2g0O9vZaWu6VcvWtkO+3bJuivF/c9C3
 i4pgTqoum+80bM69tgdpSLOkIx42+z5k9YgHt8TGapFfxCF+WZvK8nt4h A==;
X-CSE-ConnectionGUID: kYxGGZW4TtCShCE47TSumg==
X-CSE-MsgGUID: DkbIORxyQauJ8/TZEfIlNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="71358196"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="71358196"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 05:37:12 -0700
X-CSE-ConnectionGUID: tUVPABoTRPK93i70lUhT1Q==
X-CSE-MsgGUID: d4IW7LMmSsOfM2fk+EAx0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="283194185"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.157])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 05:37:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Subject: Re: [RESEND v2 0/8] drm/{i915,xe}: unify runtime pm calls
In-Reply-To: <akeNb7UeeFXMvbU8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1782913901.git.jani.nikula@intel.com>
 <akeNb7UeeFXMvbU8@intel.com>
Date: Fri, 03 Jul 2026 15:36:47 +0300
Message-ID: <aadf2fef6ec60c4eb935320cec96efb1921f679b@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4BBB7026A0

On Fri, 03 Jul 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jul 01, 2026 at 04:52:58PM +0300, Jani Nikula wrote:
>> Resend of [1], which is v2 of [2].
>>=20
>> [1] https://lore.kernel.org/r/cover.1782311749.git.jani.nikula@intel.com
>> [2] https://lore.kernel.org/r/cover.1781527161.git.jani.nikula@intel.com
>>=20
>> Jani Nikula (8):
>>   drm/i915: call intel_uncore_runtime_resume() for each gt
>>   drm/i915: call intel_display_power_runtime_resume() on suspend error
>>     path
>>   drm/i915: move some display runtime suspend operations earlier
>>   drm/i915: add intel_display_driver_pm_runtime*() functions
>>   drm/{i915,xe}: add new
>>     intel_display_driver_runtime_pm_{enable,disable}()
>>   drm/xe/display: separate d3cold handling from
>>     xe_display_pm_runtime_suspend_late()
>>   drm/xe/display: add xe_display_pm_runtime_resume_early()
>>   drm/xe/display: unify runtime suspend/resume with i915 for non-d3cold
>
> I got a bit sidetracked into the system suspend code and the
> somewhat tangled mess of gem/gt/uncore while looking at this,
> but all of that looks mostly separate from this.

Yes, there are more dragons to tame.

> For the series
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks a lot, pushed to din.

BR,
Jani.

>
>>=20
>>  .../drm/i915/display/intel_display_driver.c   | 71 +++++++++++++++++++
>>  .../drm/i915/display/intel_display_driver.h   |  8 +++
>>  drivers/gpu/drm/i915/i915_driver.c            | 58 ++++-----------
>>  drivers/gpu/drm/xe/display/xe_display.c       | 44 ++++++++----
>>  drivers/gpu/drm/xe/display/xe_display.h       |  1 +
>>  drivers/gpu/drm/xe/xe_pm.c                    |  2 +
>>  6 files changed, 125 insertions(+), 59 deletions(-)
>>=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
