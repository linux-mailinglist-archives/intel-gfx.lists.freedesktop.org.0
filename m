Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B396060E654
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBC010E5C2;
	Wed, 26 Oct 2022 17:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502C410E5C2;
 Wed, 26 Oct 2022 17:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666804848; x=1698340848;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ba3ohwam1qVfpz8GMsLot7TZzZEh1gbVxdpuf7012tg=;
 b=MMpOhsORO5+GG0+/kkyf3ep+DvqVgRHncPQ8qvQb/Iwre21TRItLKorV
 qT/d9ctW80FbPlRO91+q641TFf5uk1CbSZQfeMINsTWDSCD89Ml+DwqBh
 Avn5Pklgn0Jwa5LcPc/oYDavEpvJNp1SS+YacSeMjXdTz+qj9/MEGhjzA
 8W0Gqgy6eXNCerNks9lNBkoycuw64i8iIbnOeyI7O7WeAhhUh40Kh1bKz
 hSCOqxoR+/cW85pHbPAK/IKdqjJznKxRnN8jfaVT83HBzpVXKXgI0N9H9
 kahV6I/Mmhagj1GZ1BtSDzR0PYiTsildawMObx5dwChkdTyNMRe6btGIk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="306740718"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="306740718"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:20:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="737333826"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="737333826"
Received: from tfigx-mobl1.ger.corp.intel.com (HELO [10.252.29.204])
 ([10.252.29.204])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:20:44 -0700
Message-ID: <e39dbdd4-4acc-d7fb-49af-df00b20ad78c@intel.com>
Date: Wed, 26 Oct 2022 18:20:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
 <20221025065905.13325-20-niranjana.vishwanathapura@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221025065905.13325-20-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 19/19] drm/i915/vm_bind: Render VM_BIND
 documentation
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
> Update i915 documentation to include VM_BIND changes
> and render all VM_BIND related documentation.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Thanks for adding this,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
