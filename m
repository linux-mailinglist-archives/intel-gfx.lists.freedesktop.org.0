Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23A2CEF06
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 14:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF0166E174;
	Fri,  4 Dec 2020 13:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5B36E174
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 13:52:53 +0000 (UTC)
IronPort-SDR: MRkWWQz4RDEDGlhxsJvn32OllADu4/kr1qbbPXeYccsVKDqR0xhZxUtVb8slpoVc2qgxtPk+FS
 egC+1fm0uKYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="237492980"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="237492980"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 05:52:52 -0800
IronPort-SDR: zkbDC9WShzi8hiEHL2QYawlrNsqWBLUuQM0EanKLSu7e+eYO0MbHANJZHIcMpPs8cywdtSN2yY
 Iu0Pw58mQASQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="316957968"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 04 Dec 2020 05:52:51 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Dec 2020 05:52:51 -0800
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Dec 2020 05:52:50 -0800
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Fri, 4 Dec 2020 13:52:48 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v6 0/2] Re-enable FBC on TGL
Thread-Index: AQHWyBAxrv2cR7FNSE2POtKqHlKe6KnjyKEAgAMPwQCAACDO8A==
Date: Fri, 4 Dec 2020 13:52:48 +0000
Message-ID: <3faa73476f964d9584bcd88ca741b7e8@intel.com>
References: <20201201190406.1752-1-uma.shankar@intel.com>
 <589b1215583ae4dc934021c17d3488b7fee32cdb.camel@intel.com>
 <2ea42ef4e7274832b81c2c3c6791c944@intel.com>
 <160708288487.1246.7191272484320906672@build.alporthouse.com>
In-Reply-To: <160708288487.1246.7191272484320906672@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 0/2] Re-enable FBC on TGL
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

Hi, 
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris Wilson
> Sent: perjantai 4. joulukuuta 2020 13.55
> To: Shankar, Uma <uma.shankar@intel.com>; Souza, Jose <jose.souza@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [v6 0/2] Re-enable FBC on TGL
> 
> Quoting Shankar, Uma (2020-12-02 13:09:34)
> >
> >
> > > -----Original Message-----
> > > From: Souza, Jose <jose.souza@intel.com>
> > > Sent: Wednesday, December 2, 2020 12:01 AM
> > > To: Shankar, Uma <uma.shankar@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: ville.syrjala@linux.intel.com
> > > Subject: Re: [v6 0/2] Re-enable FBC on TGL
> > >
> > > LGTM, thanks for doing the changes.
> >
> > Pushed the series to dinq.
> > Thanks Jose and Ville for the review and feedback.
> 
> And CI is reporting pipe underruns again, that seem to date back to re-enabling FBC.
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9441/fi-tgl-
> y/igt@gem_exec_gttfill@basic.html
This still old step/ifwi. 

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
