Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC9C7A1F81
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 15:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F1310E628;
	Fri, 15 Sep 2023 13:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B506610E62C;
 Fri, 15 Sep 2023 13:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694783217; x=1726319217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aYbsTTij8/7r4xzrGU0yYJLVYOtKvk1BoIVlZ3VttN0=;
 b=ZqNJzisp8sVayH7hRH0sp4t1v+dkJ7ZyaLMq9Cty1OvQRFmd6yTVdjSf
 99VZxXLlVU46gHKEB6hHryMjwpxrSwqlEZjZ3anKkQmOKceuQKAS4zHwV
 ZgLZ/MkIpmTw4ZjRKpGLes45yj42mBTVjCAGCgwzavn319SOo8b2jxdQq
 AhJ3NjiV8t2VU49Ba7U0gXix7PjQD94OHz/cASlZ9K/UFI484GK4F9OE1
 ui/icD6+4gWfIYf423Zyp3bo/IFZEOiRZWUAYTngnpWpa0C6dWKelASHh
 Z4xIoHdAwT1GDzBxwmSQszIY3rTksS9oDwGxy/8JEIc8r3FQOyrwL6Sl2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="378156148"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="378156148"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:06:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="835202434"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="835202434"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.6.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:06:54 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Date: Fri, 15 Sep 2023 15:06:51 +0200
Message-ID: <2652296.X9hSmTKtgW@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230915142524.28f67cf8@maurocar-mobl2>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <1838195.atdPhlSkOF@jkrzyszt-mobl2.ger.corp.intel.com>
 <20230915142524.28f67cf8@maurocar-mobl2>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?utf-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 15 September 2023 14:25:24 CEST Mauro Carvalho Chehab wrote:
