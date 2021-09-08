Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E56B040396F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 14:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E75B6E194;
	Wed,  8 Sep 2021 12:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8196E194
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 12:04:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="207577020"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="207577020"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:04:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="547695773"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:04:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Dave Airlie <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <163106426447.22225.70715918137751196@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <163106426447.22225.70715918137751196@emeril.freedesktop.org>
Date: Wed, 08 Sep 2021 15:04:29 +0300
Message-ID: <87r1dz46k2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGk5?=
 =?utf-8?q?15/display=3A_split_and_constify_vtable?=
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

On Wed, 08 Sep 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: i915/display: split and constify vtable
> URL   : https://patchwork.freedesktop.org/series/94459/
> State : warning
>
> == Summary ==
>
> $ make htmldocs 2>&1 > /dev/null | grep i915
> ./drivers/gpu/drm/i915/display/intel_display.c:164: warning: Excess function parameter 'crtc' description in 'intel_update_watermarks'

Seems legit, please update the kernel-doc.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
