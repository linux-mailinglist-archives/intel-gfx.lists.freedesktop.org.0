Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F22940399F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 14:20:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74806E196;
	Wed,  8 Sep 2021 12:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D736E196
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 12:20:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="306028385"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="306028385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:20:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538618796"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:19:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
Date: Wed, 08 Sep 2021 15:19:55 +0300
Message-ID: <87lf4745uc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/21] i915/display: split and constify
 vtable
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> This is orthogonal to my display ptr refactoring and should probably
> be applied first.

Yeah, overall nice cleanups, and a much easier bandwagon to jump onto
than the other one. ;)

Nothing too bad, a few bugs had crept in, and I had some nitpicks.

> The display funcs vtable was a bit of mess, lots of intermixing of
> internal display functionality and interfaces to watermarks/irqs.
>
> It's also considered not great security practice to leave writeable
> function pointers around for exploits to get into.

On the one hand I get this, but on the other hand the pointers to the
structs do remain writable. I suppose it increases the complexity of an
exploit by some margin?

In any case, I think this is cleaner in general, and that's enough merit
for the change, regardless of the security aspect.

BR,
Jani.

>
> This series attempts to address both problems, first there are a
> few cleanups, then it splits the function table into multiple pieces.
> Some of the splits might be bikesheds but I think we should apply first
> and merge things later if there is good reason.
>
> The second half converts all the vtables to static const structs,
> I've used macros in some of them to make it less messy, the cdclk
> one is probably the worst one.
>
> Dave.
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
