Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C93CC26D3EB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 08:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2936E11D;
	Thu, 17 Sep 2020 06:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299D16E11D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 06:48:18 +0000 (UTC)
IronPort-SDR: r1+9ej6aLAFBrNeYZnR/lrHI3owApU2XrGQIoGI+koqtkFIgOg41gq/u/DTGx20wNDOb0n1fwN
 7TCA3o4dgw2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="158941256"
X-IronPort-AV: E=Sophos;i="5.76,435,1592895600"; d="scan'208";a="158941256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 23:48:17 -0700
IronPort-SDR: LukEWjqgy8A1AAWM0KgPGeE9WlEpcZafVfOn/7zfnTzQa9y08vzHl6zk9qtSFF5psjBgXbqZWh
 2dPShMAU4PUQ==
X-IronPort-AV: E=Sophos;i="5.76,435,1592895600"; d="scan'208";a="508287640"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 23:48:16 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kIniI-0002Kn-8Y; Thu, 17 Sep 2020 09:48:14 +0300
Date: Thu, 17 Sep 2020 09:48:14 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <20200917064814.GB7444@platvala-desk.ger.corp.intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <160028134210.19374.12969903715505955797@emeril.freedesktop.org>
 <b2366829-8040-075e-59f8-9a92e749ed99@Intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2366829-8040-075e-59f8-9a92e749ed99@Intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_v49?=
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

On Wed, Sep 16, 2020 at 06:22:45PM -0700, John Harrison wrote:
> Hello,
> 
> The failures below all appear to be because the new GuC firmware was not
> found on the test system.
> 
> My understanding is that all we need to do to get the CI system to update
> with new firmwares is to push the firmware to a branch on the FDO
> drm-firmware repo and then send a pull request to this mailing list. That
> was done yesterday.

That pull request used an ssh:// url though. Can you send it again
with a git:// url? I suppose that's a plausible reason why I don't see
the binaries in CI's deploy dir.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
