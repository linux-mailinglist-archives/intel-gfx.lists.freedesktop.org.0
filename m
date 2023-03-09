Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AF16B2869
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 16:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E81610E84C;
	Thu,  9 Mar 2023 15:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B0F10E84C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 15:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678374586; x=1709910586;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5rWNscd0xgBXzwh1Z1K36JAcbiIGifE/QVIAGidvI1A=;
 b=PV/QNusOcMa9pxER8+nFmf2widl0Y6Kfse7GEesnu7GMbE9WVwDUqlrk
 rDT/vlDMlqJbvTz7zFtytUThyMwEKw8+vNn95UuoWTMfT50+WMXqWP7h3
 r1oLACJ65FQej2k6BowxqpxxrrE3m59rHL2OG1Cd82yywYnOo6BGknpho
 q2rV/zFRJ86JliSWcDOga8uKbkTiFwiRMPbT/wM/Qx49doChOktZe9IYV
 lgr08xIcIrSsvNv8GewlpHyNEkt1dWFLgfwlYHKVOrJUm0pYKU11JZTn1
 1Mzi6o8ADOTmKgvcR+BYNbE5ezUU8BpWlO/D5VVppAumsBVWdO/2LtR57 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="320312294"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="320312294"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 06:51:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="787592826"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="787592826"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 06:51:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Dan Carpenter <error27@gmail.com>
In-Reply-To: <d1cc6919-6392-41f0-b17e-86e5b706e945@kili.mountain>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <d1cc6919-6392-41f0-b17e-86e5b706e945@kili.mountain>
Date: Thu, 09 Mar 2023 16:51:10 +0200
Message-ID: <875yba9dwh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [bug report] drm/i915/dmc: add i915_to_dmc() and
 dmc->i915 and use them
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

On Thu, 09 Mar 2023, Dan Carpenter <error27@gmail.com> wrote:
> Hello Jani Nikula,
>
> This is a semi-automatic email about new static checker warnings.
>
> The patch 1b28c1c789d0: "drm/i915/dmc: add i915_to_dmc() and 
> dmc->i915 and use them" from Mar 1, 2023, leads to the following 
> Smatch complaint:
>
>     drivers/gpu/drm/i915/display/intel_dmc.c:1162 intel_dmc_debugfs_status_show()
>     error: we previously assumed 'dmc' could be null (see line 1148)
>
> drivers/gpu/drm/i915/display/intel_dmc.c
>   1142  
>   1143          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   1144  
>   1145          seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));'
>                                                        ^^^^^^^^^^^^^^^
> This is a check for NULL too.
>
>   1146          seq_printf(m, "fw loaded: %s\n",
>   1147			   str_yes_no(intel_dmc_has_payload(i915)));
>   1148		seq_printf(m, "path: %s\n", dmc ? dmc->fw_path : "N/A");
>                                             ^^^
> The patch adds a check for NULL.
>
>   1149		seq_printf(m, "Pipe A fw needed: %s\n",
>   1150			   str_yes_no(GRAPHICS_VER(i915) >= 12));
>   1151		seq_printf(m, "Pipe A fw loaded: %s\n",
>   1152			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
>   1153		seq_printf(m, "Pipe B fw needed: %s\n",
>   1154			   str_yes_no(IS_ALDERLAKE_P(i915) ||
>   1155				      DISPLAY_VER(i915) >= 14));
>   1156		seq_printf(m, "Pipe B fw loaded: %s\n",
>   1157			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEB)));
>   1158	
>   1159		if (!intel_dmc_has_payload(i915))

intel_dmc_has_payload() should always return false for dmc == NULL.

BR,
Jani.

>   1160			goto out;
>   1161	
>   1162		seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
>                                                                     ^^^^^^^^^^^^
>   1163			   DMC_VERSION_MINOR(dmc->version));
>                                              ^^^^^^^^^^^^
> Unchecked dereferences.
>
>   1164	
>
> regards,
> dan carpenter

-- 
Jani Nikula, Intel Open Source Graphics Center
