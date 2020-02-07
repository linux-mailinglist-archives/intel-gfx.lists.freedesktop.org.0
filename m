Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50423155506
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 10:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5A36FBFC;
	Fri,  7 Feb 2020 09:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from spamshield.firefly-cloud.com
 (ec2-52-211-27-78.eu-west-1.compute.amazonaws.com [52.211.27.78])
 by gabe.freedesktop.org (Postfix) with ESMTP id D60596FBFC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:49:17 +0000 (UTC)
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 2C5111CC5E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:49:17 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 235621CC5E0
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:49:17 +0000 (GMT)
X-Virus-Scanned: by SpamTitan at eu-west-1.compute.internal
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 8454F1CC5FD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:49:15 +0000 (GMT)
Authentication-Results: spamshield.firefly-cloud.com; none
Received: from fireflyinternet.com (unknown [77.68.26.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by spamshield.firefly-cloud.com (Postfix) with ESMTPS id 8D9871CC5E0;
 Fri,  7 Feb 2020 09:49:13 +0000 (GMT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20145705-1500050 for multiple; Fri, 07 Feb 2020 09:49:11 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87wo8y91gf.fsf@gaia.fi.intel.com>
References: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
 <158101401457.15032.2403533196319855536@emeril.freedesktop.org>
 <158101475363.7306.14997471557241847879@skylake-alporthouse-com>
 <87wo8y91gf.fsf@gaia.fi.intel.com>
Message-ID: <158106894987.13899.6314201215207805869@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 07 Feb 2020 09:49:09 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgIGRy?=
 =?utf-8?q?m/i915/gt=3A_Apply_Enable_Boot_Fetch_to_MBC_control_register_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-02-07 09:44:00)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Patchwork (2020-02-06 18:33:34)
> >> == Series Details ==
> >> 
> >> Series: drm/i915/gt: Apply Enable Boot Fetch to MBC control register (rev2)
> >> URL   : https://patchwork.freedesktop.org/series/73107/
> >> State : failure
> >> 
> >> == Summary ==
> >> 
> >> CI Bug Log - changes from CI_DRM_7876 -> Patchwork_16465
> >> ====================================================
> >> 
> >> Summary
> >> -------
> >> 
> >>   **FAILURE**
> >> 
> >>   Serious unknown changes coming with Patchwork_16465 absolutely need to be
> >>   verified manually.
> >>   
> >>   If you think the reported changes have nothing to do with the changes
> >>   introduced in Patchwork_16465, please notify your bug team to allow them
> >>   to document this new failure mode, which will reduce false positives in CI.
> >> 
> >>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/index.html
> >> 
> >> Possible new issues
> >> -------------------
> >> 
> >>   Here are the unknown changes that may have been introduced in Patchwork_16465:
> >> 
> >> ### IGT changes ###
> >> 
> >> #### Possible regressions ####
> >> 
> >>   * igt@i915_selftest@live_gem:
> >>     - fi-snb-2600:        NOTRUN -> [DMESG-WARN][1] +5 similar issues
> >>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-snb-2600/igt@i915_selftest@live_gem.html
> >
> > Oh well.
> 
> But this is expected as the hw will clear it at some point.

What we are reporting is that the bit does not stick after writing it.
We apply the w/a, on module load, resume and after reset; the times that
were mentioned in the excerpt as being when the HW sets it to set. It
was not mentioned that the HW would clear the bit at any other time, at
least in the doc I found (it definitely wasn't mentioned as being a
temporary bit that is cleared by HW when it completed whatever task it
performed).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
