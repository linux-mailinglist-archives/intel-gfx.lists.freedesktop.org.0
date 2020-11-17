Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0662B67EA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 15:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEFAA6E288;
	Tue, 17 Nov 2020 14:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1E36E288
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 14:52:10 +0000 (UTC)
IronPort-SDR: pZpx2QCLVQAY4OggALMTq5+k7wBXGkQS06naFT6ls3L6ybMEvsYth7eJRBzhAQW1/UxgL5xsCT
 3PNrrB6gB87Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="171036359"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="171036359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:52:09 -0800
IronPort-SDR: 81zKrMcK+UNsdu2UqBTDmUZ6qaOQzYVkFuiwyop1NfZk6fOO3rSMLWX/Gh//sROU143jviJOvW
 B8TlQcN+LEbw==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="475948237"
Received: from nlugasi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.19.70])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:52:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Paul Gardiner <lists@glidos.net>, intel-gfx@lists.freedesktop.org
In-Reply-To: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
Date: Tue, 17 Nov 2020 16:52:05 +0200
Message-ID: <87sg98ox2i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Does the intel driver support faking a connected
 monitor?
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

On Thu, 29 Oct 2020, Paul Gardiner <lists@glidos.net> wrote:
> I use an open source DVR called MythTV. I've just swapped from using 
> nvidia graphics to intel graphics. Generally it's working great, but 
> I've run into one thing I used to do with the old system that I cannot 
> find out how to achieve with the new.
>
> MythTV doesn't currently entirely handle starting without a TV 
> connected. With nvidia graphics I could specify, within the X config, 
> the "ConnectMonitor" and "CustomEDID" options to fool MythTV into 
> thinking there was a TV. With intel graphics I can load EDID, but so far 
> I haven't discovered an equivalent of the "ConnectedMonitor" option.

Sorry for the delay, I seem to have missed this.

Please try a kernel command-line parameter to force enable the
connector.

video=TV-1:e

Assuming the connector name is "TV-1"; replace with whatever you have.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
