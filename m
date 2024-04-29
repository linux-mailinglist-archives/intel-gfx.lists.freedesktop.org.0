Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C318B5AFA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3875B10E042;
	Mon, 29 Apr 2024 14:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESc3bJAk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16AF10EB3E;
 Mon, 29 Apr 2024 14:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399739; x=1745935739;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MMDS5y1s0zRD0OoyMoHkY0lpSuThQOQW2HBaNWWOTyY=;
 b=ESc3bJAkvf4JCjT5khRDdqg2/7/ynV8NjvTRg5wyoFWp4BQT3j42b7Xd
 z9KvN482OeURalfiybjdeaGzNJQ8DBuO/fTodZ86HRHzLTOcEaF0kbFbf
 Qgw6/+EwFbLJbsYm6Ww+bwHVlg/ZkxvtZcMb7Pgzy3LuHpTC+0u4Ja06H
 BCkkdSM6Nlrjj5GOXyBqd1lngSUhh/nTc+HTPZAUwziXBKvje/ksaKf/1
 A0YHq0jCDkalDnPeCd1CqyqkX1ljodYfgBEnlzujB11VhvEmpxKG3lI/P
 cAE4c+d44zA7rTAmUaoeblFgi2toxsEKugNo6sq1KN531KV0JFNDQI2qj Q==;
X-CSE-ConnectionGUID: PJPHvpTPRieVSzsmKHWa5w==
X-CSE-MsgGUID: lkYxi12gQ5SO5Fhvv9FGJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="20675711"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="20675711"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:08:58 -0700
X-CSE-ConnectionGUID: L0214hdnTJmxUyzW9Dui9g==
X-CSE-MsgGUID: 9C1KYrv2T9Kja+a3f9DC4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26081215"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:08:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 000/123] drm/i915: remove implicit dev_priv local
 variable use
In-Reply-To: <Zi-V6EPHHnkG399m@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714136165.git.jani.nikula@intel.com>
 <87ttjo46ee.fsf@intel.com> <Zi-V6EPHHnkG399m@intel.com>
Date: Mon, 29 Apr 2024 17:08:54 +0300
Message-ID: <875xw045xl.fsf@intel.com>
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

On Mon, 29 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> From a glance on these initial patches, it sounds really organized in
> individual patches and easy to review.
> Perhaps if we take this path we might just split the series in blocks
> and merge these initial 17, and we continue over the next weeks.

Ack.

> However, if this is automated like you mentioned in the cover letter,
> perhaps we can do one patch per directory? (display vs gvt vs gem? vs drm/i915/{.c,.h})

I'll look into it. The first natural batch came about when I moved some
color regs, so I sent them [1].

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1714399071.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel
