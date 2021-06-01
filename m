Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F8039747A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 15:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006CF89856;
	Tue,  1 Jun 2021 13:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE4289856;
 Tue,  1 Jun 2021 13:39:46 +0000 (UTC)
IronPort-SDR: P267Kr5CgdJW/wgI0agK3Xix2Zvlf7p8Ncf+Jfy+RTn8V0cJ6ySgvynTSuiFp6v4AuIa2YtEUk
 gD2Z0VCT1BDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="190901410"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="190901410"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 06:39:45 -0700
IronPort-SDR: ixfWgT+8o7+iozXhWOHmDWgfzuVIEd4IXMQhgWVMXPbtiWVfrjD2WeQLYFYAIXJI60MTn3Phj1
 qfrg4+4OOTxQ==
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="479282326"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 06:39:44 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1lo4e8-0004Hr-Dj; Tue, 01 Jun 2021 16:41:28 +0300
Date: Tue, 1 Jun 2021 16:41:28 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Message-ID: <YLY5CH3OxmkI1/Qw@platvala-desk.ger.corp.intel.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC]
 tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests
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

On Tue, Jun 01, 2021 at 05:15:39PM +0530, Vidya Srinivas wrote:
> tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests
>
> Few Gen11 systems show CRC mismatch. Make coverage-vs-premult-vs-constant
> code similar to constant_alpha_min or basic_alpha
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>


Please make the first line of the commit message a statement that
tells what change you're making, and in the full text block state why
that's done. "Fix a-b-c tests" is useless later when browsing oneliner
git logs. It doesn't even tell which problem is fixed.

Meaning, something like:


==
tests/kms_plane_alpha_blend: Don't set primary fb color in coverage-vs-premult-vs-constant

Similar change has already been done in tests xxx and yyy.
This fixes CRC mismatches seen with some Gen11 systems.

Signed-off-by etc
==


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
