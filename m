Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAE8LIKv2GljgwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 10:06:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6452C3D3C30
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 10:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030C610E8EA;
	Fri, 10 Apr 2026 08:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksZFRD6q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7E989DFC;
 Fri, 10 Apr 2026 08:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775808381; x=1807344381;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wA94zRZq84xYFpwzGzcwqHyL6HNUQgoHAbgajBVa5nQ=;
 b=ksZFRD6q9+zyrTdC8Fp4zt+A9rYb/bU7EyU10pvOiaxPYZWPMaqvJfCd
 uad28oSKRXHJymZ+QnBjlwJlfQpcmSU6Rf2DqvJAn+gFCVMPXMd9cRilz
 sJyHOhBA5zr8Xvk42CHM3oJJgA7e5bYQNfZlwxhFOBc37+M1oS7BOnbTl
 Ac1M08jrq6jjZZDO5sV4Sjo6eugPiFosbDcCYfeW6/WC96Dt0TkXhd9If
 NNdo7r68RHFLd0M9Qt1RS6PXo9tjSwanqKj18LEaMxIPzSa8z1FMIjNFu
 +XvK1IPgeYrW6cAaZtfZ1+TcC0HCrd/NnTWBLdE5piUFcFKXRWfpFYqaN A==;
X-CSE-ConnectionGUID: JCuhq9t0T0CA7Awh2OZUSw==
X-CSE-MsgGUID: 7zAnbFAFT0SZ8KrpaDgEBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="87112328"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="87112328"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 01:06:21 -0700
X-CSE-ConnectionGUID: A16Ofq1/TFSodDN05Hf6DQ==
X-CSE-MsgGUID: wVFhdyfKQjeqY6hoY6Pjnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="233416426"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 01:06:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost
 <matthew.brost@intel.com>, Dave Airlie <airlied@gmail.com>, Simona Vetter
 <simona.vetter@ffwll.ch>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Oded Gabbay
 <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: Re: [PULL] topic/step for i915 and xe
In-Reply-To: <ade396UuRQoPLGdS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cc1ff0a476ff457e88251e22b83c1a45ada11ecc@intel.com>
 <ade396UuRQoPLGdS@intel.com>
Date: Fri, 10 Apr 2026 11:06:12 +0300
Message-ID: <404ea596f4aacf999d403182d31843a5d2c47bb2@intel.com>
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
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,gmail.com,ffwll.ch,ursulin.net,suse.de,kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 6452C3D3C30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Apr 09, 2026 at 11:02:20AM +0300, Jani Nikula wrote:
>> 
>> Hi Thomas, Matthew and Rodrigo -
>> 
>> Here's a topic pull intended for both drm-xe-next and drm-intel-next to
>> unify the steppings header and enum between the i915 and xe drivers. I'm
>> opting for a topic branch because merging this through either driver's
>> -next branch would likely be painful conflicts wise.
>> 
>> Please pull this to drm-xe-next (*), and once you're done, I'll follow
>> suit in drm-intel-next.
>
> Pulled to drm-xe-next while I'm covering for Thomas.

And pulled to drm-intel-next as well. Thanks a lot.

BR,
Jani.

>
>> 
>> Thanks,
>> Jani.
>> 
>> 
>> (*) Hint, 'dim apply-pull drm-xe-next' on this message will do the
>>     trick.
>> 
>> 
>> The following changes since commit 4516432284e1b2ad9e70de8067f779c9c1072189:
>> 
>>   ttm/pool: track allocated_pages per numa node. (2026-04-08 06:52:48 +1000)
>> 
>> are available in the Git repository at:
>> 
>>   https://gitlab.freedesktop.org/drm/i915/kernel.git tags/topic/step-2026-04-09
>> 
>> for you to fetch changes up to baf310b9836445ca9056f04ec347293963a1cc6e:
>> 
>>   drm/i915/display: switch to including common step file directly (2026-04-09 10:10:03 +0300)
>> 
>> ----------------------------------------------------------------
>> topic/step to unify xe and i915 on common steppings header and enum
>> 
>> ----------------------------------------------------------------
>> Jani Nikula (3):
>>       drm/xe/step: switch to the shared step definitions with i915
>>       drm/xe/step: switch from enum xe_step to intel_step naming
>>       drm/i915/display: switch to including common step file directly
>> 
>>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c           |  2 +-
>>  .../gpu/drm/i915/display/intel_display_device.c    |  2 +-
>>  drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
>>  drivers/gpu/drm/i915/display/intel_display_wa.c    |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c        |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  2 +-
>>  drivers/gpu/drm/i915/display/intel_fbc.c           |  2 +-
>>  drivers/gpu/drm/i915/display/intel_flipq.c         |  2 +-
>>  drivers/gpu/drm/i915/display/intel_hdcp.c          |  2 +-
>>  drivers/gpu/drm/i915/display/intel_pmdemand.c      |  2 +-
>>  drivers/gpu/drm/i915/display/intel_psr.c           |  2 +-
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
>>  .../gpu/drm/xe/compat-i915-headers/intel_step.h    | 13 -----
>>  drivers/gpu/drm/xe/tests/xe_pci.c                  |  4 +-
>>  drivers/gpu/drm/xe/xe_step.c                       |  2 +-
>>  drivers/gpu/drm/xe/xe_step.h                       |  4 +-
>>  drivers/gpu/drm/xe/xe_step_types.h                 | 61 +---------------------
>>  18 files changed, 20 insertions(+), 90 deletions(-)
>>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
