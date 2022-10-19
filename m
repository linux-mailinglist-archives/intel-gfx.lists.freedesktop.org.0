Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B32604D8A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 18:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F2110E55F;
	Wed, 19 Oct 2022 16:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFFF10E9AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666197548; x=1697733548;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RzoV/sXA1lnNSRuZHUDeu2oqDvaDnWm7/KZazZklHHw=;
 b=Uf+bp7ZJ/VoI+Qrcx2yr0vn/JdEwxFg6gy9dZ9jr8eoefU5BUyoOMp2X
 BurCtf0XIX32nSAfDUqpPBDhuRaM3MEJrEpam+3xhuWxT/RHtT04mwvTc
 Y/2BJ+Tx9cqv5VHwzd0x0R1Prln8g0Kk/3+ApT9dvEGfgIgHr4EG26nty
 tiGYBm7W3fIfsycD5wRcd/PAsfgxFjea57xiMBDWummqXJwb6EiSFDiGQ
 lzFCCAdwrHKRI4MzhwqRscyTieB3Id1e4yFU9qcLe+AeDp7nbGlt/Vy8a
 i3g8TvvZcYLnU4yG7Pxd6FH+7tsmAqqYKhYdtiaKhpw2DQ1rNHFUtCLVZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370685125"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="370685125"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 09:39:07 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="629339629"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="629339629"
Received: from mosermix-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.50.2])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 09:39:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <Y0+h++6NReFAZhrv@kroah.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87k04xiedr.fsf@intel.com> <Y0+fex0i0vmBL6QX@kroah.com>
 <Y0+h++6NReFAZhrv@kroah.com>
Date: Wed, 19 Oct 2022 19:39:02 +0300
Message-ID: <87pmenhiop.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] v5.19 & v6.0 stable backport request
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
Cc: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 Oct 2022, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 19, 2022 at 08:55:55AM +0200, Greg Kroah-Hartman wrote:
>> On Tue, Oct 18, 2022 at 02:02:08PM +0300, Jani Nikula wrote:
>> > 
>> > Hello stable team, please backport these two commits to stable kernels
>> > v5.19 and v6.0:
>> > 
>> > 4e78d6023c15 ("drm/i915/bios: Validate fp_timing terminator presence")
>> 
>> Does not apply to 5.19.y, can you provide a working backport?
>> 
>> > d3a7051841f0 ("drm/i915/bios: Use hardcoded fp_timing size for generating LFP data pointers")
>> 
>> Queued up to both trees now, thanks.
>
> No, wait, that breaks the build!
>
> How did you test this?  I'm dropping both of these now.
>
> Please resubmit a set of tested patches if you wish to have them applied
> to the tree.  These were obviously not even attempted, which just wastes
> all of our time :(

Apologies, misunderstanding on my part about them being applicable
as-is.

Ville has provided the backports. Thanks!


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
