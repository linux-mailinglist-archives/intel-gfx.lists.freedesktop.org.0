Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC4D80D74D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 19:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F8610E4DA;
	Mon, 11 Dec 2023 18:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A387F10E4E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 18:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702319914; x=1733855914;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RocPjd2eNWkPQKnRxDp73Jz17fJtzA5sUjwjW0wxTCg=;
 b=cEta/tb4GOFXpkEc8zxMoVfqZO2fguTfeNk7RhiKmQANxQrPz/J8Zc7U
 7ge+XwRkobyHXAqPrA+xz8+w2IRKx7tEeNhiPfnmlvQAgaak1KMdFwpzf
 /I+9at2CYtx1E19H85xb8TkF6vNhKeNO+H9Toy9Ky7VVkxbskWsfO/vvh
 hmkmDGL3VmeeS1hiHS1DNv0HvnIITNYQtc/dQdqn/nvv/8ovG6JCBDdZg
 TuINTzJ/FvWAkQ97ktLum/QfvWCQvJaeqr7eGIXAXpYoMCLNI5JxFwGO4
 ZeE6EtDrNGZvCuHNSuxSmmRNcrXKLUE0z1tMo2qzSiANUSm1DCKd1C0Ay Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="394441771"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="394441771"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 10:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="916950879"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="916950879"
Received: from kbalak2x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.68])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 10:38:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915: fix display ver 12-13 fault error handling
In-Reply-To: <20231208160726.GB5757@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231208112008.2904497-1-jani.nikula@intel.com>
 <20231208160726.GB5757@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 11 Dec 2023 20:38:29 +0200
Message-ID: <878r60y47u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Dec 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Dec 08, 2023 at 01:20:08PM +0200, Jani Nikula wrote:
>> Unless I'm completely misreading the bspec, there are no defined bits
>> for plane gtt fault errors in DE PIPE IIR for a display versions
>> 12-14. This would explain why DG2 in the linked bug is getting thousands
>> of fault errors.
>
> I think you might be misreading the spec?  On TGL, bits 7-11 are listed
> as plane1-4+cursor fault status, and bits 20-22 are listed as plane 5-7
> fault status.  Bits 7-11 are tagged with a REMOVEDBY tag that eventually
> drops them for MTL onward, and bits 20-22 are tagged with a REMOVEDBY
> tag that drops them for RKL onward (which makes sense because those
> extra planes stopped existing at that point).
>
> Maybe the bspec's way of displaying things is what's causing the
> confusion?  When you see
>
>         REMOVEDBY(xxxx)
>         [ Foo, Bar, Baz ]
>
> The "Foo, Bar, Baz" platform list is the *remaining* list of platforms
> after the removal is taken into account, not the platforms actually
> being removed.  You can hover over the REMOVEDBY link to see the actual
> platforms being removed and a link to the change record for that.

Yeah. It's not one of the more clear register specs out there. Sorry for
the noise, and thanks for taking the time to explain this.

BR,
Jani.


-- 
Jani Nikula, Intel
