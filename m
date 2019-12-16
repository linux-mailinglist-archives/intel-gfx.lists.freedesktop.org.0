Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB071203BD
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 12:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C766E4CB;
	Mon, 16 Dec 2019 11:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D996E4CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 11:23:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 03:23:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="415045831"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.251.95.248])
 by fmsmga005.fm.intel.com with ESMTP; 16 Dec 2019 03:23:10 -0800
MIME-Version: 1.0
From: Chris Wilson <chris.p.wilson@intel.com>
User-Agent: alot/0.6
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191213200231.71350-1-venkata.s.dhanalakota@intel.com>
 <87d0co1s5s.fsf@intel.com>
In-Reply-To: <87d0co1s5s.fsf@intel.com>
Message-ID: <157649538844.2428.17398661353001354907@skylake-alporthouse-com>
Date: Mon, 16 Dec 2019 11:23:08 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path
 globally
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2019-12-16 10:27:59)
> On Fri, 13 Dec 2019, Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com> wrote:
> > We do not require to register the sysctl paths per instance,
> > so making registration global.
> >
> > v2: make sysctl path register and unregister function driver
> >     specific (Tvrtko and Lucas).
> >
> > v3: remove the NULL-check as unregister_sysctl_table is null
> >     safe. (Chris and Lucas)
> >
> > Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> 
> Chris, I understand that *some* version of this passed IGT, and that the
> patch series was re-sent rather too many times over a short period of
> time, but please only push versions that actually pass CI.

CI Bug Log - changes from CI_DRM_7556_full -> Patchwork_15738_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15738_full absolutely need to be
  verified manually.

  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15738_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.



Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15738_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb1/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@gem_ctx_persistence@bcs0-mixed-process.html


Which is just a known timing issue.

Is the version I was looking at.
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
