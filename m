Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC86746B321
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 07:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47998B139;
	Tue,  7 Dec 2021 06:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621378B138
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 06:44:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="236247094"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="236247094"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 22:44:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515332853"
Received: from gangshe-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.113.238])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 22:44:22 -0800
Date: Mon, 6 Dec 2021 22:44:22 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20211207064422.if3bq2e2wolzcryz@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211207023718.322349-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211207023718.322349-1-madhumitha.tolakanahalli.pradeep@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Change DMC FW size on ADL-P
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

On Mon, Dec 06, 2021 at 06:37:18PM -0800, Madhumitha Tolakanahalli Pradeep wrote:
>Increase the size of DMC on ADL-P to account for support of
>new features in the current/upcoming DMC versions.

I was trying to find anything related on Bspec 49193 and 49194, but
didn't find anything related to size.

However I see adl-p 2.12 firmware is already above the previous 24kB.
How did we ever loaded DMC? Yes, this is not the file size, but rather
the payload size, but AFAICS the rest should account for less than 1k,
so it doesn't make a real difference.

For this specific change:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
