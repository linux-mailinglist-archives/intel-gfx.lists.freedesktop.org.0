Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6827186B51
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 13:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C876E0F3;
	Mon, 16 Mar 2020 12:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6E66E0F3;
 Mon, 16 Mar 2020 12:46:25 +0000 (UTC)
IronPort-SDR: r/bK1DEu/ecQL/2cUT/1jcqt/pORpdLj80uw95DpZOLm9EPJTkOb0kk7iZag629s5ZwxpnsOdP
 EfvVtoxZVMFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 05:46:24 -0700
IronPort-SDR: 33CZ9EEz4LGxRCuWqvJ81ASl1SviHDIIsPVuAzDLvIC8qniB5yO+rMntnJtR9jXEG5Eu8xBcag
 poCruNj8I+WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="262661098"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga002.jf.intel.com with ESMTP; 16 Mar 2020 05:46:23 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jDp8Q-0006au-8t; Mon, 16 Mar 2020 14:46:22 +0200
Date: Mon, 16 Mar 2020 14:46:22 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200316124622.GE9497@platvala-desk.ger.corp.intel.com>
References: <20200316105427.517192-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316105427.517192-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] intel-ci: Tweak blacklist for
 very long running stability tests
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

On Mon, Mar 16, 2020 at 10:54:26AM +0000, Chris Wilson wrote:
> To exclude yynamic tests just use  their group name?

Yes, the igt_subtest_with_dynamic("somename") macro creates a subtest
entry point just like igt_subtest, for the purposes of testlists and
blacklists.


> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Petri Latvala <petri.latvala@intel.com>
> ---
>  tests/intel-ci/blacklist.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
> index 948b47569..184c23c37 100644
> --- a/tests/intel-ci/blacklist.txt
> +++ b/tests/intel-ci/blacklist.txt
> @@ -60,9 +60,9 @@ igt@gem_sync@(?!.*basic).*
>  igt@gem_tiled_swapping@(?!non-threaded).*
>  igt@gem_userptr_blits@(major|minor|forked|mlocked|swapping).*
>  igt@gem_wait@.*hang.*
> -igt@sysfs_heartbeat_timeout@long.*
> -igt@sysfs_preemption_timeout@off.*
> -igt@sysfs_timeslice_duration@off.*
> +igt@sysfs_heartbeat_timeout@long
> +igt@sysfs_preemption_timeout@off
> +igt@sysfs_timeslice_duration@off

Please fix the test names along with this change. I spent some minutes
trying to figure out what changes, before I realized
sysfs_heartbeat_timeout doesn't exist. It's
sysfs_heartbeat_interval. sysfs_preemption_timeout is
sysfs_preempt_timeout.

Ways to doublecheck:

igt_runner -L -t igt@sysfs_heartbeat_timeout@long build/tests

igt_runner -L -b tests/intel-ci/blacklist.txt build/tests

https://patchwork.freedesktop.org/series/74263/


Acked-by: Petri Latvala <petri.latvala@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
