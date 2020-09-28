Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A653827B2B2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 19:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE9689F8B;
	Mon, 28 Sep 2020 17:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1C189F8B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 17:07:17 +0000 (UTC)
IronPort-SDR: KZyEMeHFHJ/gOC+loxxqEjE8BBPeKxgtOlPShQ/S+4/SyTt8ObsonMRYeawCiuNOcMNhvCgga6
 VNzJZRYmyNRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="159410612"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="159410612"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 10:07:16 -0700
IronPort-SDR: tTaQRr/ppPENwpRoncpoCNFmrciMIP6nZLfuWkrJWVSsePuZppsEg+FETP7CTPL0oKkRjfZw7l
 drVbUZwnpnzQ==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="488665157"
Received: from lizwalsh-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.86.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 10:07:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200924124209.17916-1-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200924124209.17916-1-vandita.kulkarni@intel.com>
Date: Mon, 28 Sep 2020 20:07:31 +0300
Message-ID: <877dsdq17w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V14 0/5] Add support for mipi dsi cmd mode
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

On Thu, 24 Sep 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> This series contain interrupt handling part of cmd mode.
> Configuration patches were merged already.

Thanks for the patches and review, pushed the series.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
