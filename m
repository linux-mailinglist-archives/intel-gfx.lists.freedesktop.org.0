Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E55A2E075D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 09:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8F46E19A;
	Tue, 22 Dec 2020 08:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3E86E19A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 08:41:48 +0000 (UTC)
IronPort-SDR: thNqJWUCtWNuCm+WfqmfvQvaDxkBJzk24eKcAbQwOroiQujz9WrjEjyaFYXVNFT2epdfObjOyB
 xABO91hgPIgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155053347"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="155053347"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 00:41:48 -0800
IronPort-SDR: jKOrW7oMIh65hu2fwKQJVWmKiBXXC/tqCHU8Vylfw+3Vk6gudJDgsk0tXlq1jZHp1+s2o8SzRG
 XvkgYQGA4PXA==
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="373205698"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 00:41:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201221040357.4928-1-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201221040357.4928-1-airlied@gmail.com>
Date: Tue, 22 Dec 2020 10:41:43 +0200
Message-ID: <875z4up708.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v6] refactor intel display a bit more
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 21 Dec 2020, Dave Airlie <airlied@gmail.com> wrote:
> Okay the first 8 patches of this should probably get landed, they have
> all the tags in place.

Split out the first 5 to get CI results [1] and pushed them now.

Patch 6 needs a rebase and/or backmerges.


BR,
Jani.


[1] http://patchwork.freedesktop.org/patch/msgid/20201221090449.8288-1-jani.nikula@intel.com


>
> The subsequent patches have seen some rework:
> Added a patch to move the buf_trans to a separate file as suggested
> by Ville. I reworked some of the interfaces while doing so, but only
> minorly.
>
> The skl planes code no long moves any scaler code.
>
> Some more ppl moving code, and a piece of forgotten i9xx plane moved.
>
> Dave.
>
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
