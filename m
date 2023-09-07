Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A978E79726D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 14:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C44910E235;
	Thu,  7 Sep 2023 12:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE0A10E235
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 12:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694091364; x=1725627364;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Pxo3FwxwN1HCBwVTto4Tz/0Eh6eDJWMPTvNnMpfYgU4=;
 b=P6AlVM7dwq1rlWfXcmZMP6L3oVP4XKRJtIS94oFtFHUFNtyAKb6aa3lI
 50Igcd9xqeub3jva2UU9DGH59OUWEfE4e3INjoAy3NBPyq95k6EaGmt/w
 u3L/X/72B9yk11J/Gtb/Y3WXo0825A0lM4dXBzpkADwzXh1CRiH/UaXhC
 OlIDeslN14vhwIbdKJMs33rcAEQaFKQn3e5rlaXNXJzLeX4+VYSpqv8sc
 xFuWnmKbxZW+Re8euQx5TvcH77AOd8zFy4Y+xPHhy6PDpprCWFwm422cJ
 ybBBqdR+txTjs3VLk0BCzYiBoN4U6AM5PiGgpVIgwXiRE9fZK6SUDOP3E g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="381128688"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="381128688"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 05:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="856809241"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="856809241"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 05:56:01 -0700
Date: Thu, 7 Sep 2023 14:55:58 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZPnIXuvNlnf2q4Vx@ashyti-mobl2.lan>
References: <20230907101135.176326-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230907101135.176326-1-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Run relevant bits of debugfs
 drop_caches per GT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -	ret = gt_drop_caches(to_gt(i915), val);
> -	if (ret)
> -		return ret;
> +	for_each_gt(i915, i, gt) {

argh... I forgot to add this change before formatting the patch

-       for_each_gt(i915, i, gt) {
+       for_each_gt(gt, i915, i) {

Will resend.

Andi
