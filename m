Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37DE18B03C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF17B6E9A1;
	Thu, 19 Mar 2020 09:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1D76E9A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 09:30:07 +0000 (UTC)
IronPort-SDR: JITZsb2ZkjUzXTBHu/wvVXf+EwsDrKDsNCwbPX8w1VZWI84RY4Rzwm3qUpa+9kAxIZRfMHKMEe
 1/dmPydGzOsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 02:30:07 -0700
IronPort-SDR: svhysSgjlXD8c0rrPHYJVzNecWFmQjWMrhiUrVuJ94xInsXec+kO9qBpMOojDx9M60+8p0Z+pd
 qscCfeNwx32A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="291578572"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Mar 2020 02:30:06 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 09:30:05 +0000
Date: Thu, 19 Mar 2020 11:30:03 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20200319093003.zagegwlakj35en56@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20200319092034.695709-1-arkadiusz.hiler@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319092034.695709-1-arkadiusz.hiler@intel.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Increase the DDI idle
 timeout to 500us
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

On Thu, Mar 19, 2020 at 11:20:34AM +0200, Arkadiusz Hiler wrote:
> Bspec says that we should timeout after 500us. Let's match this in the
> code. It may help with few of the timeouts we see here and there.

Plese disregard. it's 500us when waiting on non-idle and only 8 (16
for BXT) for back to idle.

-- 
Cheers,
Arek
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
