Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A518259BDB7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B32B10E3AF;
	Mon, 22 Aug 2022 10:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969E410E3C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661164887; x=1692700887;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rpR7TgpqdSKV6MruVJ+wqOySa1v23E9LDLdm9eNo+XE=;
 b=KuBZGdmhX4X5lT0eN4eYvTnxwDjOeYUVS7flEf7APJfDu/1Q/mQ2HMob
 4l2JXwmGxrRCmjgek7daLbkwK8NGC7RsV7xj/HJ7PpvAIwGyZBOAf7U3o
 UrPsRGv6TkYMA7pyOY5GVgIfsIr/A0LFy/ah/IhudPeWFzaZ/YyirlVKI
 nkFznPxzf+f77QDHOW1r8b6sKIcjuv+ZVR1VX9vl0nL0H/lkRGngPJodF
 +xgMS1U16gHBZf18DD4rFldmibxfAsYHey5AYktfAsH4m/NkfapAhEW3N
 RAxrktlLK9RCBFUamDu2myWE8DD1n4aGo+L/QN/BeqhcTz7wglf1kz/B6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="379671309"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="379671309"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:41:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585469258"
Received: from trangnek-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.50.159])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:40:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <711ad883-894a-e371-37c0-af9744c04894@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220817124516.284456-1-jani.nikula@intel.com>
 <d33e683d-3ce7-b449-6998-1b72b8fa3629@intel.com>
 <87wnb0mw8x.fsf@intel.com>
 <711ad883-894a-e371-37c0-af9744c04894@intel.com>
Date: Mon, 22 Aug 2022 13:40:57 +0300
Message-ID: <87tu64muh2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc/mtl: Update the DSC minor
 version
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

On Mon, 22 Aug 2022, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 8/22/2022 3:32 PM, Jani Nikula wrote:
>> On Mon, 22 Aug 2022, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>> LGTM.
>>>
>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Thanks; does this apply to both patches?
>
> I have given RB on the other patch separately.

Thanks, both pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
