Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C0B4D1CCE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 17:09:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2822810E2D7;
	Tue,  8 Mar 2022 16:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5357610E2D4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 16:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646755755; x=1678291755;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3I82Y2MwIRfSYZRREyb845/0F/WWPCYErp/D2iFfoBI=;
 b=WnVa5zXPL1tRRMy9C3QEe2N0HwwrJxfXgWcnvB9mdwKpdSJyLJiJ/dW/
 USok4BUsDb8uMJ7rPMzCrmZMrZDOgYiFPNeiphAtfhJyBpjutMaiIEGua
 yIkzbKWLxQigj8sf5oxamAgVScGdSg+UQDKgPmcM722pw/L4siRkV61qu
 kqzr8pJDXXj2zYsH8yGtNm/Vi9OuDD84tCm0zi9FBrRXOAr8xb3p541Xn
 NMqa1jwA7daz+91Dn/+wwCXaBIEUhgxa6YfncricuMXs2nmkG0NFrq6Aw
 feZ5S+WtRAw2nG409tbvQAFWb5/ArKYY0xR6VibOCW1sf6su1wZEyrjs6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254452151"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="254452151"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 08:05:20 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="611048767"
Received: from abagarwa-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.156.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 08:05:20 -0800
Date: Tue, 8 Mar 2022 08:05:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20220308160519.t6kl32qjyzgbeasm@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220308141112.880662-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220308141112.880662-1-kai.vehmanen@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda/i915 - avoid hung task timeout in
 i915 wait
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
Cc: tiwai@suse.de, alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 08, 2022 at 04:11:12PM +0200, Kai Vehmanen wrote:
>If kernel is built with hung task detection enabled and
>CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
>snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
>not available and taint the kernel.
>
>Split the 60sec wait into a loop of smaller waits to avoid this.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
>Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
>Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
