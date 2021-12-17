Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7CC478904
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:34:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AD710F405;
	Fri, 17 Dec 2021 10:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9128A10F405
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:34:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239952428"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239952428"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:34:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="466459983"
Received: from kmcgonig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.8.181])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:34:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jiri Slaby <jslaby@suse.cz>, Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <163967920689.14059.11070892850072821843@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211216115920.15981-1-jslaby@suse.cz>
 <163967920689.14059.11070892850072821843@emeril.freedesktop.org>
Date: Fri, 17 Dec 2021 12:34:26 +0200
Message-ID: <871r2b34gd.fsf@intel.com>
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

On Thu, 16 Dec 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: remove circ_buf.h includes
> URL   : https://patchwork.freedesktop.org/series/98130/
> State : warning
>
> == Summary ==
>
> $ dim checkpatch origin/drm-tip
> 24a5cb6b532c drm/i915: remove circ_buf.h includes
> -:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jiri Slaby <jirislaby@kernel.org>' != 'Signed-off-by: Jiri Slaby <jslaby@suse.cz>'
>
> total: 0 errors, 1 warnings, 0 checks, 14 lines checked

Now, this is interesting. The patch email has no mention of
jirislaby@kernel.org.

However, .mailmap in kernel source root has line:

Jiri Slaby <jirislaby@kernel.org> <jslaby@suse.cz>

indicating that you prefer jirislaby@kernel.org. When I apply the patch,
git am looks that up, and sets:

Author: Jiri Slaby <jirislaby@kernel.org>

With that, we end up with an Author/Signed-off-by mismatch.

If you prefer Jiri Slaby <jirislaby@kernel.org>, I think you should have
that in git config too.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
