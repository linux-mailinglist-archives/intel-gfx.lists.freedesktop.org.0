Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6C12C0FE8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 17:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF1E896D8;
	Mon, 23 Nov 2020 16:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9689F896D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 16:19:32 +0000 (UTC)
IronPort-SDR: 5zmeZcRVq0haeLQFmlcFMBRs+GeyM23oA11nlLPu4CgjqMX0COYpzuA2y+3TWfLFS7dkW16Gl2
 SXKzixZQ8qqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="158836086"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="158836086"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 08:19:31 -0800
IronPort-SDR: U9B/thr/Bg6UHjjgalAlXfiuegOSyAW5wDf4BvUjx+hXQgZDUPE8jtHx+6MUYJnzXQbVv98ELn
 EyGbiG2BheEA==
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="546474258"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 08:19:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Paul Gardiner <lists@glidos.net>, intel-gfx@lists.freedesktop.org
In-Reply-To: <d89b2287-51dc-87a5-4e38-022b0b8da648@glidos.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
 <87sg98ox2i.fsf@intel.com> <d89b2287-51dc-87a5-4e38-022b0b8da648@glidos.net>
Date: Mon, 23 Nov 2020 18:19:13 +0200
Message-ID: <87v9dwm4fy.fsf@intel.com>
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

On Sat, 21 Nov 2020, Paul Gardiner <lists@glidos.net> wrote:
> On 17/11/2020 14:52, Jani Nikula wrote:
>> On Thu, 29 Oct 2020, Paul Gardiner <lists@glidos.net> wrote:
>>> I use an open source DVR called MythTV. I've just swapped from using
>>> nvidia graphics to intel graphics. Generally it's working great, but
>>> I've run into one thing I used to do with the old system that I cannot
>>> find out how to achieve with the new.
>>>
>>> MythTV doesn't currently entirely handle starting without a TV
>>> connected. With nvidia graphics I could specify, within the X config,
>>> the "ConnectMonitor" and "CustomEDID" options to fool MythTV into
>>> thinking there was a TV. With intel graphics I can load EDID, but so far
>>> I haven't discovered an equivalent of the "ConnectedMonitor" option.
>> 
>> Sorry for the delay, I seem to have missed this.
>> 
>> Please try a kernel command-line parameter to force enable the
>> connector.
>> 
>> video=TV-1:e
>> 
>> Assuming the connector name is "TV-1"; replace with whatever you have.
>
>
> Thanks for the reply. I gave that a try, in my case "video=HDMI1:e", but 
> saw no difference. That's KMS, right? Is there anything I might have 
> failed to install or enable that KMS relies on? Are there any logs I 
> should monitor?

I think it should probably be HDMI-1 with the hyphen; is that a typo
above or in the command line you used?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
