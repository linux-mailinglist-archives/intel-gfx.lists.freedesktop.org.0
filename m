Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7739306E28
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 08:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1FB6E8E5;
	Thu, 28 Jan 2021 07:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8DF6E8E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 07:10:09 +0000 (UTC)
IronPort-SDR: dbB5fxquzPfBnFThkVYCG1WVK3UozmjfxWV/7mpSaW0omCO5FguZoe5Om/0SFpavtXzsztgc6f
 jDHQBjo9x2VA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167864787"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167864787"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:10:08 -0800
IronPort-SDR: vo+mtbplnLLQiVAczXr3KqTzB2nPFMQW3UhvdSmPbuHH9oWiB6N3aylmjCRr2KY7kdeOHTsSLb
 Au8cDwKtdQjA==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430412333"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:10:07 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1l51RH-0003VI-5c; Thu, 28 Jan 2021 09:09:59 +0200
Date: Thu, 28 Jan 2021 09:09:59 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Message-ID: <YBJjRyhik33fgljY@platvala-desk.ger.corp.intel.com>
References: <20210106223909.34476-1-sean@poorly.run>
 <161128337637.14036.11941412627307128800@emeril.freedesktop.org>
 <1fc478adfaab48daa99274b11305a80a@intel.com>
 <743c338632c44d968124aca0ed91a324@intel.com>
 <b2ffe29075af49369d31d04f02e9db1d@intel.com>
 <15ac9308013f44b59f7fce1c9bbcd505@intel.com>
 <1b91e8b2003f4f2bbdac6a9f06ede430@intel.com>
 <62f6e6f61d3741e7907a27759f1835bc@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62f6e6f61d3741e7907a27759f1835bc@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Disable_the_QSES_check_for_HDCP_1=2E4_over_MST_?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 27, 2021 at 09:13:36PM +0200, Vudum, Lakshminarayana wrote:
> I am not totally sure why shard run is not triggered here https://patchwork.freedesktop.org/series/85555/#rev2
> @Latvala, Petri any help here?

The results were there but reporting it failed. Re-reported it and
it's now on patchwork.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
