Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86404A22A30
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 10:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4BC10E901;
	Thu, 30 Jan 2025 09:24:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hk6vzSwD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA7210E900;
 Thu, 30 Jan 2025 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738229048; x=1769765048;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Axps9s6dGZAuwmDy2eTccoo0f2MkYfnyA0oWs/J5nhk=;
 b=Hk6vzSwDfk0oTeEOhBEUp7sk0yQKog5smHJopVbhr6qj1yWynbZHLuQZ
 aNi/Kpw6hLotPd6m4bY7j3X1eJYYR8sR5q23YkHMMPlmP28ifqpB+od7y
 /jS8fj78CYy56r5h+wlUTZn3NhfNTdnQgJC0z+FgK6fTQqfPNg2lVn09F
 WyjawY103DzpYmWpD8XJvia192WS6j2/oV84qMfhyIO5j8X+TagmRBXUl
 UsKgGqpB3YAvfiW0hjK7WqMJHfSG/YtbcKaq8yWBLvDsTo9qwO1c0y69W
 rFWUNuGeQMuY1ZbKUf++FCrrbaNWhZ42a2rAF20tIlP44krIqAbxiBrbn g==;
X-CSE-ConnectionGUID: LklNngHJTo6G49t6nkF4kw==
X-CSE-MsgGUID: MDWNGXIRTLmE+qe6uj3zeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38653315"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38653315"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 01:24:08 -0800
X-CSE-ConnectionGUID: wNiO2VVvRHCgEsPfTx37ow==
X-CSE-MsgGUID: FLAXFgD8Q8elvILmAHJvjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140153756"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 01:24:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Al Viro <viro@zeniv.linux.org.uk>, intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BUILD: failure for Regression on
 linux-next (next-20250120) (rev2)
In-Reply-To: <20250129211125.GS1977892@ZenIV>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <173818401779.2530294.11352683650301608238@b555e5b46a47>
 <20250129211125.GS1977892@ZenIV>
Date: Thu, 30 Jan 2025 11:24:03 +0200
Message-ID: <87ldus8xjg.fsf@intel.com>
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

On Wed, 29 Jan 2025, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Wed, Jan 29, 2025 at 08:53:37PM -0000, Patchwork wrote:
>> == Series Details ==
>> 
>> Series: Regression on linux-next (next-20250120) (rev2)
>> URL   : https://patchwork.freedesktop.org/series/143978/
>> State : failure
>> 
>> == Summary ==
>> 
>> Error: patch https://patchwork.freedesktop.org/api/1.0/series/143978/revisions/2/mbox/ not applied
>> Applying: Regression on linux-next (next-20250120)
>> Using index info to reconstruct a base tree...
>> M	fs/debugfs/file.c
>> Falling back to patching base and 3-way merge...
>> Auto-merging fs/debugfs/file.c
>> CONFLICT (content): Merge conflict in fs/debugfs/file.c
>> error: Failed to merge in the changes.
>> hint: Use 'git am --show-current-patch=diff' to see the failed patch
>> Patch failed at 0001 Regression on linux-next (next-20250120)
>> When you have resolved this problem, run "git am --continue".
>> If you prefer to skip this patch, run "git am --skip" instead.
>> To restore the original branch and stop patching, run "git am --abort".
>> Build failed, no error log produced
>
> Not to put too fine a point on that, but... which tree does it fail
> to apply to, seeing that both mainline and -next are identical
> in fs/debugfs/* and the patch in question applies cleanly to either?

drm-tip branch of https://gitlab.freedesktop.org/drm/tip

It's a kind of "linux next for graphics" that we run pre-merge CI on. It
doesn't have other linux-next stuff nor mainline until we backmerge
-rc1. So it doesn't have the stuff you're fixing here either.

Chaitanya & co additionally run tests on linux-next to hopefully catch
regressions before they have a chance to wreak havoc in drm-tip.

Come to think of it, would not be a bad idea to add the baseline info to
these mails. Cc: the CI infra list.


BR,
Jani.


-- 
Jani Nikula, Intel
