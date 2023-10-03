Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A90DF7B6F72
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 19:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0714110E013;
	Tue,  3 Oct 2023 17:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CC510E013
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 17:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696353496; x=1727889496;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5+IjXM6zKUPHG6OlDez6HFsFtbG+EwI/f9+pFLdpZX8=;
 b=J5UMaLEEQC2/AGQZm73IEE9NugS69kY4rhQ0AUzetAyubKD2yV6I8aYE
 jHbqY331wepg1h/Wr9uY6WR2TLUmU/MI0+qnDCmmVVIr2KlBnEqvcNvfW
 W2jSzgFMGtqAvkHxo3U7pzSwhQCslIbfwR+k/3CP8Jp/ed7Mn2VCfp6Mc
 Do7oDD9xRA3s/5RU4mCn5Z1HUs2phLpB93KY4yMTNtnx/uwK3Po3mX+OM
 vwoafcg4+MNFeoyVNSgeRqN1GTEv+ozCzw7WfRhN7RhmqZY1CE/echAsd
 dEYI/WEoowTRWHGTzaf/7L6o3MS6A3gzJ17PaVS/8aFLKILOt15POxGau A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="385756977"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="385756977"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 10:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="874770972"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="874770972"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 10:17:35 -0700
Date: Tue, 3 Oct 2023 19:17:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZRxMqD+ZNbQK78SV@ashyti-mobl2.lan>
References: <20231002140742.933530-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002140742.933530-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Invalidate the TLBs on each GT
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
Cc: matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan and Chris,

On Mon, Oct 02, 2023 at 07:07:42AM -0700, Jonathan Cavitt wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> With multi-GT devices, the object may have been bound on each GT and so
> we need to invalidate the TLBs across all GT before releasing the pages
> back to the system.
> 
> Fixes: d6c531ab4820 ("drm/i915: Invalidate the TLBs on each GT")
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Matt Roper <matthew.d.roper@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

pushed to drm-intel-gt-next.

Thank you,
Andi
