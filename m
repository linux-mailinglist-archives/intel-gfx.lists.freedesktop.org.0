Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDF657AA1C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 00:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBCD11A2A1;
	Tue, 19 Jul 2022 22:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC951138D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 22:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658271527; x=1689807527;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=fAU94dJkYuip9aBITtU5BlvxHZfhBtm0RQ2qZqhA8/8=;
 b=Ouo+MKwWTw5PEXe/46okVbvrU+wTJ/c8DILx5HQxDeQrx+K9aV+1ZY7x
 IU/EgQ5eiCnWrVQvD/5EM8TYErgEyFR/6Ho6SNIxHRY7EyBSbUkxjMosF
 54yR6IeL3ZdxnAMflmotlvynGzTV3E7ny22ZyuLyCMewWrRkQr2r8FlYD
 eK3ShQzSdNQCnlJ0JrAky1vhxFSLnNRsLV65dnwQhrxXJCuh2tc6YJ9qV
 km1Ot0iUQtWHn0EYCSPTbwcMwX4StgDV9yh7moO2eUGaOU+25/qgU6y1n
 dhePrPYcDyxRJyGa3goJ+huvX252JhlEFNreo6O7AOjJUksejYHKcYnZe w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="269655109"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="269655109"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 15:58:47 -0700
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="924979214"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.13.123])
 ([10.213.13.123])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 15:58:45 -0700
Message-ID: <da0e23e9-7354-ae0a-3970-f98d7cfc0a21@intel.com>
Date: Wed, 20 Jul 2022 00:58:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220718183424.149988-1-anusha.srivatsa@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220718183424.149988-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18.07.2022 20:34, Anusha Srivatsa wrote:
> gen11_gu_misc_irq_handler() does not do anything tile specific.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