> On Wed, 13 Sep 2023 16:04:10 +0200
> Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> 
> > On Monday, 11 September 2023 11:01:42 CEST Mauro Carvalho Chehab wrote:
> > > On Fri,  8 Sep 2023 14:32:41 +0200
> > > Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> > >   
> > > > While reading KTAP data from /dev/kmsg we now ignore interrupt signals
> > > > that may occur during read() and we continue reading the data.  No
> > > > explanation has been provided on what that could be needed for.  
> > > 
> > > The reason is that kunit module load takes seconds, as it only finishes
> > > loading after all tests are executed.
> > > 
> > > So, interrupting IGT won't interrupt the tests, and kmsg will still
> > > be filled by test results.
> > > 
> > > IMO, the right thing to do here is to ignore interrupts, as otherwise
> > > the logs for the next test will be polluted by the KTAP messages and
> > > the Kernel will be kept on an unstable state, as running tests while
> > > kUnit tests are running is not supported.  
> > 
> > Well, not really.  Please have a look at the following two log excerpts.  The 
> > first one is from a complete, not interrupted execution of drm_mm test:
> > 
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com sudo[15594]: jkrzyszt : TTY=pts/14 ; PWD=/home/jkrzyszt/build/igt ; USER=root ; COMMAND=./tests/drm_mm
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com sudo[15594]: pam_unix(sudo:session): session opened for user root(uid=0) by jkrzyszt(uid=1000)
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour dummy device 80x25
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: executing
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting subtest drm_mm_test
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_mm: Testing DRM range manager, with random_seed=0x5b01fc53 max_iterations=8192 max_prime=128
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     KTAP version 1
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # Subtest: drm_mm
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     1..19
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 1 drm_test_mm_init
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 2 drm_test_mm_debug
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_init
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_init, SUCCESS
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_debug
> > Sep 13 15:14:39 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_debug, SUCCESS
> > Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 3 drm_test_mm_reserve
> > Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 4 drm_test_mm_insert
> > Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_reserve
> > Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_reserve, SUCCESS
> > Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_insert
> > Sep 13 15:14:46 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_insert, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 5 drm_test_mm_replace
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 6 drm_test_mm_insert_range
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_replace
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_replace, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_insert_range
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_insert_range, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_test_mm_frag: bottom-up fragmented insert of 10000 and 20000 insertions took 6009658 and 13648333 nsecs
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_test_mm_frag: top-down fragmented insert of 10000 and 20000 insertions took 6518544 and 13824246 nsecs
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 7 drm_test_mm_frag
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 8 drm_test_mm_align
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 9 drm_test_mm_align32
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 10 drm_test_mm_align64
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_frag
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_frag, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_align
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_align, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_align32
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_align32, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_align64
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_align64, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 11 drm_test_mm_evict
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 12 drm_test_mm_evict_range
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_evict
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_evict, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_evict_range
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_evict_range, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 13 drm_test_mm_topdown
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 14 drm_test_mm_bottomup
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 15 drm_test_mm_lowest
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 16 drm_test_mm_highest
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_topdown
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_topdown, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_bottomup
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_bottomup, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_lowest
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_lowest, SUCCESS
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_highest
> > Sep 13 15:14:55 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_highest, SUCCESS
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 17 drm_test_mm_color
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 18 drm_test_mm_color_evict
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_color
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_color, SUCCESS
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_color_evict
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_color_evict, SUCCESS
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 19 drm_test_mm_color_evict_range
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: # drm_mm: pass:19 fail:0 skip:0 total:19
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: # Totals: pass:19 fail:0 skip:0 total:19
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: ok 1 drm_mm
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_color_evict_range
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_color_evict_range, SUCCESS
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm_test, SUCCESS
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com sudo[15594]: pam_unix(sudo:session): session closed for user root
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: exiting, ret=0
> > Sep 13 15:14:56 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour frame buffer device 240x75
> > 
> > You can see it took 17 seconds for the test to complete.  Now the same test 
> > but interrupted after 2 seconds:
> > 
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com sudo[15668]: pam_unix(sudo:session): session opened for user root(uid=0) by jkrzyszt(uid=1000)
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour dummy device 80x25
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: executing
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting subtest drm_mm_test
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # drm_mm: Testing DRM range manager, with random_seed=0xadd9af85 max_iterations=8192 max_prime=128
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     KTAP version 1
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     # Subtest: drm_mm
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     1..19
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 1 drm_test_mm_init
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 2 drm_test_mm_debug
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_init
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_init, SUCCESS
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: starting dynamic subtest drm_mm-drm_test_mm_debug
> > Sep 13 15:15:15 jkrzyszt-mobl2.ger.corp.intel.com unknown: [IGT] drm_mm: finished subtest drm_mm-drm_test_mm_debug, SUCCESS
> > Sep 13 15:15:17 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 3 drm_test_mm_reserve
> > Sep 13 15:15:17 jkrzyszt-mobl2.ger.corp.intel.com kernel: Console: switching to colour frame buffer device 240x75
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 4 drm_test_mm_insert
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 5 drm_test_mm_replace
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 6 drm_test_mm_insert_range
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 7 drm_test_mm_frag
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 8 drm_test_mm_align
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 9 drm_test_mm_align32
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 10 drm_test_mm_align64
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 11 drm_test_mm_evict
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 12 drm_test_mm_evict_range
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 13 drm_test_mm_topdown
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 14 drm_test_mm_bottomup
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 15 drm_test_mm_lowest
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 16 drm_test_mm_highest
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 17 drm_test_mm_color
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 18 drm_test_mm_color_evict
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel:     ok 19 drm_test_mm_color_evict_range
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel: # drm_mm: pass:19 fail:0 skip:0 total:19
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel: # Totals: pass:19 fail:0 skip:0 total:19
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com kernel: ok 1 drm_mm
> > Sep 13 15:15:22 jkrzyszt-mobl2.ger.corp.intel.com sudo[15668]: pam_unix(sudo:session): session closed for user root
> > 
> > When you compare timestamps, you can see that kunit layer reported an OK 
> > result from test case 3 drm_test_mm_reserve two seconds after a result from 
> > test case 2 drm_test_mm_debug, presumably as soon as user interrupt occurred, 
> > while it took ca. 7 seconds before.  We can also see that the process tried to 
> > exit, but a still running despite interrupted modprobe thread prevented it 
> > from exiting before modprobe completion.  Moreover, we can see an OK result 
> > from test case 4 drm_test_mm_insert now appeared after 7 seconds, presumably 
> > after test case 3 actually completed, and OK results from remaining test cases 
> > appeared immediately thereafter, and module loading completed within those ca. 
> > 7 seconds.  All those OK results that appeared after the test was interrupted 
> > were then wrong, however, they were not converted to any IGT results, which is 
> > fine.
> 
> The problem will happen if another test starts afterwards.
> 
> E. g. if you call a testset with something like (untested):
> 
> 	./build/runner/igt_runner --per-test-timeout 2
> 
> The test which takes 7 seconds will be interrupted, and the next
> test will start running while the "aborted" one will still run.

As you can see, a message from completion of sudo, designating actual 
completion of the IGT test process called via that sudo, appeared after  
reporting from the kunit test module (then loading the module) had completed. 
Then, no next IGT test would have had a chance to be called from the same 
caller (igt_runner process) before that one completed, I believe.  Situation 
could be different if we used a modprobe sub-process, but here we created a 
thread that loaded the module via libkmod, then the main process thread 
couldn't terminate as longs as the modprobe thread didn't complete yet.

With this patch positioned in this series before we start loading the module 
from a separate thread, that was even more simple since we were calling 
kmod_module_probe_insert_module() from the main process.  The test just waited 
for completion of that function call, and that could happen only after the 
kernel side processing completed.  Then the KTAP parser thread was terminated 
by the main one via dropping is_running flag.

Anyway, speaking of this patch, as long as we use default signal handler 
for SIGINT that terminates the process and all its threads, special handling 
of errno == EINTR on read() failure is pointless, I believe.  I'll propose to 
drop that completely in next version of this patch.

Thanks,
Janusz

> 
> Regards,
> Mauro
> 
> 




