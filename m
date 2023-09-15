Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEA97A1EA5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 14:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D1E10E150;
	Fri, 15 Sep 2023 12:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ECE510E150;
 Fri, 15 Sep 2023 12:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694780730; x=1726316730;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MeYKxlpTFeSWNDmvJ1Y+8hh+ArDDhQNNENFHnUD27Eo=;
 b=O61rm4BLK2T5yOXdgPxAekhapq0AXEG8EEd06r4Q2BY2dP/641PjC4n0
 dgJI6xtzknYJkMl4M4uNRGZdHpDsREULFCAUkl7Fu5NI9BTi9uJA3jyH4
 piPcz2dU4GyN5G+le5oMy1HUnuqRNllvKc9gLUbDcLmjXJcn7ddsgex/U
 5MJNU281qXcLgJKb7qSHR/WBWqNGG7OS/lkh283UUXFUEBaeCZo26eEB/
 YSmG7NGnAmS6bXrXiRgm9rk+A45tREDesXW+BHjm8ue9JvtYRtKKXruTx
 /Hu0nH9bxtcdNo658si10QZ3QY9OCtIzYDVaK1bWxhip8EXZGc/o63uKl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="381964003"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="381964003"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 05:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="744972623"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="744972623"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 05:25:29 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 7B4DE580D1F;
 Fri, 15 Sep 2023 05:25:27 -0700 (PDT)
