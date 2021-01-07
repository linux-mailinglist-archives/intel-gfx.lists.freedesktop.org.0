Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEEA2ECCF0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 10:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B208887E;
	Thu,  7 Jan 2021 09:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4194F8887E;
 Thu,  7 Jan 2021 09:40:07 +0000 (UTC)
IronPort-SDR: +cZvspZArlly0mHN5H+gvMGPi3YPyDuAKMK8xjOqeRj6i8EIZxacIFv9sVGDw/N+51UlJdIiDZ
 2zKvP9bKFWCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="173897124"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="173897124"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 01:40:06 -0800
IronPort-SDR: OZkcYlxE0D6RXFXEIUj9cBQA5xnrnq4eK7ObARdrYlhqRATujZ+3aIPhf9YURyU+/ENp7R7bwW
 dB41zasw36bw==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="351201034"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 01:40:05 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1kxRlz-00042T-03; Thu, 07 Jan 2021 11:40:03 +0200
Date: Thu, 7 Jan 2021 11:40:02 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210107094002.GL7444@platvala-desk.ger.corp.intel.com>
References: <20201204195007.10215-1-janusz.krzysztofik@linux.intel.com>
 <160992609788.26089.16341465923272154441@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160992609788.26089.16341465923272154441@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] runner: Don't kill a test on taint
 if watching timeouts
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 06, 2021 at 09:41:37AM +0000, Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-12-04 19:50:07)
> > We may still be interested in results of a test even if it has tainted
> > the kernel.  On the other hand, we need to kill the test on taint if no
> > other means of killing it on a jam is active.
> > 
> > If abort on both kernel taint or a timeout is requested, decrease all
> > potential timeouts significantly while the taint is detected instead of
> > aborting immediately.  However, report the taint as the reason of the
> > abort if a timeout decreased by the taint expires.
> 
> This has the nasty side effect of not stopping the test run after a
> kernel taint. Instead the next test inherits the tainted condition from
> the previous test and usually ends up being declared incomplete.
> 
> False positives are frustrating.
> -Chris


Do you have a link to a test run where this happened? This patch
didn't change the between-tests abort checks.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
