Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 181941710C0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 06:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3166E07F;
	Thu, 27 Feb 2020 05:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5704D6E07F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 05:56:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 21:56:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,490,1574150400"; d="scan'208";a="231701357"
Received: from lohmeies-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 21:56:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, =?utf-8?Q?Jos=C3=A9?= Roberto de
 Souza <jose.souza@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 27 Feb 2020 07:56:51 +0200
Message-ID: <877e08shcs.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] Fixes that failed to apply to v5.6-rc3
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


Hi all -

The following commits have been marked as Cc: stable or fixing something
in v5.6-rc3 or earlier, but failed to cherry-pick to
drm-intel-fixes. Please see if they are worth backporting, and please do
so if they are.

Failed to cherry-pick:
837b63e60878 ("drm/i915: Program MBUS with rmw during initialization")
87e04f75928b ("drm/i915/tgl: Add Wa_22010178259:tgl")
df1a5bfc16f3 ("drm/i915/psr: Force PSR probe only after full initialization")

This one was fine to cherry-pick, but caused problematic (for me!)
conflicts in drm-tip rebuild:
42fb60de3129 ("drm/i915/gem: Don't leak non-persistent requests on changing engines")

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
