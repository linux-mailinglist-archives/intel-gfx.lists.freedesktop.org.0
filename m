Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B5495B6A6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 15:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E82E10EA9F;
	Thu, 22 Aug 2024 13:29:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmIqVpaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4100610EA9F;
 Thu, 22 Aug 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724333362; x=1755869362;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nyvWwnTZmSrvyaUML7BPVBg9HDTpDm657deav8q6a10=;
 b=EmIqVpaD9gMXKqc+BL8R+EXIx+/HYEy0HR6DV8XQGZiGOGNuXSGqHgqi
 imSrK4DwcGy5DmQtXZTNxCUFmZiiewVvP5lUd57RTIR0gL4kCNqOE1JJh
 3FfMAIYauV2dIk2amzn3U/s7qTAxFzDbtHICUyGQpl32wMnHZZB7U9mJM
 wP9ZJr8XteAgNgZvOLqCD7dUKW0vP+DpxAK137syrCk8NrHtFzYVxwPVA
 vATx9VRG3bY7lIIU2ogfT6bMZhu3NwzHSj4UhiqVaDZt0PRSCi4IEM3bF
 ZM1nvPhMWA42zJFVaQfL6hVnZT5eT8eGS1lSujiYCSA4FqGR5MZYraZGo w==;
X-CSE-ConnectionGUID: 3UyYATbhTiSUXRkHBrKk/g==
X-CSE-MsgGUID: oPAEmBWNTfirAuHFnIoo/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33899465"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="33899465"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 06:29:10 -0700
X-CSE-ConnectionGUID: Nju5Hio8SUeViCNCOZzfKw==
X-CSE-MsgGUID: W6FtVkFkQuu2p4Vrol+5MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="98961077"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 06:29:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH 00/10] drm/i915/display: identify display steppings in
 display code
In-Reply-To: <utzs2jz3z2sookfahedjxnnujy6flfo57vnkyvf6lntw6qimma@shvydy35ocf6>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724180287.git.jani.nikula@intel.com>
 <87cym04yot.fsf@intel.com>
 <utzs2jz3z2sookfahedjxnnujy6flfo57vnkyvf6lntw6qimma@shvydy35ocf6>
Date: Thu, 22 Aug 2024 16:29:03 +0300
Message-ID: <874j7c4rfk.fsf@intel.com>
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

On Thu, 22 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Aug 22, 2024 at 01:52:18PM GMT, Jani Nikula wrote:
>>On Tue, 20 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>> Use a Single Point of Truth for display stepping detection instead of
>>> duplicating in i915 and xe.
>>
>>Lucas, Rodrigo, ack for merging this via drm-intel-next?
>
>
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks for the reviews and acks, pushed to din.

I did some (but not exhaustive) cross-checking between drm-tip and
patchwork CI results, and didn't spot any differences in dmesg on the
steppings.

I also posted a slightly modified series to trybot, with a patch [1] to
warn on any differences between steppings before and after the changes,
all good AFAICT.

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20240821100058.2055981-10-jani.nikula@intel.com


-- 
Jani Nikula, Intel
