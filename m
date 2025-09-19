Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF6B8B6D9
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Sep 2025 00:00:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB6610EA9E;
	Fri, 19 Sep 2025 22:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJvTZluI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E825810EA9E;
 Fri, 19 Sep 2025 22:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758319240; x=1789855240;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=NoFM49/H64CEVeeYpQCZ3vzDof1Y63IuCl31vk5XvwM=;
 b=BJvTZluIdnVVHrhZOzbo4WiBuCphfUvVKLZpCoMv1ncEjijHHws0FXoZ
 xmgeXJ+7vD5OxpWTl1mR8+L8EWBXzYsOmwqKQaQjRl7gYC35UPY88Pu2W
 42S2C9WgEUzWAfcLJF6fh/HoT+fd2gT6EMBUIwSRnH0Q9uWxDt7W44NJJ
 q+gHeGwmzyexWPu2vU1rbRv9gsVwRhX9F6nj32lgPk9k1judp4SD9HWVN
 ELEorOgVRW8sMgEZF6Xsxfn7j1qw7Wfn1Qyza1AXWjpNnKB7t0UA+jNxJ
 Y3Cph9bZPrbT703v9bsSyHXrZlzyuqcnU33cj+nO/4Av/hHfCNpVKMnaf g==;
X-CSE-ConnectionGUID: bCd2Cke4R9qprNVpEuWwpA==
X-CSE-MsgGUID: VXglCsn1SPefqttw7liZ4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="70919487"
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="70919487"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 15:00:39 -0700
X-CSE-ConnectionGUID: QiGbDkB8TKiaQ66BD9Qw7g==
X-CSE-MsgGUID: 9kNUb/VdRkKlpXkHFQck1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="176378488"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 15:00:38 -0700
Date: Sat, 20 Sep 2025 00:00:36 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 00/15] drm/i915: vlv clock cleanups
In-Reply-To: <e64fbd1d681c404b964c8512f79b300e1c7f5767@intel.com>
Message-ID: <bf910bfd-5653-0c75-bd8c-7488e66f5755@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
 <dc4baf0c-420b-3486-98bd-24c4c53b5b0b@intel.com>
 <e64fbd1d681c404b964c8512f79b300e1c7f5767@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-986482476-1758319239=:1006184"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-986482476-1758319239=:1006184
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 18 Sep 2025, Jani Nikula wrote:
> On Thu, 18 Sep 2025, Michał Grzelak <michal.grzelak@intel.com> wrote:
>> Although I have just issued my r-b on the rest of the series, I would
>> have one question. Can't we add on top of the series a separate commit
>> with rename of vlv_get_cck_clock() into vlv_clock_get_cck()?  It would
>> be more consistent with the rest of the function names in vlv_clock.c.
>> Patch with what I am meaning is in the attachment.
>
> Thanks for the review, I've already merged the series. :)

Right, overlooked it. Apologies for that.
>
> Your proposal makes sense, please send the patch!
>
If so, then the patch is accessible here [1].

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/20250919215413.1006296-1-michal.grzelak@intel.com
--8323329-986482476-1758319239=:1006184--
