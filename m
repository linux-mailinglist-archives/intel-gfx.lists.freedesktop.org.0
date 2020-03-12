Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1583182F78
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC68E6E1B3;
	Thu, 12 Mar 2020 11:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7ACE56E1B3;
 Thu, 12 Mar 2020 11:43:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 721FFA0091;
 Thu, 12 Mar 2020 11:43:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 12 Mar 2020 11:43:07 -0000
Message-ID: <158401338744.4947.6615467917003574185@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_GitLab=2EPipeline=3A_warning_for?=
 =?utf-8?q?_series_starting_with_=5Bv2=2C1/3=5D_lib/i915/perf=3A_remove_ge?=
 =?utf-8?q?neration_code_for_mathml_render?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/3] lib/i915/perf: remove generation code for mathml render
URL   : https://patchwork.freedesktop.org/series/74641/
State : warning

== Summary ==

Did not get list of undocumented tests for this run, something is wrong!

Other than that, pipeline status: FAILED.

see https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/pipelines/119000 for the overview.

build:tests-debian-autotools has failed (https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/jobs/1913402):
  make[2]: Leaving directory '/builds/gfx-ci/igt-ci-tags/lib'
  make[1]: *** [Makefile:515: all-recursive] Error 1
  make[1]: Leaving directory '/builds/gfx-ci/igt-ci-tags'
  make: *** [Makefile:447: all] Error 2
  make  all-recursive
  make[1]: Entering directory '/builds/gfx-ci/igt-ci-tags'
  Making all in lib
  make[2]: Entering directory '/builds/gfx-ci/igt-ci-tags/lib'
  make[2]: Leaving directory '/builds/gfx-ci/igt-ci-tags/lib'
  make[2]: *** No rule to make target 'i915/perf-configs/perf-codegen.py', needed by 'i915/i915_perf_metrics.h'.  Stop.
  make[1]: *** [Makefile:515: all-recursive] Error 1
  make[1]: Leaving directory '/builds/gfx-ci/igt-ci-tags'
  make: *** [Makefile:447: all] Error 2
  section_end:1584013133:build_script
  section_start:1584013133:after_script
  section_end:1584013134:after_script
  section_start:1584013134:upload_artifacts_on_failure
  section_end:1584013136:upload_artifacts_on_failure
  ERROR: Job failed: exit code 1

== Logs ==

For more details see: https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/pipelines/119000
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
