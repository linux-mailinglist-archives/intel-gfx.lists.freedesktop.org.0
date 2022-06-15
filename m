Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F402B54C9BE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 15:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5F110E973;
	Wed, 15 Jun 2022 13:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98DC610E973
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 13:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655299692; x=1686835692;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kxpBoyv8ZZN01qEyLeUMt4lnYWB3QktD+4WkfsApWxs=;
 b=LFkD0QFdtbsCe6yjckRoASG47WIaAtgh8ayJ69Y4L/JLOY4M00HmeVZF
 /ecvh23IGdrLBXtkFL5njFrZnLxkiqVu9bUOsc3RQVLp4edLWIMfcLK2b
 nHLqA5KIm9Wyho9Ne/MY9KIzRCQ7w4uPqrgPhaNp/oZBnCqGVYu5fzKNW
 oOUpt7QfLUUz8VxKdQsTdWuITxXWy7wk8WjXpGjvs6LzVVdtVx5CYsrW1
 cy9ZWK7mXrQUKQKYzaq9pummrClyK392eAHAph4aYnBz2nc0qXMCnTQHx
 u8DASfGT0R/bpdG0hSL+fV1PES4huuBSfWN9YvZRaJKkYsevJUlXCCYNo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="276532016"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="276532016"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 06:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="571949795"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 15 Jun 2022 06:28:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 16:27:59 +0300
Date: Wed, 15 Jun 2022 16:27:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YqneX9G0VVDqJvYC@intel.com>
References: <cover.1655297182.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1655297182.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/display: split out verifation,
 compare and dump from intel_display.c
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

On Wed, Jun 15, 2022 at 03:47:54PM +0300, Jani Nikula wrote:
> The state verification and pipe config comparison/dumping are fairly
> isolated pieces of code within intel_display.c. Move them to separate
> files in a long overdue cleanup.
> 
> Jani Nikula (7):
>   drm/i915/wm: move wm state verification to intel_pm.c
>   drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
>   drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
>   drm/i915/mpllb: move mpllb state check to intel_snps_phy.c

I'd perhaps go for foo_state_verify() naming convention. Would
match the foo_state_dump() naming convention I suggested
for the dumping stuff.

Apart from that these ^ four are
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>   drm/i915/display: split out modeset verification code

I really hate some of that code. I guess hiding it is one option :P
This one ^ is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>   drm/i915/display: split out pipe config compare to a separate file

Not entirely sure I like moving this one. The fastset stuff
within needs to stay in sync with the fastset codepaths which
are in intel_display.c. Not sure if we risk more bugs if it's
too well hidden...

>   drm/i915/display: split out pipe config dump to a separate file
> 
>  drivers/gpu/drm/i915/Makefile                 |    3 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 1373 +----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |    3 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 ++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
>  .../drm/i915/display/intel_modeset_verify.c   |  247 +++
>  .../drm/i915/display/intel_modeset_verify.h   |   21 +
>  .../i915/display/intel_pipe_config_compare.c  |  581 +++++++
>  .../i915/display/intel_pipe_config_compare.h  |   17 +
>  .../drm/i915/display/intel_pipe_config_dump.c |  314 ++++
>  .../drm/i915/display/intel_pipe_config_dump.h |   16 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
>  drivers/gpu/drm/i915/intel_pm.c               |  138 +-
>  drivers/gpu/drm/i915/intel_pm.h               |   14 +-
>  15 files changed, 1482 insertions(+), 1386 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compare.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compare.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump.h
> 
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
