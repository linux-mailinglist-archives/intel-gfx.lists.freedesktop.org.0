Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B973476F9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 12:20:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C810D6E9C6;
	Wed, 24 Mar 2021 11:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C906E9C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 11:20:30 +0000 (UTC)
IronPort-SDR: 8VYPilypy4YDwt73kAjJyoA632V0fykkDD8s2cb1U9wyNhxYofUxsglqkE7cAcTFtdZEMnWwZe
 Nq778yyU5uPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="275794380"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="275794380"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 04:20:29 -0700
IronPort-SDR: aUI+FIQQ/g0RcrsPGXuDPH+SN9Svjea7dF0yNQKdy8ZPek9dFMBXTAkm26hF1F6eWF3UC4AzDq
 qBIMMfaVQLGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="381731533"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 24 Mar 2021 04:20:29 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Mar 2021 04:20:28 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Mar 2021 16:50:26 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Wed, 24 Mar 2021 16:50:26 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/audio: set HDA link parameters in driver
Thread-Index: AQHXAVFw2GP5NQ/BY0Wo7PDp+2OR7KqPxTGAgAN3R+A=
Date: Wed, 24 Mar 2021 11:20:26 +0000
Message-ID: <72848ff6735d4e2b827edd65fbf2ebe9@intel.com>
References: <20210212150838.2568483-1-kai.vehmanen@linux.intel.com>
 <alpine.DEB.2.22.394.2103221352330.864696@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2103221352330.864696@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: set HDA link parameters in
 driver
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



> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: Monday, March 22, 2021 5:24 PM
> To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH] drm/i915/audio: set HDA link parameters in driver
> 
> Hi,
> 
> On Fri, 12 Feb 2021, Kai Vehmanen wrote:
> 
> > Update logic to program AUD_FREQ_CNTRL register based on new guidance.
> > Earlier this register was configured by BIOS and driver discovered the
> > value at init. This is no longer recommended and instead driver should
> > set the values based on the hardware revision.
> 
> any chance to get this merged? This has a reviewed-by already and all tests pass:

Hi Kai,
Can you rebase and resend, I will help merge this.

Regards,
Uma Shankar

> https://patchwork.freedesktop.org/series/87040/
> 
> Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
