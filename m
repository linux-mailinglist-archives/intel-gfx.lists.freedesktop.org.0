Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 857BA4F69BD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 21:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29EAF10E00D;
	Wed,  6 Apr 2022 19:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A939710E00D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 19:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649272933; x=1680808933;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=6UIWedWYQ5T9zV6hXnwi+YG7zKZabm3XR2bRqSqX3mA=;
 b=D+E1nPgFAY61T8ZNer/BdIQXXAatWQA4FPdye/ImXQCmn5vLgrVAAU+W
 WklOh+GWXyKbV5HI9h5UN1nxNG7hFTan2W7nVUMFCqUa7kNl3Amd94VJN
 avcjNT2v0YBErRmCEyKAESTMZzQL9rvu2kj17pLQowjzg5a02jR3cKJmd
 BmNc5G0bd6JjVmHFSt41bnyhGTbOdpNnhfre1f62tejb11dG2nO8oUH44
 LV9XyRcekoRmuzzmxxkwmQlZbqPqTVJlGSRVdmg4/Lydh4iikusJGWAdm
 3ORU7eImmE45d3IJkzwzgvxQYiQvEKPaxDkGvl8SMMZJBxMHZRseZwKu0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="347579333"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="347579333"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 12:22:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="722647143"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.2.135])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 12:22:07 -0700
Date: Wed, 06 Apr 2022 12:22:07 -0700
Message-ID: <87czhudnkw.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20220406100944.GE22062@intel.com>
References: <20220323195435.38524-1-ashutosh.dixit@intel.com>
 <20220406100944.GE22062@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/27.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Centralize computation of
 freq caps
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 06 Apr 2022 03:09:45 -0700, Anshuman Gupta wrote:
> On 2022-03-24 at 01:24:35 +0530, Ashutosh Dixit wrote:
> > +/* "Caps" frequencies should be converted to MHz using intel_gpu_freq() */
> IMHO, if this exported function deserves a comment, it should Kernel Doc comment.
> for an example see Doc comment of intel_runtime_pm_get_raw().
> Thanks,
> Anshuman Gupta.
> > +void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)

I have changed the comments to kernel doc for both gen6_rps_get_freq_caps()
and 'struct intel_rps_freq_caps' in v5 (v6 in Patchwork). Please take a
look. Thanks.
