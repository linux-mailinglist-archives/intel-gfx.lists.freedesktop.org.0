Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532A550BE63
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 19:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C1910E4BC;
	Fri, 22 Apr 2022 17:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C1B10E4BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 17:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650647552; x=1682183552;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=X2C1wRW94C3LPFIJUAPNYGEZqFMtDqmUvYw+Ptjc1L0=;
 b=hu8xZsRf7emt+j6BiHdwxIY5X0f9Y3mvJvZvnu2kK54hYbcoNe6jU44F
 JSmnojh5USZwqmu1sFtA14DZM0QhEkaqFZfcWIWGa9caVo9Q5DjiyvT4+
 M38occdhmRlsMecc16TTSh0NU1RggwEXNPh9fZGHPmtXhzYn8q/zu28Wx
 UdPAIxjonD0QSbLbFs3VLxc2UDlJG8GpJ2lvo16wf/maClBNw1n+quPFn
 vq/clliYKwc4igMFIJeVeMoIDXfiDEpanLYNuvJW+WFYGm9QY67zNNKnM
 tLRqAJNnt9v2eR5I5rEJu+XBsYLye42fLl8szvjIefEzfxOdGNtl11nRt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="252062632"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="252062632"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:12:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="615489328"
Received: from skosara1-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.54.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:12:30 -0700
Date: Fri, 22 Apr 2022 10:12:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220422171229.vartakhwpq4husna@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220422165535.3952178-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220422165535.3952178-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] i915: Add first set of DG2 PCI IDs
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 22, 2022 at 09:55:35AM -0700, Matt Roper wrote:
>The IDs added here are the subset reserved for 'motherboard down'
>designs of DG2.  We have all the necessary support upstream to enable
>these now (although they'll continue to require force_probe until the
>usual requirements are met).

Main requirement for keeping the PCI IDs out was the needed uapi
changes. Did they all land already? If so can we mention that explicitly
in the commit message?


>
>The remaining DG2 IDs for add-in cards will come in a future patch once
>some additional required functionality has fully landed.
>
>Bspec: 44477
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Daniel Vetter <daniel@ffwll.ch>
>Cc: Dave Airlie <airlied@gmail.com>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
>
>These IDs already exist in drm-tip via the topic/core-for-CI branch, so
>I've based this patch on drm-intel-next (where we intend to land it)
>instead of drm-tip.


but they are not the same. Maybe having 2 patches on drm-tip with a
revert + this patch would be better, so this can also have a chance to
go through CI.

Lucas De Marchi
