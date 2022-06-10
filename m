Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086A9545931
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 02:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEB110FE52;
	Fri, 10 Jun 2022 00:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4405D10FE52
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 00:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654821232; x=1686357232;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=ZP9ivb8IClW2sbfddRDBMtEYv0Om+lTtVhXTp3TihFM=;
 b=iShGs/gEpqujhThEEL9fWAmIqQeHwNbvOxIkMmGfYbYqnuxKGp0EpZO+
 rOTJkRiwQ0lit/7rwRuZhs/zWbuWoVJNK5KCmlZB3JQIZM8SnhNohDHOj
 euHKpU0dCSbWzkGfLIcl0pvu+3SBPAmjgUxffIa1Xm43XOhg53HgR29i5
 cw+m80lLhtn+VYzEDWRZy1UZiyx23sjthMpAja7tBeO7Xih4AL5oqwSwX
 xkWPUSwI1Oa3JTJrQeQJdOfXObK5Yd4aE67is7qTPY5gc8oBqPD/JflNv
 rKUtRniBR6tk71wUxhoxur/tTtkqhRA2nOq/lwDPz/wNZcxjAM3x7Wiux w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="278273647"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="278273647"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 17:33:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="671584484"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 17:33:51 -0700
Date: Thu, 9 Jun 2022 17:33:51 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220610003351.GB48807@orsosgc001.jf.intel.com>
References: <20220610002454.945126-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220610002454.945126-1-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] For execlists backend,
 current implementation of Wa_22011802037 is to stop the CS before
 doing a reset of the engine. This WA was further extended to wait for any
 pending MI FORCE WAKEUPs before issuing a reset. Add the extended steps in
 the execlist path of reset.
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

Commit title messed up, please ignore this one.

Umesh

On Thu, Jun 09, 2022 at 05:24:54PM -0700, Nerlige Ramappa, Umesh wrote:
>From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>In addition, extend the WA to gen11.
>
>v2: (Tvrtko)
>- Clarify comments, commit message, fix typos
>- Use IS_GRAPHICS_VER for gen 11/12 checks
>
>v3: (Daneile)
>- Drop changes to intel_ring_submission since WA does not apply to it
>- Log an error if MSG IDLE is not defined for an engine
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Fixes: f6aa0d713c88 ("drm/i915: Add Wa_22011802037 force cs halt")
>Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
