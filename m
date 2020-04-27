Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA87E1BADB0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 21:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151BD6E044;
	Mon, 27 Apr 2020 19:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30546E044
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 19:16:18 +0000 (UTC)
IronPort-SDR: NDJakP+5PRUxKXXNSxZanrcQgJGo9RuexqjCuqG++PtaIbTBEYGi+mQlIoAdXdSotWehB8XJwa
 mur5Dt1qMvYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 12:16:18 -0700
IronPort-SDR: rFV8nge1C34wOrhlLAcNWndTh0+pjouAdA59BOxZxp6r8EZQ2oQjccm6YcNcX8pXrx7AazTD1E
 9r4MD6AM03fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,325,1583222400"; d="scan'208";a="281874176"
Received: from nsowell-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.82.159])
 by fmsmga004.fm.intel.com with ESMTP; 27 Apr 2020 12:16:16 -0700
Date: Mon, 27 Apr 2020 22:16:15 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200427191615.GE1862@intel.intel>
References: <20200426163608.13704-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426163608.13704-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move more i915->ggtt to local
 variables
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

Hi Chris,

On Sun, Apr 26, 2020 at 05:36:08PM +0100, Chris Wilson wrote:
> We have been preparing for a transfer of ownership of the GGTT from the
> global drm_i915_private into the intel_gt, and a part of the process has
> been to reduce the number of direct references to i915->ggtt and instead
> try and derive the pointer from a supplied intel_gt.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@gmail.com>

Thank you,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
