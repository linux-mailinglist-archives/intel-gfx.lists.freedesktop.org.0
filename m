Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C702C700EA1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 20:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E01610E260;
	Fri, 12 May 2023 18:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA90210E256
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 18:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683915702; x=1715451702;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eQunNdVHH7rmdQBGLYdLV5B+uOqfCpcAjBZGpGNU6BU=;
 b=EAWDLoRHtDqbX0w88jx6ApNOmSg1jfb4+esybVZwIoynHcbV+3ebycU0
 GeXUvXVdPgoZeF4+RED3BP06rbgHmKjmhJCJ5Q0Hy+GBnVWhkvdW4WDmj
 cdNB0owm0ELNdKR+y/1ddfJQwD0R5dr99DYyWNdqhdXATXRVA5VppO1b9
 1y7eZC8F5fz1FoeepBFOZIoy0m42/2+MOXnuDUqO+TvKhJopqjiLWFFe9
 DpFI6XBy8AGx8OuTSUPc+3gsqWZLyHJHzrJpf+9QZ5UwJoBc9nsZFmmqb
 kLknKaiE1QOM1iyvjAoPJMBtovcv29mWehyjbrgkoPPFmucYD9xBuZL6I Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="414233374"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="414233374"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 11:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="733140854"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="733140854"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 11:21:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168389933649.81732.10815246258922734589@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230512102310.1398406-1-jani.nikula@intel.com>
 <20230512102310.1398406-3-jani.nikula@intel.com>
 <168389933649.81732.10815246258922734589@gjsousa-mobl2>
Date: Fri, 12 May 2023 21:21:36 +0300
Message-ID: <87fs81jtqn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/irq: split out display irq
 handling
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

On Fri, 12 May 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-05-12 07:23:10)
>>Split (non-hotplug) display irq handling out of i915_irq.[ch] into
>>display/intel_display_irq.[ch].
>>
>>v2:
>>- Rebase
>>- Preserve [I915_MAX_PIPES] in functions (kernel test robot)
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


>>+void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
>
> I guess this one slipped out when fixing the error diagnosed by "-Werror=array-parameter=".

Indeed, *facepalm*. I'm still rolling with gcc 10, and I believe that
was introduced in gcc 11.

> Used "git show --color-moved ..." to help me review this one and changes look
> sane to me. With the above fixed,
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
