Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533752F5EA1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 11:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39BE6E198;
	Thu, 14 Jan 2021 10:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26F46E198
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 10:23:32 +0000 (UTC)
IronPort-SDR: IkzZdJHZVWw4XDlpKaiODyC6aZgzwA1C/7CW4yAmDarXmSZjCdmE+NPI9KdtX3kmNIjDpcd6gM
 c5xHZyf4uIJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="166015530"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="166015530"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 02:23:32 -0800
IronPort-SDR: fJLY/kG+tNj/50H2K5EziUs1yUTO1xIsRsZ7JosoQ5GdfVu0gC/vvsO+FPeAjkt5yOq1C7SFbS
 qQnykmh8xvUA==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="400853557"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 02:23:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <161054872713.6195.17613762724297206864@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210113141317.30765-1-jani.nikula@intel.com>
 <161054872713.6195.17613762724297206864@build.alporthouse.com>
Date: Thu, 14 Jan 2021 12:23:27 +0200
Message-ID: <87v9bzq0kg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix the uint*_t types
 that have crept in
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

On Wed, 13 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2021-01-13 14:13:17)
>> Always prefer the kernel types over stdint types in i915.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks, pushed to gt-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
