Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA7F15D340
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 08:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6946E353;
	Fri, 14 Feb 2020 07:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CB316E353
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 07:56:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:56:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; d="scan'208";a="227516379"
Received: from ablank-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:56:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200213232338.3746869-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200213232338.3746869-1-chris@chris-wilson.co.uk>
Date: Fri, 14 Feb 2020 09:57:09 +0200
Message-ID: <87h7zt61pm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] lib: Add a YAML emitter
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

On Thu, 13 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Provide a library to generate correct YAML for use in structured debugfs
> or similar information dumps. This will be useful to pull our large
> information dumps into a forwards compatible, parse-able file-format by
> forcing some structure upon ourselves!

Acked-by: Jani Nikula <jani.nikula@intel.com>

I like the idea. I like the prospect of converting *all* of our bigger
debugfs files to have some structure. Why not smaller ones too, to be
uniform. Not entirely sold on using it in sysfs, like the example code
did, but even that might be justified for capturing a state.

For many things I do like json, but yaml is definitely more human
readable as-is and more suitable for debugfs.

I expect the biggest uphill to be merging the bulk of stuff to
lib/. It's a lot of code in one go.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
