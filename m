Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE922FE556
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 09:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1016E516;
	Thu, 21 Jan 2021 08:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3DA26E516;
 Thu, 21 Jan 2021 08:48:21 +0000 (UTC)
IronPort-SDR: re/C8LqzYzo3hhkHFstrfj8bZafi4XCrKSmQ2IdY5SROufBIHYw/bqeGuLKDWUeF/zzY1XJ4mh
 MXGi/MNk2kzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="166910310"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="166910310"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 00:48:20 -0800
IronPort-SDR: uUJjcXwnN33fCSSzF6L5DL+CLZbXwYoska6x6A6rZS8JXR8niNYSy9V3zyYvJbJkxojBDTz/g/
 Oq9zFyINQjkw==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="385218568"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 00:48:19 -0800
Message-ID: <7c9e9e4545e7195f8f96ff352548eee63d6c3c7d.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>, 
 igt-dev@lists.freedesktop.org
Date: Thu, 21 Jan 2021 09:48:17 +0100
In-Reply-To: <7ac828ba904e3fc4153f5aa8041bfcf79128407b.camel@linux.intel.com>
References: <20210119084257.25552-1-janusz.krzysztofik@linux.intel.com>
 <7ac828ba904e3fc4153f5aa8041bfcf79128407b.camel@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Reduce debug
 noise on stdout
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-01-19 at 12:08 +0100, Marcin Bernatowicz wrote:
> On Tue, 2021-01-19 at 09:42 +0100, Janusz Krzysztofik wrote:
> > Since igt_fixture sections are processed unconditionally regardless
> > of
> > which subtest has been requested, they can now emit a lot of
> > unrelated
> > debug messages which can make the picture less clear.  Avoid emitting
> > those messages from outside igt_subtest sections.
> > 
> > Move device close status prerequisite checks from igt_fixture
> > sections
> > into subtest execution paths.  For simplicity, pass any device close
> > errors, including those from health checks, to next sections via a
> > single .fd.drm data structure field.
> > 
> > Moreover, postpone initial device health check until first actually
> > selected subtest is started.  In order to let that subtest skip on
> > unsuccessful initial health check, not fail, move the decision
> > whether
> > to fail or skip on error from the health check helper to its users.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
> > ...
> Reviewed-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>

Thank you Marcin.

CI results with no false positives finally collected after a few re-
runs, so pushed.

Thanks,
Janusz

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
