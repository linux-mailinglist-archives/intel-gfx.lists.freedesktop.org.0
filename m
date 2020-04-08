Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB661A2AB9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 22:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645DC6E8B9;
	Wed,  8 Apr 2020 20:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFCD6E8B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 20:59:50 +0000 (UTC)
IronPort-SDR: Mp/lUKl8qL5S9ODCrsaPCsazCcT7FD84XeQTYOrKX9GIy0PysUWDzlkgsiBttf7rViZWwMlbjI
 74x4bWsfx20w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 13:59:50 -0700
IronPort-SDR: uD4O7/0NuePvOs/ciy6r+rqLHV/DPQ/MWTwDaf2xPEtMuIEBSwPGRqDb1creWW/gIaICT3eAjf
 +wD8yOWCcQLw==
X-IronPort-AV: E=Sophos;i="5.72,359,1580803200"; d="scan'208";a="361947990"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 13:59:49 -0700
Date: Wed, 8 Apr 2020 13:59:38 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, ashutosh.dixit@intel.com
Message-ID: <20200408205938.GC1851257@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] Patches that didn't applied cleanly on
 drm-intel-next-fixes
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

Hi Ashutosh and Chris,

these patches seems needed for 5.7 but didn't applied cleanly on dinf:

Failed to cherry-pick:
6352219c39c0 ("drm/i915/perf: Do not clear pollin for small user read buffers")
614654abe847 ("drm/i915: Check current i915_vma.pin_count status first on unbind")
c4e8ba739034 ("drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore")

If they are critical for 5.7 please provide a version that applies or list the dependencies.

Thanks,
Rodrigo.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