Date: Fri, 15 Sep 2023 14:25:24 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915142524.28f67cf8@maurocar-mobl2>
In-Reply-To: <1838195.atdPhlSkOF@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-26-janusz.krzysztofik@linux.intel.com>
 <20230911110142.04abc143@maurocar-mobl2>
 <1838195.atdPhlSkOF@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 07/17] lib/ktap: Don't ignore
 interrupt signals
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?UTF-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 13 Sep 2023 16:04:10 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> On Monday, 11 September 2023 11:01:42 CEST Mauro Carvalho Chehab wrote:
> > On Fri,  8 Sep 2023 14:32:41 +0200
> > Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> >   
> > > While reading KTAP data from /dev/kmsg we now ignore interrupt signals
> > > that may occur during read() and we continue reading the data.  No
> > > explanation has been provided on what that could be needed for.  
> > 
> > The reason is that kunit module load takes seconds, as it only finishes
> > loading after all tests are executed.
> > 
> > So, interrupting IGT won't interrupt the tests, and kmsg will still
> > be filled by test results.
> > 
> > IMO, the right thing to do here is to ignore interrupts, as otherwise
> > the logs for the next test will be polluted by the KTAP messages and
> > the Kernel will be kept on an unstable state, as running tests while
> > kUnit tests are running is not supported.  
> 
> Well, not really.  Please have a look at the following two log excerpts.  The 
> first one is from a complete, not interrupted execution of drm_mm test:
> 
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com sudo[15594]: jkrzyszt : TTY=pts/14 ; PWD=/home/jkrzyszt/build/igt ; USER=root ; COMMAND=./tests/drm_mm
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com sudo[15594]: pam_unix(sudo:session): session opened for user root(uid=0) by jkrzyszt(uid=1000)
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour dummy device 80x25
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: executing
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting subtest drm_mm_test
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_mm: Testing DRM range manager, with random_seed=0x5b01fc53 max_iterations=8192 max_prime=128
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     KTAP version 1
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # Subtest: drm_mm
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     1..19
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 1 drm_test_mm_init
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 2 drm_test_mm_debug
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_init
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_init, SUCCESS
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_debug
> Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_debug, SUCCESS
> Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 3 drm_test_mm_reserve
> Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 4 drm_test_mm_insert
> Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_reserve
> Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_reserve, SUCCESS
> Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_insert
> Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_insert, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 5 drm_test_mm_replace
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 6 drm_test_mm_insert_range
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_replace
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_replace, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_insert_range
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_insert_range, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_test_mm_frag: bottom-up fragmented insert of 10000 and 20000 insertions took 6009658 and 13648333 nsecs
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_test_mm_frag: top-down fragmented insert of 10000 and 20000 insertions took 6518544 and 13824246 nsecs
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 7 drm_test_mm_frag
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 8 drm_test_mm_align
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 9 drm_test_mm_align32
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 10 drm_test_mm_align64
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_frag
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_frag, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_align
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_align, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_align32
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_align32, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_align64
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_align64, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 11 drm_test_mm_evict
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 12 drm_test_mm_evict_range
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_evict
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_evict, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_evict_range
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_evict_range, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 13 drm_test_mm_topdown
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 14 drm_test_mm_bottomup
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 15 drm_test_mm_lowest
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 16 drm_test_mm_highest
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_topdown
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_topdown, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_bottomup
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_bottomup, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_lowest
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_lowest, SUCCESS
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_highest
> Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_highest, SUCCESS
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 17 drm_test_mm_color
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 18 drm_test_mm_color_evict
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_color
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_color, SUCCESS
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_color_evict
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_color_evict, SUCCESS
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 19 drm_test_mm_color_evict_range
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: # drm_mm: pass:19 fail:0 skip:0 total:19
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: # Totals: pass:19 fail:0 skip:0 total:19
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: ok 1 drm_mm
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_color_evict_range
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_color_evict_range, SUCCESS
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm_test, SUCCESS
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com sudo[15594]: pam_unix(sudo:session): session closed for user root
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: exiting, ret=0
> Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour frame buffer device 240x75
> 
> You can see it took 17 seconds for the test to complete.  Now the same test 
> but interrupted after 2 seconds:
> 
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com sudo[15668]: pam_unix(sudo:session): session opened for user root(uid=0) by jkrzyszt(uid=1000)
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour dummy device 80x25
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: executing
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting subtest drm_mm_test
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_mm: Testing DRM range manager, with random_seed=0xadd9af85 max_iterations=8192 max_prime=128
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     KTAP version 1
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # Subtest: drm_mm
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     1..19
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 1 drm_test_mm_init
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 2 drm_test_mm_debug
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_init
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_init, SUCCESS
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_debug
> Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_debug, SUCCESS
> Sep 13 15:15:17 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 3 drm_test_mm_reserve
> Sep 13 15:15:17 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour frame buffer device 240x75
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 4 drm_test_mm_insert
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 5 drm_test_mm_replace
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 6 drm_test_mm_insert_range
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 7 drm_test_mm_frag
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 8 drm_test_mm_align
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 9 drm_test_mm_align32
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 10 drm_test_mm_align64
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 11 drm_test_mm_evict
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 12 drm_test_mm_evict_range
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 13 drm_test_mm_topdown
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 14 drm_test_mm_bottomup
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 15 drm_test_mm_lowest
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 16 drm_test_mm_highest
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 17 drm_test_mm_color
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 18 drm_test_mm_color_evict
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 19 drm_test_mm_color_evict_range
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel: # drm_mm: pass:19 fail:0 skip:0 total:19
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel: # Totals: pass:19 fail:0 skip:0 total:19
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel: ok 1 drm_mm
> Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com sudo[15668]: pam_unix(sudo:session): session closed for user root
> 
> When you compare timestamps, you can see that kunit layer reported an OK 
> result from test case 3 drm_test_mm_reserve two seconds after a result from 
> test case 2 drm_test_mm_debug, presumably as soon as user interrupt occurred, 
> while it took ca. 7 seconds before.  We can also see that the process tried to 
> exit, but a still running despite interrupted modprobe thread prevented it 
> from exiting before modprobe completion.  Moreover, we can see an OK result 
> from test case 4 drm_test_mm_insert now appeared after 7 seconds, presumably 
> after test case 3 actually completed, and OK results from remaining test cases 
> appeared immediately thereafter, and module loading completed within those ca. 
> 7 seconds.  All those OK results that appeared after the test was interrupted 
> were then wrong, however, they were not converted to any IGT results, which is 
> fine.

The problem will happen if another test starts afterwards.

E. g. if you call a testset with something like (untested):

	./build/runner/igt_runner --per-test-timeout 2

The test which takes 7 seconds will be interrupted, and the next
test will start running while the "aborted" one will still run.

Regards,
Mauro

