Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E711C94CCE7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 11:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374E710E88B;
	Fri,  9 Aug 2024 09:07:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJSPDqz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEF810E889;
 Fri,  9 Aug 2024 09:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723194423; x=1754730423;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rnXYRKywIVZbqZyYCHBzIFhRkyMiTvi411eGe8+Yh5w=;
 b=SJSPDqz7Fz4AnbupAah/mItS66ZU96T1BoSgYPwI4zsV5ynRUtOswJFx
 UjU0nTog3lkE3syABdjclphMXtun+8FMt+3KEISoEOaFA5K2bPbrM2I++
 P+dwNAFU7A8BAv5Wa2lNtw34zqLEtmwz4Vt/I5ms4MJLjyVRPznWpiI4y
 Oq2Gjb15wQ4D+vX0jg0HOagExfJOA77eUgj3iwKV3BkalD02K+l+uTfSx
 o5BvTJLpsYzt5+/y65r5u1wF0eKSgehwp0UD1cgSpEFEVhNgi+b+u41k2
 dTnZdooN5SYqxvqjPAoBkykltBfw6k9BQkflvimqx55rrW4nwHxiVPj5l Q==;
X-CSE-ConnectionGUID: 8uBQrq9RTmmzV7VEXfB1zg==
X-CSE-MsgGUID: elDrapJpTlOXWSexXr4Rgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="25155727"
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="25155727"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 02:07:02 -0700
X-CSE-ConnectionGUID: hz64SiO1QcCR6lS/2TrBdw==
X-CSE-MsgGUID: 9AI0dFStTaGMysoWdyapKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="57420279"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 02:07:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Gustavo
 Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
In-Reply-To: <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
Date: Fri, 09 Aug 2024 12:06:55 +0300
Message-ID: <87mslm2hg0.fsf@intel.com>
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

On Thu, 08 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Aug 08, 2024 at 06:15:45PM GMT, Jani Nikula wrote:
>>v2 of https://patchwork.freedesktop.org/series/136621/
>>
>>Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
>>"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.
>>
>>Due to the display dependency, I think it would be best to merge the
>>whole thing via drm-intel-next, and do the first drm-intel-next pull
>>request and backmerge from drm-next to drm-xe-next in fairly quick
>>succession.
>
> I was waiting the drm-intel-next pull to do a backmerge as we started to
> have some big divergences. I will try to review the missing patches to
> expedite that. Are you planning a pull this week?

Rodrigo? I think it's your shift.

BR,
Jani.



-- 
Jani Nikula, Intel
