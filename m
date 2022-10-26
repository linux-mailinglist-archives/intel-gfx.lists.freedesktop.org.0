Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C87760E2D5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 16:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBE310E1D5;
	Wed, 26 Oct 2022 14:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9C310E187;
 Wed, 26 Oct 2022 14:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666793124; x=1698329124;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=81O4hafPKfaQ9TiYygP4iAb9EW/L7Oz9EFjXOj8fRLM=;
 b=E2VC+ZHjVQQUtTssSN+puQNC+FV/LZl4kipd2tW3lq5tubPxh4xgODUm
 a8pzqKr8DikcW18ResDXro0INPo/bzJLMKDhR6KsJ2OzLBYZkl4E22uBu
 EIt+FvygVjfEXL0wihxkNjxe0WnHHAyo1zy9U8mApbR0GykV7/ZVyRzVE
 SLtJJZE5UNQryppVw8/y54eicoWfaBwBly7JylE9z7pgh7quoubo6/QgG
 6x6itrxw3IK7AVbGlX1+RIeldZme2+alHfddkyuxmHEOTnPuWJZHlpvVM
 DbtajdvWACgNNTAPa4HU9KUCrcKchb1CorCs0qBIc+srMgGT7mT8/MpwD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="295360604"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="295360604"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 07:05:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="757308370"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="757308370"
Received: from tfigx-mobl1.ger.corp.intel.com (HELO [10.252.29.204])
 ([10.252.29.204])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 07:05:16 -0700
Message-ID: <f09c77ff-f1e8-34d6-97bb-61cece2cfac8@intel.com>
Date: Wed, 26 Oct 2022 15:05:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
 <20221025065905.13325-18-niranjana.vishwanathapura@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221025065905.13325-18-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 17/19] drm/i915/vm_bind: Limit vm_bind
 mode to non-recoverable contexts
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25/10/2022 07:59, Niranjana Vishwanathapura wrote:
> Only support vm_bind mode with non-recoverable contexts.
> With new vm_bind mode with eb3 submission path, we need not
> support older recoverable contexts.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
