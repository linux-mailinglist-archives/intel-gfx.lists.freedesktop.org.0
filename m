Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDBB3C778D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148A889F9F;
	Tue, 13 Jul 2021 19:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002E289F9F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:57:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="274064215"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="274064215"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:57:08 -0700
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="570569726"
Received: from juhyungn-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.129.73])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:57:08 -0700
Date: Tue, 13 Jul 2021 12:57:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210713195707.4t4rzkdonc7pphhe@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
 <20210710033724.2459367-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210710033724.2459367-8-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 07/12] drm/i915/icl: Use revid->stepping
 tables
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 09, 2021 at 08:37:19PM -0700, Matt Roper wrote:
>Switch ICL to use a revid->stepping table as we're trying to do on all
>platforms going forward.  While we're at it, let's include some
>additional steppings that have popped up, even if we don't yet have any
>workarounds tied to those steppings (we probably need to audit our
>workaround list soon to see if any of the bounds have moved or if new
>workarounds have appeared).
>
>Note that the current bspec table is missing information about how to
>map PCI revision ID to GT/display steppings; it only provides an SoC
>stepping.  The mapping to GT/display steppings (which aren't always the
>same as the SoC stepping) used to be in the bspec, but was apparently
>dropped during an update in Nov 2019; I've made my changes here based on
>an older bspec snapshot that still had the necessary information.  We've
>requested that the missing information be restored.
>
>I'm only including the production revids in the table here since we're
>past the point at which we usually stop trying to support pre-production
>hardware.  An appropriate check is added to
>intel_detect_preproduction_hw() to print an error and taint the kernel
>just in case someone still tries to load the driver on old
>pre-production hardware.
>
>v2:
> - Drop pre-production steppings and add error/taint at startup when
>   loading on pre-production hardware.

oh... I forgot to send my review. Here is the commend I had:

It seems we are not actually dropping the WAs. We have several applying
only to A0 or A0/B0. From your first paragraph, is the intention to do
an audit of the WA ranges later?  Because we are currently running
without applying those WAs, so those are effectively dead code.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
