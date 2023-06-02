Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4940B720819
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 19:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B2610E209;
	Fri,  2 Jun 2023 17:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B7710E209
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 17:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685725383; x=1717261383;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JESbA4rHrGMWy9OHgzsRKK5dn+cEpD3fTpO+7ZhIJR0=;
 b=GAWDvxeof6qjw3zD0EYddgynQBkGDO9H5ea2RBamvgoMPr2UKClKRG84
 aOVIaFLBnNXadDI5d2IF1nCSVZzSicOmZDZ6pMilpYl78KQZUuc7PhNzv
 gjtuzELULQC4dSB2rxMi4fv4EMo+i4mkFOpl9inQtonygGb+LSrjshKLe
 Ge6/6H/NvIi107p2sjvUZ3o8Z56lBzYHoBDoQdfxb/c16HzB/aD1gTcWI
 y0iUQ5grBtsOMK6h3M97kAPHzaVWtUdCk2iYf45zXMuBx/C7n3pMWizay
 zouR56AAefGmAfhbHc5FlH3QSNyz0YfV/wNsx5UFngFzTNLOneJlJgy4p Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="358348171"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="358348171"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="740881921"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="740881921"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:03:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zhi Wang <zhi.wang.linux@gmail.com>
In-Reply-To: <168555222135.17615.4107362582795659089@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531020411.18987-1-zhi.a.wang@intel.com>
 <168555222135.17615.4107362582795659089@emeril.freedesktop.org>
Date: Fri, 02 Jun 2023 20:02:58 +0300
Message-ID: <87h6rpdcfx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_remove_unused_variable_gma=5Fbottom_in_comm?=
 =?utf-8?q?and_parser_=28rev2=29?=
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

On Wed, 31 May 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/gvt: remove unused variable gma_bottom in command parser (rev2)
> URL   : https://patchwork.freedesktop.org/series/118512/
> State : warning
>
> == Summary ==
>
> Error: dim checkpatch failed
> c6878ab01be9 drm/i915/gvt: remove unused variable gma_bottom in command parser
> -:63: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Zhi Wang <zhi.wang.linux@gmail.com>' != 'Signed-off-by: Zhi Wang <zhi.a.wang@intel.com>'

I can fix this while applying, but please indicate whether you intended
to have From: Zhi Wang <zhi.a.wang@intel.com> or Signed-off-by: Zhi Wang
<zhi.wang.linux@gmail.com>.

BR,
Jani.

>
> total: 0 errors, 1 warnings, 0 checks, 30 lines checked
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
