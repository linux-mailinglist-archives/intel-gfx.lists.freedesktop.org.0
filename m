Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB293B05FF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 15:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CF66E041;
	Tue, 22 Jun 2021 13:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 927336E041
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 13:41:23 +0000 (UTC)
IronPort-SDR: 9shjUzl857hfI8R1sKhoRyuv1K51S491LZKggqMesDH8Zba3pEsA9jinR7scgTfI/MhZpdRRzc
 RZtcVGzSmfrA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206873529"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="206873529"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 06:41:21 -0700
IronPort-SDR: ns6RYT4PnssQDk3PnYixhijf9rqguS7KlW1f1LmUOqJ4/lCJnImQdzUgKBkq9TKxxnJRTDFtZ3
 pkGVVo6miRbQ==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="486917128"
Received: from shlomitt-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.221])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 06:41:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>
In-Reply-To: <20210621213447.GA20257@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210610090528.20511-1-jani.nikula@intel.com>
 <20210611231846.GA12407@labuser-Z97X-UD5H> <87wnqwyi06.fsf@intel.com>
 <20210621213447.GA20257@labuser-Z97X-UD5H>
Date: Tue, 22 Jun 2021 16:41:08 +0300
Message-ID: <877dimuidn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dsc: abstract helpers to get
 bigjoiner primary/secondary crtc
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

On Mon, 21 Jun 2021, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> Reviewed-by: Manasi Navare <manasi.dl.navare@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
