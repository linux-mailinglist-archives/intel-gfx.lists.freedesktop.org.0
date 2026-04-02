Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L/SBrA5zmmAmAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 11:41:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6094838718C
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 11:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29B110E2EF;
	Thu,  2 Apr 2026 09:41:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RXva0YNV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6F110E2EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2026 09:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775122861; x=1806658861;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NshLyxaU8TLTjOnmigX2TNCtrVavNmbx7Ce1CRMVTBs=;
 b=RXva0YNV3YNKBKnoC4DfqE9bBCDq8g/z/djC/UWRmD6AnDvU+YhZeTam
 WKai8Eg3dWDJEUgu2qUQsebB3xkiJQWJwvKld+kBDs2gja3kOxgxOxB4R
 6ii5v9VmDi9mJD3scDhQaQ7PXKI14DMiwdZhVKxMJGLVkX40C+1Z51Yvf
 G9gkJ9xwsmwv/8664dLWG5k1ijJUUXFgprwAQ7XDbQtPiyEyuK/PC1ajo
 z1iZaIf4h9mng/vTYTXiqf/KvOeTG2t/BdbC3qj4kT/SIT8Gz8+5iM4+B
 dZSwoFaHwT2+nUCy3SjJ8MdfywuD/nwOzHEcnX+BrFJNe4xSExUAlcnJQ A==;
X-CSE-ConnectionGUID: CNBxz1APTKmh4ZHkvkUCzw==
X-CSE-MsgGUID: 7bsQ9lttS7qj7jJEIG5lGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76069212"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="76069212"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 02:41:00 -0700
X-CSE-ConnectionGUID: qVsp4VR9SZSGw30c7tWlfw==
X-CSE-MsgGUID: 1MNyCcikR7+w3da/w74Bvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="231729289"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 02:40:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@intel.com>, Ville =?utf-8?B?U3ly?=
 =?utf-8?B?asOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for
 drm/i915/display: stop using the configurable fence timeout (rev2)
In-Reply-To: <dc4d04b4-2d29-4a19-8d11-58051673e0a6@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251112155612.8320-1-jani.nikula@intel.com>
 <176310680567.54560.8073003092226406962@10055242dc62>
 <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
 <aSXmTMWeOXjnYNSB@intel.com>
 <dc4d04b4-2d29-4a19-8d11-58051673e0a6@intel.com>
Date: Thu, 02 Apr 2026 12:40:56 +0300
Message-ID: <44f9b69d23678458f0ab3ff4bec5c45cb05535b8@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org]
X-Rspamd-Queue-Id: 6094838718C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 03 Dec 2025, Maarten Lankhorst <maarten.lankhorst@intel.com> wrote:
> Hey,
>
> Den 2025-11-25 kl. 18:24, skrev Ville Syrj=C3=A4l=C3=A4:
>> On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
>>> On Fri, 14 Nov 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>>>> =3D=3D Series Details =3D=3D
>>>>
>>>> Series: drm/i915/display: stop using the configurable fence timeout (r=
ev2)
>>>> URL   : https://patchwork.freedesktop.org/series/157441/
>>>> State : failure
>>>>
>>>> =3D=3D Summary =3D=3D
>>>>
>>>> CI Bug Log - changes from CI_DRM_17544_full -> Patchwork_157441v2_full
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>>>>
>>>> Summary
>>>> -------
>>>>
>>>>   **FAILURE**
>>>>
>>>>   Serious unknown changes coming with Patchwork_157441v2_full absolute=
ly need to be
>>>>   verified manually.
>>>>=20=20=20
>>>>   If you think the reported changes have nothing to do with the changes
>>>>   introduced in Patchwork_157441v2_full, please notify your bug team (=
I915-ci-infra@lists.freedesktop.org) to allow them
>>>>   to document this new failure mode, which will reduce false positives=
 in CI.
>>>>
>>>>=20=20=20
>>>>
>>>> Participating hosts (10 -> 11)
>>>> ------------------------------
>>>>
>>>>   Additional (1): shard-dg2-set2=20
>>>>
>>>> Possible new issues
>>>> -------------------
>>>>
>>>>   Here are the unknown changes that may have been introduced in Patchw=
ork_157441v2_full:
>>>>
>>>> ### IGT changes ###
>>>>
>>>> #### Possible regressions ####
>>>>
>>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a:
>>>>     - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2] +5 other tests =
dmesg-warn
>>>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-mt=
lp-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
>>>>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/sh=
ard-mtlp-3/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
>>>>
>>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
>>>>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +3 other tests =
dmesg-warn
>>>>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-sn=
b5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>>>>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/sh=
ard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>>>>
>>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d:
>>>>     - shard-dg2:          [PASS][5] -> [DMESG-WARN][6] +5 other tests =
dmesg-warn
>>>>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg=
2-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
>>>>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/sh=
ard-dg2-5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
>>>>
>>>>   * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
>>>>     - shard-dg1:          [PASS][7] -> [DMESG-WARN][8] +2 other tests =
dmesg-warn
>>>>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg=
1-12/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
>>>>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/sh=
ard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
>>> Maarten, Ville, any ideas what to do about these?
>> Looks like we need the timeout to unbreak the modeset vs. reset
>> deadlock in a timely fashion.
>>
>> I'm not where we signal/error the fences the modeset is waiting
>> for, but I guess that must be happening after the whole reset
>> sequence is done. Doing that earlier would seem like another
>> solution, but dunno what other fallout it would have.
> intel_prepare_plane_fb() adds all dma-resv fences for old_obj on
> intel_crtc_needs_modeset(), does it change anything if we remove that,
> at least for the GPU reset commit?

We dropped the ball here a bit, and I'm a bit clueless as to what to
do. Except we'll need to unify i915 and xe here somehow.

Alternatives:

- Remove the timeout from i915 (the patch at hand), and fix the fallout
  somehow.

- Add the timeout to xe, and fix the fallout, if any.

- Add the timeout to display parent interface, which is a bit meh.


BR,
Jani.


--=20
Jani Nikula, Intel
