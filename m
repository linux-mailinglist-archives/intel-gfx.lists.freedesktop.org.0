Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B16B57D03
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B3510E4B2;
	Mon, 15 Sep 2025 13:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0oi1SlP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990C910E4B2;
 Mon, 15 Sep 2025 13:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757942924; x=1789478924;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=xBklsJqS+sKLU0PRBTSdFoJWGhWVUaR/WFwqB+y/uvk=;
 b=E0oi1SlP5zCy4DicFhxVGwQmVTOrhbCLOQD93SjKYTASVgay5BMhgQmy
 oyjpynkSo3MHQhgBb+8lqgoIJBA/tQ2UkYzqKv9u/U+2082kiMT57pZPY
 wyJyJSdJt323qd/Gl9L4KvmB9bJVNaOLZa3ZL6CXIX83Yc1JmsROFqLEE
 VQqV1zjWxhuXd8MTuS8HD2hhIbTzx4+Ftwr3O6O8faqksBkwYJoscBe+W
 FmXdilsrns8rL1vwmIwd5nG1V/aIN57xNl47lOH6rSJ0XG4BUdp+Gtus5
 iCfUzA72pa1BIEZXaDVJFMDKGLYsOkpvgJVIp0WeXlJlqqnZHf/N6nB0n g==;
X-CSE-ConnectionGUID: 6cyfNgcbTOm7PV+iFOCqEA==
X-CSE-MsgGUID: QVy+ZdvZR56VFLoAXkG/+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60114334"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60114334"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:28:43 -0700
X-CSE-ConnectionGUID: yNsBdlAoSrWk4Dy9vQNIVw==
X-CSE-MsgGUID: eDhtajFZSF64PokQvKswRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="179002880"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:28:41 -0700
Date: Mon, 15 Sep 2025 15:30:45 +0200 (CEST)
From: "michal.grzelak" <mgrzelak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
cc: "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "Brzezinka, Sebastian" <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v10 1/1] drm/i915/display: Add no_psr_reason to PSR
 debugfs 
In-Reply-To: <ad14c2fd3d8e505f835cdb59daf1cbff5fb3ed9c.camel@intel.com>
Message-ID: <497eb7e8-0fa4-c0be-bfb2-7ff33c5afd79@intel.com>
References: <20250903103152.2440348-1-michal.grzelak@intel.com>
 <20250903103152.2440348-2-michal.grzelak@intel.com>
 <ad14c2fd3d8e505f835cdb59daf1cbff5fb3ed9c.camel@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1118010442-1757943048=:937659"
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

--8323329-1118010442-1757943048=:937659
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Sep 2025, Hogander, Jouni wrote:

> On Wed, 2025-09-03 at 12:31 +0200, Michał Grzelak wrote:
>> There is no reason in debugfs why PSR has been disabled. Currently,
>> without this information, IGT tests cannot decide whether PSR has
>> been disabled on purpose or was it abnormal behavior. Because of it,
>> the status of the test cannot be decided correctly.
>>
>> Add no_psr_reason field into struct intel_psr. Add no_psr_reason
>> into struct intel_crtc_state to prevent staying out of sync when
>> _psr_compute_config is not using computed state. Write the reason,
>> e.g. PSR setup timing not met, into proper PSR debugfs file. Update
>> the reason from old_crtc_state in intel_psr_pre_plane_update. Extend
>> format of debugfs file to have reason when it is non-NULL. Clean the
>> reason when PSR is activated.
>>
>> Refactor intel_psr_post_plane_update to use no_psr_reason along
>> keep_disabled.
>> [...]
>> @@ -2922,6 +2924,9 @@ void intel_psr_pre_plane_update(struct
>> intel_atomic_state *state,
>>  
>>  		mutex_lock(&psr->lock);
>>  
>> +		if (!new_crtc_state->has_psr)
>> +			psr->no_psr_reason = old_crtc_state-
>>> no_psr_reason;
>
> I think you should use new_crtc_state->no_psr_reason.
>
Right, thanks for picking that. Will fix it in next version.

BR,
Michał
--8323329-1118010442-1757943048=:937659--
