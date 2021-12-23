Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADE447E1CA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 11:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9136010E157;
	Thu, 23 Dec 2021 10:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6938D10E12D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 10:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640256771; x=1671792771;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=87s1NwBZX7ng/TvhKSGNn9+LVrKjai7hrrXTXYSOsLA=;
 b=ldtItyDOAEXV4BQohC1IEEsfVDIxsH0LaHRdFbk1I33vGcto2l2UKRde
 V8H7Qu61kICFZ0OyhgT7dZPEZK26TzWyfC7CHmyxw078LWg2nu9aYe74o
 CeexVrtGg/9M7B/88fvQPf1RJnnh1qmF6CZtly8roJv1D8lQZuIzFTxHI
 vqhx6C0lJ7IJzl6Ok/6+3vCDneMNXZ2h5dqCMVfntgnudM2D6goE+BFtK
 bBeAk5WZqeo0f0FPvEmFwvA2iENboPi4e9RyGsFCYNcIqNfYZSIh4om6R
 bwrKGvmjq9gMHomlcTHAy5j1rePvXUeLV92RluwZ/LyInRaursoDIfB6b Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="327113095"
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="327113095"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 02:52:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="617455093"
Received: from ramurray-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.23.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 02:52:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jiri Slaby <jslaby@suse.cz>, Jiri Slaby <jirislaby@kernel.org>, Daniel
 Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <871r2b34gd.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211216115920.15981-1-jslaby@suse.cz>
 <163967920689.14059.11070892850072821843@emeril.freedesktop.org>
 <871r2b34gd.fsf@intel.com>
Date: Thu, 23 Dec 2021 12:52:45 +0200
Message-ID: <87ilvfy4n6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_remove_circ=5Fbuf=2Eh_includes?=
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

On Fri, 17 Dec 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 16 Dec 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> == Series Details ==
>>
>> Series: drm/i915: remove circ_buf.h includes
>> URL   : https://patchwork.freedesktop.org/series/98130/
>> State : warning
>>
>> == Summary ==
>>
>> $ dim checkpatch origin/drm-tip
>> 24a5cb6b532c drm/i915: remove circ_buf.h includes
>> -:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jiri Slaby <jirislaby@kernel.org>' != 'Signed-off-by: Jiri Slaby <jslaby@suse.cz>'
>>
>> total: 0 errors, 1 warnings, 0 checks, 14 lines checked
>
> Now, this is interesting. The patch email has no mention of
> jirislaby@kernel.org.
>
> However, .mailmap in kernel source root has line:
>
> Jiri Slaby <jirislaby@kernel.org> <jslaby@suse.cz>
>
> indicating that you prefer jirislaby@kernel.org. When I apply the patch,
> git am looks that up, and sets:
>
> Author: Jiri Slaby <jirislaby@kernel.org>
>
> With that, we end up with an Author/Signed-off-by mismatch.
>
> If you prefer Jiri Slaby <jirislaby@kernel.org>, I think you should have
> that in git config too.

Ping.


-- 
Jani Nikula, Intel Open Source Graphics Center
