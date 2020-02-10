Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8BC157CE6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 14:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6066E992;
	Mon, 10 Feb 2020 13:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE5B6E992
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 13:58:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 05:58:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="227190281"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by fmsmga008.fm.intel.com with ESMTP; 10 Feb 2020 05:58:03 -0800
Date: Mon, 10 Feb 2020 15:58:08 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200210135808.GA2677@intel.intel>
References: <20200210134039.2607-1-andi.shyti@intel.com>
 <158134240184.5235.12886695727708474620@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158134240184.5235.12886695727708474620@skylake-alporthouse-com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: change prefix to debugfs
 functions
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> > "We don't own the debugfs 'namespace' prefix." (Jani Nikula [*])
> > 
> > I agree, change the functions name from "debugfs_*" to
> > "intel_gt_*" prefix.
> 
> An alternate way of looking at it is that these are all dependent on
> CONFIG_DEBUGFS. So are they not the debugfs interface?

this is a complete matter of taste, I might have a strong opinion
if the concept of name prefix was something respected all over
i915, but that's not always the case.

If Jani feels like enforcing the idea of the function name
prefix, I basically agree with the style.

With "debugfs_*" I understand all those functions that handle the
debugfs as framework.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
