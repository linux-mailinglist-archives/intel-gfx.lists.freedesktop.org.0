Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F1267D26E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 18:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6029610E2A5;
	Thu, 26 Jan 2023 17:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336CE10E2A5;
 Thu, 26 Jan 2023 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674752564; x=1706288564;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QDNCFyn67JHad84Foo9+g6G5HbB2QnU+/YYE2n84txA=;
 b=E7+HPckZBRfi3Mdi25rUGrLIKkLzcKFjBl1uxoC5e5RbL8mxjQH3RmZa
 ecNsyNk7LpEgUB50P2nq4l80mQjg++kEilLgajWdH7VpiF4hOPYV3+ZeK
 LX5M4RaOSKjQ753VoxWG8LtpIcDoieOrMaEt7qQvzR5ppuPjUsQSI99I8
 QCnu4vDxYpwyTGzmCcOJSxE3NGxF56BCAHA3/gfHZwnjKgUWpc0bGpvR5
 ic+AB1ILszQOYYhRjliE0CpH2S9LKdmGt77/P39312euum6B1rLKlSZYK
 tyC8z0MilfHUX3bwA2Qxvy2TyGgWe6htdxb2a8p6i6fE3X2pzsTCujbEx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328974761"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="328974761"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 09:02:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="991716823"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="991716823"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 09:02:12 -0800
Date: Thu, 26 Jan 2023 18:02:09 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230126170209.5a5dqpqktal6jrjc@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20221111155844.3290531-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221111155844.3290531-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/8] Vendor agnostic gputop
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

Hi,

please rebase and resend, also please change commit subject to start
with lib: or lib/[name of lib changed]: rest od commit description

For example, in 3/8 instead of
libdrmclients: Record client drm minor
write:
lib/igt_drm_clients: Record client drm minor

If there are more lib changes, use "lib: " alone, for example
in your 2/8 patch,
libdrmfdinfo: Allow specifying custom engine map
write:
lib: Allow specifying custom engine map

+Cc Petri and Zbyszek

Regards,
Kamil

On 2022-11-11 at 15:58:36 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> This is a pile of patches which implements a rudimentary vendor agnostic gputop
> tool based of the new DRM spec as documented in
> Documentation/gpu/drm-usage-stats.rst.
> 
> First part of the series is code refactoring which should be reasonably stable.
> I've tested it all while working on it both against intel_gpu_top and gputop.
> 
> Last patch is the actual tool itself. It works but it is rather rudimentary
> which is hopefully good enough for a start.
> 
> Fundamental difference between intel_gpu_top and gputop is that the former is
> centered around a single card and only shows processes belonging to it. Gputop
> on the other hand has an idea to show all processes with DRM file descriptors
> open and sort them into groups per card. It also makes no effort to provide
> sorting modes, well any interactivity, or any pretty names for GPUs or engines.
> 
> It looks like this:
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> DRM minor 0
>     PID               NAME    render       copy       video
>     3816          kwin_x11 |███▎      ||          ||          ||          |
>     3523              Xorg |▊         ||          ||          ||          |
>  1120449               mpv |          ||          ||▋         ||          |
>  1120529          glxgears |▋         ||          ||          ||          |
>  1120449               mpv |▍         ||          ||          ||          |
>     3860       plasmashell |▏         ||          ||          ||          |
>     4764           krunner |          ||          ||          ||          |
>   575206            chrome |          ||          ||          ||          |
>   833481           firefox |          ||          ||          ||          |
>   892924       thunderbird |          ||          ||          ||          |
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> I did test it as well with two cards and confirmed that too works.
> 
> Rob Clark also tested it with a patch which exports the respective data from the
> msm driver and confirmed it works fine. Christian König tested it with in
> progress patches for amdgpu and that worked as well.
> 
> v2:
>  * Fixed SPDX headers and added a bunch of code comments/docs throughout.
> 
> Tvrtko Ursulin (8):
>   lib: Extract igt_drm_clients from intel_gpu_top
>   libdrmfdinfo: Allow specifying custom engine map
>   libdrmclients: Record client drm minor
>   libdrmclient: Support multiple DRM cards
>   libdrmfdinfo: Track largest engine index
>   libdrmclient/intel_gpu_top: Decouple hardcoded engine assumptions
>   libdrmclient: Enforce client status sort order in the library
>   gputop: Basic vendor agnostic GPU top tool
> 
>  lib/igt_drm_clients.c   | 503 +++++++++++++++++++++++++++++
>  lib/igt_drm_clients.h   |  87 ++++++
>  lib/igt_drm_fdinfo.c    |  50 ++-
>  lib/igt_drm_fdinfo.h    |  16 +-
>  lib/meson.build         |   8 +
>  tests/i915/drm_fdinfo.c |  19 +-
>  tools/gputop.c          | 260 +++++++++++++++
>  tools/intel_gpu_top.c   | 677 +++++++++++-----------------------------
>  tools/meson.build       |   7 +-
>  9 files changed, 1113 insertions(+), 514 deletions(-)
>  create mode 100644 lib/igt_drm_clients.c
>  create mode 100644 lib/igt_drm_clients.h
>  create mode 100644 tools/gputop.c
> 
> -- 
> 2.34.1
> 
