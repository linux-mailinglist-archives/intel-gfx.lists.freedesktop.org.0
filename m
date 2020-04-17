Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DFE1AD61E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 08:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD5A6E317;
	Fri, 17 Apr 2020 06:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9532D6E317
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 06:31:54 +0000 (UTC)
IronPort-SDR: NTjVReDjTyWbyKoKEIAdE3ySGHAG7v7jmHhFZMRNzULEX8x/RrdctwQbPu5w4d3jjd7LeGHtuB
 DEtnY68gzPZg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 23:31:54 -0700
IronPort-SDR: q5sf3NOTar8XrOh4rrAE5kVW/xZd1qE2eZHtopmZXKfEgZIHJx72vaqOTwMGn6HMrAhqYihRO3
 i5ZtIpM3ryzA==
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="428128798"
Received: from mcintra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.44.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 23:31:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Paauwe\, Bob J" <bob.j.paauwe@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
In-Reply-To: <2BC816AD90F74A48BE4D753FE4818233BC08623B@fmsmsx115.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200407215546.5445-1-bob.j.paauwe@intel.com>
 <20200407215546.5445-2-bob.j.paauwe@intel.com> <87blo2ifoz.fsf@intel.com>
 <87lfmv4x03.fsf@intel.com>
 <2BC816AD90F74A48BE4D753FE4818233BC08623B@fmsmsx115.amr.corp.intel.com>
Date: Fri, 17 Apr 2020 09:31:49 +0300
Message-ID: <87pnc639nu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Adding YUV444 packed format
 support for skl+ (V15)
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

On Thu, 16 Apr 2020, "Paauwe, Bob J" <bob.j.paauwe@intel.com> wrote:
> Thanks Jani!  What about the corresponding IGT patch?  Did that get
> pushed too so that this won't break CI?
>
> https://patchwork.freedesktop.org/series/70516/

Pushed now, thanks for the reminder.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
