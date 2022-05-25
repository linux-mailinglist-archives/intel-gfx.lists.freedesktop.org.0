Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0912553365F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 07:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28763112B86;
	Wed, 25 May 2022 05:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7704B112B86
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 05:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653456361; x=1684992361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uB/ggmznJTR/bLHCa3eM7wcGjaV8CWcjlo3Y6r/5D7M=;
 b=QYGsxJInfVzXqrlEEGmTd2kJpxo2DrHbLnYrBlraqAuqifcVHb3+km/r
 iOCAToQQ8A3tTOoz8hVw6OlTXwAqcacPoDNFp9wDp4KzgSPBogPbhmtvh
 tsKMVeunu9zfk9jxluGDbH+KltEK8Qqd7EylKCk0cC4NQF+PIFrep4Xzy
 2skbAfV9Q8ZaCOfokrq7PrLOQIdFQzOAgooh2FjYokus7A5pYzOaH6rpo
 fUVCv8eZDazgptPH+C7jTjdVmtIxvq40rfr2l0pURQJ5wEb9UWcY/obfJ
 i6pTgVyxo7+0IftyDHTfqT5NiIgRgMTO+zjanojJi3deo3t7Uje6W9Nyu w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273716748"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273716748"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 22:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="642230090"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 24 May 2022 22:25:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 22:25:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 22:25:59 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Tue, 24 May 2022 22:25:59 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>
Thread-Topic: [PATCH 2/3] drm/i915/hwmon: Add HWMON energy support
Thread-Index: AQHYbpVswupyPSLy9EaLrTDOXZvrea0vf9QA//+Q3bA=
Date: Wed, 25 May 2022 05:25:58 +0000
Message-ID: <e886468550ab46e498bf7fee1ea9585b@intel.com>
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
 <20220523110841.1151431-3-badal.nilawar@intel.com>
 <87tu9etdkl.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87tu9etdkl.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Add HWMON energy support
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Wednesday, May 25, 2022 10:27 AM
> To: Nilawar, Badal <badal.nilawar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Ewins, Jon <jon.ewins@intel.com>; Tauro,
> Riana <riana.tauro@intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/hwmon: Add HWMON energy support
>=20
> On Mon, 23 May 2022 04:08:40 -0700, Badal Nilawar wrote:
> >
> > From: Dale B Stimson <dale.b.stimson@intel.com>
> >
> > As part of the System Managemenent Interface (SMI), use the HWMON
> > subsystem to display energy utilization
>=20
> Energy seems to be hardly ever exposed in the kernel. Searching for
> 'hwmon_energy' shows only a single hit in drivers/hwmon/scmi-hwmon.c.
> We should see if there are real consumers for this and the reason for
> exposing this.
rc6_idle test opens energy sys fs to test the Entergy numbers via rapl inte=
rface(AFAIR that interface is via x86 MSR) but that interface is not availa=
ble to use for dgfx. If we can use hwmon energy interface. It can be levera=
ge for IGT tests?

Thanks,
Anshuman Gupta. =20
