Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152350320A
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 02:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD9310E522;
	Sat, 16 Apr 2022 00:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818E610E522
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 00:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650069121; x=1681605121;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=LkkS3xyeI7LcDFCjOwthtCW9fJXQ3JUUR0Gkgh6+50c=;
 b=FHgnWhN7DN0LVfH9LYNbYAn8ym/RrD1xtvayd5R4Pll+8tDxMk//2dfA
 hsqg1nPyjGP/1w0ZVk/tpZ5p71cwsosg87V2mujqQym35+VeTN44D3vqx
 n7/bJa1kReVPLfZUxBnco0lwQfGspu2bFHpkYF1+QBpaL7D20p2qWDdhW
 xdnL3AeLGKednkg5YgB+o45jeMObbvhgxIhtoxzFbv+U1g5RSiCUoAe3Y
 o8CU1P/JkU7nyhvbQcKYNhg+8s3TWzveYnulH0iZsEBmQNlf77N1T4kG0
 vehiyaQ37iH5fMNPyWJr004op26admqK1TxA7tXEmlquoViiPBol2M+FR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="262714093"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="262714093"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 17:32:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="803686655"
Received: from rascazub-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.3.42])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 17:32:00 -0700
Date: Fri, 15 Apr 2022 17:31:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220416003159.cjlmcbevmmxus2td@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220415215640.2177403-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220415215640.2177403-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [CI] HAX: drm/i915: Add softdep
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 15, 2022 at 02:56:40PM -0700, Lucas De Marchi wrote:
>CI is having several issues due to unbinding i915 while the sound driver
>is still doing something. It's particularly harmful when it's not idle
>and we attempt to remove i915.
>
>We still need to fix the snd driver so we can more reliably remove i915,
>but this can't block other i915 tests. By adding a post softdep we make sure
>that on module removal, kmod first removes snd_hda_intel, and only after
>that removes i915.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

ignore, it broke other platforms.

Lucas De Marchi
