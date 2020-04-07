Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A701A1784
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 23:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C82D6E907;
	Tue,  7 Apr 2020 21:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056936E907
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:52:38 +0000 (UTC)
IronPort-SDR: O9NrGkxd6aPoeQBlUW9ntLlBQsSFzOcxnk5KgKi+APAAWf0Psx1b2xoDDfleK8ZyVvWUgVB9dG
 Y1LsTSP9uIYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:52:38 -0700
IronPort-SDR: qH8uLSdDfz3iMx4QKm8Rc/Q04qxYlUACf4c/t5qhHOtUNvJxTQLm1UAIPuolySJpRwNjEiGCzv
 RJ5WmXmoC5NQ==
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="424904812"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:52:36 -0700
Date: Wed, 8 Apr 2020 00:52:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200407215226.GA23597@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-4-jose.souza@intel.com>
 <20200407154207.GD21484@ideak-desk.fi.intel.com>
 <953592d02bb1c6587b4a12cd5dabb2926e8f3da5.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <953592d02bb1c6587b4a12cd5dabb2926e8f3da5.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915/tc/icl: Implement TC cold
 sequences
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
Reply-To: imre.deak@intel.com
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 07, 2020 at 11:01:14PM +0300, Souza, Jose wrote:
> [...]
> > > +	} while (ret == -EAGAIN);
> > 
> > Let's protect against an endless loop.
> 
> const ktime_t timeout = ktime_add_ms(ktime_get_raw(), 3);
> int ret;
> 
> do {
> 	ret = sandybridge_pcode_write_timeout(i915,
> 					      ICL_PCODE_EXIT_TCCOLD,
> 					      0, 250, 1);
> } while (ret == -EAGAIN && ktime_compare(timeout, ktime_get_raw()) > 0);

Why not just a simple

	trial = 0;
	while (1) {
		ret = pcode_write();
		if (ret != -EAGAIN || ++trial == 3)
			break;
		msleep(1);
	}

with the msleep(1), as if the PCODE run/busy flag didn't get cleared after
the 1ms polling, it probably doesn't make sense to retry in a tight loop.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
