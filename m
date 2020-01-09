Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62678135A5F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 14:40:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E5B89CA0;
	Thu,  9 Jan 2020 13:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EB389B60;
 Thu,  9 Jan 2020 13:40:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 05:40:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="211895584"
Received: from oshaughx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.9.128])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 05:40:02 -0800
MIME-Version: 1.0
In-Reply-To: <20200109133458.GA15558@jlahtine-desk.ger.corp.intel.com>
References: <20200109133458.GA15558@jlahtine-desk.ger.corp.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 09 Jan 2020 15:39:59 +0200
Message-ID: <157857719986.15638.7102885260007212765@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Joonas Lahtinen (2020-01-09 15:34:58)
> Hi Dave & Daniel,
> 
> Happy New Year, now back from the holiday break.
> 
> A bunch of important fixes. Further fixes for the power/perf
> regressions caused by the past security fixes. Then fix for
> user reported GPU hang regression. Revert to avoid screen flicker
> caused by HDA audio. Then missing two W/A and uninitialized uAPI
> variable fix.

Forgot to mention:

Fix for GitLab issue #5: Avoid multiple WARN_ON on 2p2c display teardown

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
