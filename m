Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E34038C3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 13:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330916E192;
	Wed,  8 Sep 2021 11:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2865489875
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 11:31:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="306018335"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="306018335"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:31:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="503528072"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:31:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: David Airlie <airlied@redhat.com>, Dave Airlie <airlied@gmail.com>
Cc: "Development\, Intel" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <CAMwc25q05MtC_CUuhF5xxGMXsb9TQLd7b+GvPRm90gzvA69jGg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-3-airlied@gmail.com>
 <CAMwc25q05MtC_CUuhF5xxGMXsb9TQLd7b+GvPRm90gzvA69jGg@mail.gmail.com>
Date: Wed, 08 Sep 2021 14:31:43 +0300
Message-ID: <87h7ev5mn4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915: make update_wm take a
 dev_priv.
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

On Wed, 08 Sep 2021, David Airlie <airlied@redhat.com> wrote:
> On Wed, Sep 8, 2021 at 10:39 AM Dave Airlie <airlied@gmail.com> wrote:
>>
>> From: Dave Airlie <airlied@redhat.com>
>>
>> The crtc was never being used here.
>
> /me realises I've noobed up the Sob on these,
>
> I've added them to my tree locally and in the branch I posted to the
> other thread., if there are comments/no comments I'll add them in a
> respin tomorrow.

Please also add commit messages to the ones that lack one.

Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
