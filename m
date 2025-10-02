Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66179BB366A
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 11:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38F210E176;
	Thu,  2 Oct 2025 09:09:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BwY8cflo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6EB10E176;
 Thu,  2 Oct 2025 09:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759396157; x=1790932157;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=hKlrs0oS1XPdARFfjwyMhhatdHmHsjK16WKEG32IxbU=;
 b=BwY8cfloSdaPioilJ799IlVnxeQT/NK6sT6ScRIZ5qkepa2wtPlwXrop
 Xg67BQc22k6YRINC75E9Lr7dJwLk7pl+sSKMdWJ2Do4nzclRetMKuT7x1
 xWLA1kdXwdWkz5pqO9QXC+Y04dSxFB2penOXsc6qhhyRxY8H2wRqpP6Ia
 Vl4CNQmjCwwQcYcRBwUyQr+jXY7pIL/H3Xdo50e03agrcha+VCizwGQkt
 obzs06k7l0guuZ0AYxMOC+q+1Z+Z8skGptZcYuNGo2RzYTNMRG2nU2x8n
 lPOYJml4jMuavw/Wwt7R7MsFYxOK/CYLVSk0ZI4GlDQ8ePo434yK4EnG5 Q==;
X-CSE-ConnectionGUID: xtjMvpCmQKGUS1BVmbM5Rw==
X-CSE-MsgGUID: Oc2J8JJ6R+WMBT55FtMgmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72351326"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="72351326"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 02:09:17 -0700
X-CSE-ConnectionGUID: 63XHqnK0T1qusZHqSkWhfA==
X-CSE-MsgGUID: SEUE5V0OT4S7E6lN7MGmpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="209707507"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 02:09:15 -0700
Date: Thu, 2 Oct 2025 11:09:13 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "Brzezinka, Sebastian" <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v11 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
In-Reply-To: <a961a8bf5a3c3b6715c68d92548508d7a78f8e02.camel@intel.com>
Message-ID: <b2d88349-7dfd-7071-297c-ba4cfe69e525@intel.com>
References: <20250915141913.939152-1-michal.grzelak@intel.com>
 <20250915141913.939152-2-michal.grzelak@intel.com>
 <a961a8bf5a3c3b6715c68d92548508d7a78f8e02.camel@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-765563742-1759396156=:1346717"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-765563742-1759396156=:1346717
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 30 Sep 2025, Hogander, Jouni wrote:
> On Mon, 2025-09-15 at 16:19 +0200, Grzelak, Michal wrote:
>> There is no reason in debugfs why PSR has been disabled. Currently,
>> without this information, IGT tests cannot decide whether PSR has
>> been disabled on purpose or was it abnormal behavior. Because of it,
>> the status of the test cannot be decided correctly.
>>
>> Add no_psr_reason field into struct intel_psr. Add no_psr_reason
>> into struct intel_crtc_state to prevent staying out of sync when
>> _psr_compute_config is not using computed state. Write the reason,
>> e.g. PSR setup timing not met, into proper PSR debugfs file. Update
>> the reason from new_crtc_state in intel_psr_pre_plane_update. Extend
>> format of debugfs file to have reason when it is non-NULL. Clean the
>> reason when PSR is activated.
>>
>> Refactor intel_psr_post_plane_update to use no_psr_reason along
>> keep_disabled.
>>
>> Changelog:
>> v10->v11
>> - update the reason from new_crtc_state instead of old_crtc_state
>> [Jouni]
>>
>> v9->v10
>> - log reason into intel_crtc_state instead of intel_dp->psr [Jouni]
>> - remove clearing no_psr_reason in intel_psr_compute_config [Jouni]
>> - change update of no_psr_reason into more readable form [Jouni]
>>
>> v8->v9
>> - add no_psr_reason into struct intel_crtc_state [Jouni]
>> - update the reason in intel_psr_pre_plane_update [Jouni]
>> - elaborate on motivation of the feature in commit message
>> [Sebastian]
>> - copy changelog to commit message [Sebastian]
>>
>> v7->v8
>> - reset no_psr_reason at the begin of intel_psr_compute_config
>> [Jouni]
>> - restore keep_disabled [Jouni]
>> - drop setting "Sink not reliable" [Jouni]
>> - add WA number [Jouni]
>> - if non-NULL, write no_psr_reason after PSR mode [Jouni]
>>
>> v6->v7
>> - rebase onto new drm-tip
>>
>> v5->v6
>> - move setting no_psr_reason to intel_psr_post_plane_update [Jouni]
>> - remove setting no_psr_reason when disabling PSR is temporary
>> [Jouni]
>>
>> v4->v5
>> - fix indentation errors from checkpatch
>>
>> v3->v4
>> - change format of logging workaround #1136
>>
>> v2->v3
>> - change reason description to be more specific [Mika]
>> - remove BSpecs number & WA number from being written into
>> no_psr_reason
>> - replace spaces with tabs
>>
>> v1->v2
>> - set other reasons than "PSR setup timing not met"
>> - clear no_psr_reason when activating PSR.
>>
>> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>
> Hopefully you have time and interest to extend this. Anyways this one
> together with your igt patch is already solving one problem for us:
>
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
>
Thanks Jouni for your review and all the comments throughout the series.
Certainly there is more work to do, e.g. adding reason for no PSR2, or
maybe even creating separate debugfs interface for no_psr_reason. For
now, I will just stick to resending the patch with your R-B; this is
also in order to retrigger CI run, because apparently since the IGT got
merged, the Test-with: tag tripped Patchwork and no testing has been
done.

BR,
Michał
--8323329-765563742-1759396156=:1346717--
