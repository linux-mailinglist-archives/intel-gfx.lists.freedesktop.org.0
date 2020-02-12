Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2197615AB06
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 15:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 195BB6EAC7;
	Wed, 12 Feb 2020 14:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A2E6F40E;
 Wed, 12 Feb 2020 14:33:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 06:33:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="266686327"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga002.fm.intel.com with ESMTP; 12 Feb 2020 06:33:10 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j1t4f-0003fr-8A; Wed, 12 Feb 2020 16:33:09 +0200
Date: Wed, 12 Feb 2020 16:33:09 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200212143309.GS25209@platvala-desk.ger.corp.intel.com>
References: <20200127121818.2492460-1-chris@chris-wilson.co.uk>
 <20200127121818.2492460-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127121818.2492460-4-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/5] i915: Exercise sysfs
 heartbeat controls
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 27, 2020 at 12:18:17PM +0000, Chris Wilson wrote:
> We [will] expose various per-engine scheduling controls. One of which,
> 'heartbeat_duration_ms', defines how often we send a heartbeat down the
> engine to check upon the health of the engine. If a heartbeat does not
> complete within the interval (or two), the engine is declared hung.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/Makefile.sources                |   3 +
>  tests/i915/sysfs_heartbeat_interval.c | 466 ++++++++++++++++++++++++++
>  tests/meson.build                     |   1 +
>  3 files changed, 470 insertions(+)
>  create mode 100644 tests/i915/sysfs_heartbeat_interval.c
> 
> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index fc9e04e97..fd6f67a73 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -102,6 +102,9 @@ TESTS_progs = \
>  	vgem_slow \
>  	$(NULL)
>  
> +TESTS_progs += sysfs_heartbeat_interval
> +sysfs_heartbeat_interval_SOURCES = i915/sysfs_heartbeat_interval

Another missing .c


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
