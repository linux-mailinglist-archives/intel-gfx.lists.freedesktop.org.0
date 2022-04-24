Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B68950D587
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 00:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED93D10E21B;
	Sun, 24 Apr 2022 22:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E8810E21B
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 22:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650837952; x=1682373952;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RWFJO9VzeB71EGkwOwFUvP7aewxa8y33s9w3L+5mbco=;
 b=gEmmxHE4XhpTNsGQc62W5OTqjNlVQ8IKQZiwM5cNvYFB5szEZsxlppGM
 9jJin66+HM8OQN2SX45kbdR2ZEdM4JXQI4P9+ETktFCXQvfuxC37UwGpK
 LfBdUYTMWeSdekjrR2RI6PzpzJAkWMS1EtkWVTV68jMXH+ec9CidgeFxv
 GAlWdOpyHtkHZyU4CPmB8iIeX3Wnyc1acZUH0bgXfbtAvW8AUGS8tXasX
 EkVzwkjZ6ZPlQDPH8DOrFlUNtQKerDP6UfufaRb1XYGNwhQqV4HU2yFx8
 g+rTbvCI3qjj8WnuwoJznjEniwPHfSehcdCbImay1Lrg8reRgFgR1XVAn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="328021894"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="328021894"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:05:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="578947271"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:05:50 -0700
Date: Mon, 25 Apr 2022 00:05:47 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmXJu9A1Vjg+SBYk@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <d12bb581d568ddab386d2cbf1769d78353510674.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d12bb581d568ddab386d2cbf1769d78353510674.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/gt: Add media RP0/RPn to
 per-gt sysfs
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

Hi Ashutosh,

[...]

> +static ssize_t media_RP0_freq_mhz_show(struct device *dev,
> +				       struct device_attribute *attr,
> +				       char *buff)
> +{
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	u32 val;
> +	int err;
> +
> +	err = __intel_gt_pcode_read(gt, XEHPSDV_PCODE_FREQUENCY_CONFIG,
> +				    PCODE_MBOX_FC_SC_READ_FUSED_P0,
> +				    PCODE_MBOX_DOMAIN_MEDIAFF, &val);
> +
> +	if (err)
> +		return err;
> +
> +	/* data_out - Fused P0 for domain ID in units of 50 MHz */

this comment doesn't say much, can we make it a bit clearer? The
same for the one below.

The rest looks good:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

> +	val *= GT_FREQUENCY_MULTIPLIER;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
> +static ssize_t media_RPn_freq_mhz_show(struct device *dev,
> +				       struct device_attribute *attr,
> +				       char *buff)
> +{
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	u32 val;
> +	int err;
> +
> +	err = __intel_gt_pcode_read(gt, XEHPSDV_PCODE_FREQUENCY_CONFIG,
> +				    PCODE_MBOX_FC_SC_READ_FUSED_PN,
> +				    PCODE_MBOX_DOMAIN_MEDIAFF, &val);
> +
> +	if (err)
> +		return err;
> +
> +	/* data_out - Fused P0 for domain ID in units of 50 MHz */
> +	val *= GT_FREQUENCY_MULTIPLIER;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}

[...]

Thanks,
Andi
