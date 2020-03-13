Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D5C184ADF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 16:38:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81806EBFB;
	Fri, 13 Mar 2020 15:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE126EBFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 15:38:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 08:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="278264196"
Received: from ebrigham-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.252.14.214])
 by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2020 08:38:34 -0700
Date: Fri, 13 Mar 2020 17:38:33 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200313153833.GB3001@intel.intel>
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-6-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312011631.15262-6-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/uc: Move uC debugfs to its
 own folder under GT
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

Hi Daniele,

>  void debugfs_gt_register(struct intel_gt *gt)
> @@ -24,6 +25,8 @@ void debugfs_gt_register(struct intel_gt *gt)
>  
>  	debugfs_engines_register(gt, root);
>  	debugfs_gt_pm_register(gt, root);
> +
> +	intel_uc_debugfs_register(&gt->uc, root);
>  }
>  
>  void intel_gt_debugfs_register_files(struct dentry *root,
> @@ -31,9 +34,10 @@ void intel_gt_debugfs_register_files(struct dentry *root,
>  				     unsigned long count, void *data)
>  {
>  	while (count--) {
> +		umode_t mode = files->fops->write ? 0644 : 0444;
>  		if (!files->eval || files->eval(data))
>  			debugfs_create_file(files->name,
> -					    0444, root, data,
> +					    mode, root, data,
>  					    files->fops);

perhaps at some point we could send this to the debugfs framework
as multifile creation.

in any case,

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
