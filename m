Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A559151F38
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 18:20:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A186E896;
	Tue,  4 Feb 2020 17:20:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E98236E896
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 17:20:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 09:20:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="235238794"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 04 Feb 2020 09:20:44 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 014HKhhL011793; Tue, 4 Feb 2020 17:20:43 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-5-daniele.ceraolospurio@intel.com>
Date: Tue, 04 Feb 2020 18:20:43 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0fg3styjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20200203232838.14822-5-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 04/10] drm/i915/uc: Update the FW status
 on injected fetch error
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 04 Feb 2020 00:28:32 +0100, Daniele Ceraolo Spurio  
<daniele.ceraolospurio@intel.com> wrote:

> In a follow up patch we will rely on the fact that the status always
> moves away from "SELECTED" after the fetch is attempted to decide what
> to do with the GuC.
>
> v2: Split this change to its own patch (Michal)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 8ee0a0c7f447..c9c094a73399 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -279,7 +279,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
> 	err = i915_inject_probe_error(i915, -ENXIO);
>  	if (err)
> -		return err;
> +		goto fail;
> 	__force_fw_fetch_failures(uc_fw, -EINVAL);
>  	__force_fw_fetch_failures(uc_fw, -ESTALE);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
