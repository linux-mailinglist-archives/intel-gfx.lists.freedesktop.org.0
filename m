Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F871D46EA
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 09:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5AB6EBF5;
	Fri, 15 May 2020 07:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0453C6EBF5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 07:19:11 +0000 (UTC)
IronPort-SDR: LOZopT3j80iNMGayjP7rXLcLKyhOWvl8hhK+5SFAeCiEmxdSdsGgxFYGRC9BM2GF2I9zfZaYNi
 OcLLb0sAWDnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 00:19:11 -0700
IronPort-SDR: Jrk6qV7hYjoO0edQCBmkrALZqD7HuvuZtQ7gQVF7TOUD6zTD890JOjfvP+HHyKked7Z5t93mbe
 bkJ6e+8LHvDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,394,1583222400"; d="scan'208";a="263105961"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 00:19:10 -0700
Date: Fri, 15 May 2020 12:40:06 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200515071005.GL10565@intel.com>
References: <20200515061029.5008-1-anshuman.gupta@intel.com>
 <158952578529.12786.16589644460445428866@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158952578529.12786.16589644460445428866@build.alporthouse.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Update CP as per the
 kernel internal state
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

On 2020-05-15 at 07:56:25 +0100, Chris Wilson wrote:
> Quoting Anshuman Gupta (2020-05-15 07:10:29)
> > Somewhere in the line, state machine to set content protection to
> > DESIRED from kernel was broken and IGT coverage was missing for it.
> > This patch fixes it.
> 
> It's strange that you mention IGT, since what tests being run by CI
> never pass and have not been fixed for several months. As well as the
Actually IGT fix for the coverge was worked upon after discovering this issue.
https://patchwork.freedesktop.org/patch/349542/?series=72264&rev=1
above patch requires to merge after kernel patch.
> sporadic HDCP failures affecting unrelated tests, which have not
> appeared to have received any attention either.
This bug was not failing any igt subtest, as igt test coverage was missing, 
content protection igt test were passing.
Thanks,
Anshuman.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
