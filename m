Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E758449C436
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 08:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0428F10E424;
	Wed, 26 Jan 2022 07:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2562E10E531
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 07:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643181748; x=1674717748;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=B0t44sS8mK+59arcybgXBH4tHvzyHsQD6sRpsQFUcC8=;
 b=LSDYHZWeioGzSW0TW+93omQYmAK+rS1WulMjX7iz41Z+x8xOYDZViEAm
 TrVQjuwN3sBXOKHtYUjcf6Y9V0BmkRvpJ7+Vr0Qc0s2eY5QxOI6ma6DWV
 dFf7T2NuMGtChLdH03lhf9wyLu7zlscJS2vGEM3FQHpaiD9Sj/TxXzuDS
 yF2D5Ttm7k155dlJGJUl1zcScSaVPxZplg+JXuL3L/Qs+bdqDt7kRtTFC
 v93UCTw8FxBEVyUMbd5PeNk4oWSY3i2/Xt/hBK5PR8ov/LhPqGnnfWJYs
 rva4cKuyMV6Ra/UTJUKoa7n4FmOybz7xPewHY0GBZPSvPmkkM6w5oxuAy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="244095127"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="244095127"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 23:22:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="520701766"
Received: from vvishnev-mobl.ger.corp.intel.com (HELO [10.252.52.103])
 ([10.252.52.103])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 23:22:25 -0800
Message-ID: <3c0c814e-e52f-dcea-db2c-462ff118c1ad@linux.intel.com>
Date: Wed, 26 Jan 2022 08:22:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1641977368.git.jani.nikula@intel.com>
 <7c018d4a741ecb98dc1a19a7fdb6b35943790ff9.1641977369.git.jani.nikula@intel.com>
 <8328facd-f10d-01e6-12e8-67179fbf324e@linux.intel.com>
 <87wninzvl0.fsf@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <87wninzvl0.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: split out
 gem/i915_gem_domain.h from i915_drv.h
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

Op 25-01-2022 om 16:25 schreef Jani Nikula:
> On Mon, 24 Jan 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
>> All looks sane.
>>
>> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Thanks... but I didn't realize this already conflicts between
> drm-intel-next and drm-intel-gt-next. I wonder what the best plan would
> be for making this happen.
>
> BR,
> Jani.
>
>
push into drm-intel-next + fixup patch in drm-tip for gt-next, hope nobody notices?

