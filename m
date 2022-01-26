Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCF849D59D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266EA10E9B9;
	Wed, 26 Jan 2022 22:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBC010E9BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643237182; x=1674773182;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XAWuY2ui04xdWjFQVPTqjHOoms7gIF1j10aK6FgGAqg=;
 b=igDTxh2LtPdFlne0jzueVoxOUVXhIs0iTdpfPWMZGvpI4lnJYS0DJ58Y
 KTvoMM4TQiRle30a4grSoxVTQvQTTz/gg81S7Y/ZUM7+bjQysx5N74TGK
 Y8AxN0JGkKzYW1d2pFOHLhwPP3LJVqGk/ga8Zq/aWgEzd9F7NVedbTdR/
 oJBPuEJpp56JzQagWOowuqE/Qz3Heq5GLoNGh9SHXW1H/Avl8XycW/UmV
 ZFdJgghUKIXlVo/TpEdmds9ZWV0yeMrNkS17C0sNCCG02dDLMTPldMn/K
 0X9MqbW5prwKzHZArjG22dqmwhygLQbKmTV089yQY3LFk9+a5dzo8XPH3 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226649924"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="226649924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:46:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="535367453"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:46:20 -0800
Date: Wed, 26 Jan 2022 14:46:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 02:48:13AM -0800, Alan Previn wrote:
>Update GuC ADS size allocation to include space for
>the lists of error state capture register descriptors.
>
>Also, populate the lists of registers we want GuC to report back to
>Host on engine reset events. This list should include global,
>engine-class and engine-instance registers for every engine-class
>type on the current hardware.
>
>NOTE: Start with a sample table of register lists to layout the
>framework before adding real registers in subsequent patch.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---

...

> static void __guc_ads_init(struct intel_guc *guc)
> {
> 	struct intel_gt *gt = guc_to_gt(guc);
>@@ -573,9 +553,9 @@ static void __guc_ads_init(struct intel_guc *guc)
>
> 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
>
>-	/* Capture list for hang debug */
>-	guc_capture_list_init(guc, blob);
>-
>+	/* Lists for error capture debug */
>+	intel_guc_capture_prep_lists(guc, (struct guc_ads *)blob, base,

no, please don't cast/export struct guc_ads like this. We can't really
dereference it since it may be in IO memory.

See https://patchwork.freedesktop.org/series/99378/ with the huge
refactor in this file to make it conform to the rules of accessing IO
memory.

Maybe this list could be appended in the same reglist buffer and we just
copy it once to its final location, like we are doing with the reglist?

Lucas De Marchi
