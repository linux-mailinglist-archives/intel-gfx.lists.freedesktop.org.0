Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCB768D62B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 13:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD8D10E163;
	Tue,  7 Feb 2023 12:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F37D10E055
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 12:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675771810; x=1707307810;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iyj6ZRiMNDo+9/jV9G/zY4p/t574nlCkzHQzEiyRmuQ=;
 b=TsnRGeLqEzqn44Xc5hVeuGPtgtfmq0xNyKNedU7tEcrBxNflVHjd/LKm
 kWnpk4ikt0tiAUA64bsrOdTztrbBOylVJPmuFGA5igL3IczzGjixpcE8b
 8EmiVWBjIWztZGFEHRFHH2wTZbnBJu+A+NLgUVZyadpicwJKwZvJT414P
 7gwyG2JM3pixilmeZV6XCv+UY1N+tPeFnwb5obllQW2HVX5OjQbqo1ScO
 dBHKEnQrFpGE9RC/lXEavpthufyKNH1y3+Ks1Gy7d0hBLaC5D8lQ2C2Ls
 OdOYBui9qGcPm9DVPNzZLuPwboXlVFbuCpl+u2f+HOTRLzQmQLlgFXtvT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="313136267"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="313136267"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:10:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="912306088"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="912306088"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:10:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y+I3uXy5BpW1zBuh@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230206163512.2841513-1-imre.deak@intel.com>
 <20230206163512.2841513-2-imre.deak@intel.com> <87r0v1ye20.fsf@intel.com>
 <Y+I3uXy5BpW1zBuh@ideak-desk.fi.intel.com>
Date: Tue, 07 Feb 2023 14:10:04 +0200
Message-ID: <87lel9y8v7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dgfx,
 mtl+: Disable display functionality if it's globally fused-off
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Feb 07, 2023 at 12:17:59PM +0200, Jani Nikula wrote:
>> Please drop all of these. There's an if (!HAS_DISPLAY()) just a few
>> lines down the purpose of which is to cover all of it in a unified
>> manner.
>
> Yes, missed this and just did the same as on older platforms above. I
> guess
>
> 	runtime->cpu_transcoder_mask = 0;
> 	runtime->fbc_mask = 0;
>
> could be removed from there as well then.

Agreed.


-- 
Jani Nikula, Intel Open Source Graphics Center
