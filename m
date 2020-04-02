Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0551B19C939
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 20:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685196EAD9;
	Thu,  2 Apr 2020 18:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658D06EAD9
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 18:55:05 +0000 (UTC)
IronPort-SDR: 7y0CbS8Cv2C3BQLW4xq2Ta581R3YG3d0RbGtZQQm59YmYVLcMJ+gwtuhwYPFzaEx+aeQrG3+Mk
 q01cCtuUODcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 11:55:04 -0700
IronPort-SDR: OwPG3y03tNzEYENk2iObEl4z2HBUa0rIhbNBJleGDlaTeDaPS5zwufwAn+stS9aWqWV6t0nYol
 HtEAXOCg1whA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="449743814"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 02 Apr 2020 11:55:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id BF6435C1EF4; Thu,  2 Apr 2020 21:53:24 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200330212254.18236-1-chris@chris-wilson.co.uk>
References: <20200330212254.18236-1-chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 21:53:24 +0300
Message-ID: <875zehpvmj.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Cleanup kerneldoc warnings
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:205: warning: Excess function parameter 'supported' description in 'intel_uc_fw_init_early'
> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:205: warning: Excess function parameter 'platform' description in 'intel_uc_fw_init_early'
> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:205: warning: Excess function parameter 'rev' description in 'intel_uc_fw_init_early'
>
> drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:696: warning: Function parameter or member 'log' not described in 'intel_guc_log_info'
> drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:696: warning: Excess function parameter 'guc' description in 'intel_guc_log_info'
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c   | 3 ---
>  2 files changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 5b11a6d8e27f..fb10f3597ea5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -687,7 +687,7 @@ stringify_guc_log_type(enum guc_log_buffer_type type)
>  
>  /**
>   * intel_guc_log_info - dump information about GuC log relay
> - * @guc: the GuC
> + * @log: the GuC log
>   * @p: the &drm_printer
>   *
>   * Pretty printer for GuC log info
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index fa893dd1823c..1f5d25f15340 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -193,9 +193,6 @@ static void __uc_fw_user_override(struct intel_uc_fw *uc_fw)
>   * intel_uc_fw_init_early - initialize the uC object and select the firmware
>   * @uc_fw: uC firmware
>   * @type: type of uC
> - * @supported: is uC support possible
> - * @platform: platform identifier
> - * @rev: hardware revision
>   *
>   * Initialize the state of our uC object and relevant tracking and select the
>   * firmware to fetch and load.
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
