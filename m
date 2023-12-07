Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8A28085D0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 11:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE6810E84B;
	Thu,  7 Dec 2023 10:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2DC010E84B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 10:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701946421; x=1733482421;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=G6dO/c3Hns+FGX3JgfWT7SyVq5Vq67IiJcPfT36EUfw=;
 b=IkDu6FCB7sfCjpfDMx3E8bP9HtP1h6IscbMyzSWI6RqTdoa5iktIW1Uo
 g6IdP3IOBJtrWVrA2JezWFa9Rz36fQfMHlDhNd8ViSq48mjdbhJO3iT1Z
 L6NsBm0mE6mpUXmR/9noq2mUBRI+CHIqG6sD5ES/E0C4fcR7BFYqixo2t
 EvLk2hD5ka2XOaAfRYR2LQAtKps/hIOn+esrZjpz3QWkNGMJBZZ1EWCOH
 CtHRTEqVue4Tml7dkXh1aJ8XJSNejzKxmgaGUG6JtE0adMnyzmxIEaQbj
 axBtuH3Ek7WEakXTf46tPU34agUDzusAdx49unohmS7c+YqN/Q6itvMnG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="374378173"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="374378173"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:53:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="800691788"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="800691788"
Received: from mrehana-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.169])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:53:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpm: add rpm_to_i915() helper
 around container_of()
In-Reply-To: <ZW8mCplE1snfrE4k@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231205121545.2338665-1-jani.nikula@intel.com>
 <ZW8mCplE1snfrE4k@intel.com>
Date: Thu, 07 Dec 2023 12:53:36 +0200
Message-ID: <877clq1dxr.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 Dec 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Dec 05, 2023 at 02:15:45PM +0200, Jani Nikula wrote:
>> Reduce the duplication.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
