Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C687F151EE5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 18:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36E16E887;
	Tue,  4 Feb 2020 17:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8856E887
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 17:05:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 09:05:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="219807811"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 04 Feb 2020 09:05:22 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 014H5LHj005838; Tue, 4 Feb 2020 17:05:21 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-2-daniele.ceraolospurio@intel.com>
Date: Tue, 04 Feb 2020 18:05:20 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0fg226jqxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20200203232838.14822-2-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915/debugfs: Pass guc_log
 struct to i915_guc_log_info
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

On Tue, 04 Feb 2020 00:28:29 +0100, Daniele Ceraolo Spurio  
<daniele.ceraolospurio@intel.com> wrote:

> The log struct is the only thing the function needs (apart from
> the seq_file), so we can pass just that instead of the whole dev_priv.
>
> v2: Split this change to its own patch (Michal)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c  
> b/drivers/gpu/drm/i915/i915_debugfs.c
> index e75e8212f03b..7264c0ff766c 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1753,10 +1753,8 @@ stringify_guc_log_type(enum guc_log_buffer_type  
> type)
>  	return "";
>  }
> -static void i915_guc_log_info(struct seq_file *m,
> -			      struct drm_i915_private *dev_priv)
> +static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log  
> *log)

maybe to avoid polluting i915_debugfs.c we should move this function to
gt/uc/intel_guc_log.c as universal printer:

void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)

>  {
> -	struct intel_guc_log *log = &dev_priv->gt.uc.guc.log;
>  	enum guc_log_buffer_type type;
> 	if (!intel_guc_log_relay_created(log)) {
> @@ -1784,7 +1782,7 @@ static int i915_guc_info(struct seq_file *m, void  
> *data)
>  	if (!USES_GUC(dev_priv))
>  		return -ENODEV;
> -	i915_guc_log_info(m, dev_priv);
> +	i915_guc_log_info(m, &dev_priv->gt.uc.guc.log);

too many dots ... this is "guc" info function, maybe we should have:

	struct intel_guc *guc = &dev_priv->gt.uc.guc;
or
	struct intel_gt *gt = &dev_priv->gt;
	struct intel_uc *uc = &gt->uc;
	struct intel_guc *guc = &uc->guc;

as that "guc" is likely to be reused in "more" below

> 	/* Add more as required ... */
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
