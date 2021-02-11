Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E886318B82
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 14:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106236E301;
	Thu, 11 Feb 2021 13:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B5EB6E301
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 13:05:55 +0000 (UTC)
IronPort-SDR: WeZt+ha9U21qrEROuchWfgx4gA6/yVxaDdKg8ave7vPWmtxAINfV8vAIj9K7mDhTx45fbjmvRM
 Foy6S/a+LrSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="181460444"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="181460444"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:05:51 -0800
IronPort-SDR: WeLz8ojhX1BMhUXIsqTRF/tB8q47/nTh9jVOI0ik/yh6se8f62XJThb81f8YxHZeWenLeYSusp
 ATpdhk2Kcyig==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="422257197"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO [10.252.0.180])
 ([10.252.0.180])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:05:50 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210211112403.7891-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <df657409-eeb4-38e5-ea10-b8623d9c4dd1@intel.com>
Date: Thu, 11 Feb 2021 13:05:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210211112403.7891-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Defer object allocation from GGTT
 probe to GGTT init
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/02/2021 11:24, Chris Wilson wrote:
> Rather than try and allocate objects as we perform our early HW probes,
> defer the allocation for GGTT objects (such as the scratch page) to later
> in the initialisation.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
