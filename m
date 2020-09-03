Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C67425C3AE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 16:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6FE76EA04;
	Thu,  3 Sep 2020 14:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD97E6EA04
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 14:56:27 +0000 (UTC)
IronPort-SDR: 88BpvAGchwYaW+i8vzBnD9MX+VLpKspzPdq676GMtvvS45YZXuZZIecLsvByl+/jwc3pDyZzhO
 WCNrQ0neKydw==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="137636631"
X-IronPort-AV: E=Sophos;i="5.76,387,1592895600"; d="scan'208";a="137636631"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 07:56:27 -0700
IronPort-SDR: GA773SBC+Lx8yPCK4WrQ16nxmOqsRWo6K5e7jSSRFZlEQyuqX0cXQ/sEcXVlPWYcO96AM1b8Hi
 kvhn7RPl+KWQ==
X-IronPort-AV: E=Sophos;i="5.76,387,1592895600"; d="scan'208";a="446931996"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 07:56:25 -0700
Date: Thu, 3 Sep 2020 17:55:09 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200903134755.GV6112@intel.com>
Message-ID: <alpine.DEB.2.22.394.2009031753180.3186@eliteleevi.tm.intel.com>
References: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
 <20200903134755.GV6112@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1108801853-1599144912=:3186"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix regression leading to display
 audio probe failure on GLK
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1108801853-1599144912=:3186
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hey,

On Thu, 3 Sep 2020, Ville Syrjälä wrote:

> On Tue, Sep 01, 2020 at 06:10:36PM +0300, Kai Vehmanen wrote:
>> In commit 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking
>> to separate function") the order of force_min_cdclk_changed check and
>> intel_modeset_checks(), was reversed. This broke the mechanism to
> 
> Amended the commit msg with a bit more details:
> "[vsyrjala: It also broke the ability of planes to bump up the cdclk
> and thus could lead to underruns when eg. flipping from 32bpp to
> 64bpp framebuffer. To be clear, we still compute the new cdclk

ack on that, thanks!

> The "Fixes" line was also a bit wrong: )" vs ") at the end. Took
> me a while to figure out what dim was complaining about :)
> 
> Pushed to dinq. Thanks!

Uh, sorry about that. I actually fixed that in some (?) version due to 
checkpatch warnings, but apparently it slipped though. Sorry about that, 
took me a while to figure it out, as well :)

Br, Kai
---318106570-1108801853-1599144912=:3186
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-1108801853-1599144912=:3186--
