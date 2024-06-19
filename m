Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00190E662
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 10:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64EF10E067;
	Wed, 19 Jun 2024 08:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jduTSVQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A3D10E067
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 08:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718787409; x=1750323409;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9vWfWGU213Oo/WGAhSt32e37e2EmJ+ywWJhIuUB6Xw0=;
 b=jduTSVQmQHXCM4/SSGhXubG7iUNXejD/eGTNgu1darqPtCVc0JioVl37
 4QfZPVC9U0duVnRoGQDrHc0BcF7fkMKGBIjJyyhS6HAfA7cXiwidF6cT1
 saAMTfSgHZUqNyCdv/JgswqQzD+nlp2jvCXunJSWvTxTw3y1ChXOi/1ln
 44ESq0/Elq7DL6wz6qJ28o0m3lJLBCISqY2GSpwAFzjKEkfH8lihqiRVq
 87fCiLuyaktU7P1EkCoC/xWV9olMvyBXj2jVGWR+Vp69MoOTORfeBQu7M
 pzlJFJcM5lggryh/ABP13BNi4MS07Urqi70Gz390J8pGkrGRqyYx+PKkg Q==;
X-CSE-ConnectionGUID: AC1xWcDBSjGhx6Vilqod9w==
X-CSE-MsgGUID: T7rTkjMXQvG1u70LF6QsXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26393360"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26393360"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 01:56:48 -0700
X-CSE-ConnectionGUID: 8SR2VRzZQiy+DTBEi6Px+w==
X-CSE-MsgGUID: 4VQsOb9bSdyf1I/mAO36xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="42557468"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 01:56:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: Fixes that failed to pick to v6.10-rc2
In-Reply-To: <44f0ef6246174c1faca726a86901cd31c9eb5ab0.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87y17jbt5r.fsf@intel.com>
 <44f0ef6246174c1faca726a86901cd31c9eb5ab0.camel@intel.com>
Date: Wed, 19 Jun 2024 11:56:42 +0300
Message-ID: <87o77xfgz9.fsf@intel.com>
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

On Wed, 05 Jun 2024, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Wed, 2024-06-05 at 13:06 +0300, Jani Nikula wrote:
>>
>> Jouni, Animesh, there are some PSR commits with Fixes: pointing at
>> commits in v6.9 or v6.10-rc1.
>>
>> This does not apply cleanly to -rc1:
>> d07a578703db ("drm/i915/display: Do not print "psr: enabled" for on
>> Panel Replay")
>>
>> This applies but does not build:
>> 45b5853114ad ("drm/i915/psr: Get Early Transport status in
>> intel_psr_pipe_get_config")
>>
>> This applies and builds but decided to punt because of the above:
>> cd43a85ec3c6 ("drm/i915/psr: Use enable boolean from intel_crtc_state
>> for Early Transport")
>>
>> If these are important fixes to be backported to v6.10, please
>> provide
>> the backports.
>
> First patch is just for shaping debugfs interface printout. I think
> that is ok to leave out.
>
> Early transport is disabled by default currently -> should be ok to
> leave out two last patches.

There have been more PSR patches in drm-intel-next with Fixes: pointing
at commits upstream. I've skipped them too. But it should be noted that
once drm-intel-next gets merged upstream for v6.11, the stable team will
inevitably start picking those commits up.

BR,
Jani.



>
> BR,
>
> Jouni H=C3=B6gander
>>
>> BR,
>> Jani.
>>
>>
>

--=20
Jani Nikula, Intel
