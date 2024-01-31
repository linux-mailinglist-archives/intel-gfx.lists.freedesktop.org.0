Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A305984361D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 06:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D905B113918;
	Wed, 31 Jan 2024 05:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906DF113918
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 05:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706679304; x=1738215304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbkdKwr679cpDzMGtLl+AIOmHOq5bAOliKWHCZD90FE=;
 b=JMZIr8M07zIvxNLay74IICMxT+OrYrAFnoFEwngibAsDsOpYv4dj7Pn1
 kE+C/S88XYSt0h5UfxC3wq1aTKEa1h8cpK5pmTCxKPBdyydHjAzdp3qfP
 pi5yxAX9a/+kLUoKfUj8WRzY8lF8LAmXHGfTFLF0HI+QkMARPMY29v3FR
 SnFSGdnPJIdB4EEZWvdoReAnhTE5q9t7/KoLq2zM+Ru8lkZv5LkBThmYg
 HILlQhnGbBZpWVVvKLHGputVP72wMJHrGB6XaF+nE72/bOYDehW65rxo0
 4dNVYe4fZmKuHAJqrgA1/tjGRS9Na6Qv7J/+0SRJ7BTEYJdpr9dW2wOMu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="24971246"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="24971246"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 21:35:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="3974955"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 21:35:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:35:02 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:35:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 21:35:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 21:35:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DG2ei7/dVU84kEy0uBZuuo/GEQ0Gp363VR2pF26SmuzGM4Gf0AF0XVTWzmgFDZ3DJDL0DhCyGgfvmXknxxyBukEo7slTq7kXfHidBjPIyKmBzEzCCoIGDPkV1cVq35li9ZviXeniWwvVYlbNeJVwGs/h3I+fNBdEyhFfCWNdysgtYFdc0wGjNzITcHNFIsCZnDyC6nnoofkXYteRf2mKEvUVApt6SH3pX+7smYGqqcK8C7XfTBDq0DJR+RNFEtf/kd8zKklD4ZdtDc/73gpWWFknW+gm/g/qdDzxT3GzchQZUSjtqbUipR6yxEYg6jy0JRxOh9chbt7K6QoAYaXGHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yedwZgGRVmExgaEu05XuxT1iPJSvuusItIHDqIfa+R4=;
 b=FZkoIUzDSeN9z29hikRP8ZzfjLt/Y4+V2fQKROdsFEhnjBxd5/sQaYV+D0rC/cwE/M81SZzcgUpbgS3qXbxgv8uRJL7S8OX/S3l6/zrQRxKZcRhP4G+Ig7EVaJOmsrG27ovpkG5hMPVhBNq8HeYEmiqv+ZbuIclie7nV+7048roUJfZtXAK92HJOnCnA+CwTeS6oAAdGIHXwha3mqzO4OfTaIA9MUwsYSTGt/jLaeoeV3HCKmtILx5zO2BzRkSxtJT4+yUQ7WClKBisr7I5+y0PsJ15DqYMU0al2NT/1jzx/SdW+2BUTh58HUU0ZMwRewEppwSyoTKNIKHY2rtCgug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 SA3PR11MB7583.namprd11.prod.outlook.com (2603:10b6:806:306::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 05:34:53 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::4ab5:6727:1234:7440]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::4ab5:6727:1234:7440%4]) with mapi id 15.20.7228.035; Wed, 31 Jan 2024
 05:34:53 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>
Subject: Regression on drm-tip
Thread-Topic: Regression on drm-tip
Thread-Index: AQHaVAc3iiW0bi9fxUiCKBue2f8ELQ==
Date: Wed, 31 Jan 2024 05:34:53 +0000
Message-ID: <DM4PR11MB614179CB9C387842D8E8BB40B97C2@DM4PR11MB6141.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B0FAD6E18FD3FA56C981B986A@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129B0FAD6E18FD3FA56C981B986A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6141:EE_|SA3PR11MB7583:EE_
x-ms-office365-filtering-correlation-id: be89f8d8-e050-4613-d567-08dc221e5a15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f8mjXy98ANJ9kH/8iv5rGa2rcYOGvMyuVEJLlaczMfTyHWvmWRthMQI5SLVcLTMGYEchTmr74RE+9IkUbw+lzulotQzRN6BgH/67z94yNE2MFDJkribmtmGGeZ5ADCoyQqgPaSe6uz6XBocxKOAXrIBJT721od/BvZUDCWiFS5bKwTraVvoU0Z4ezYFZO0PZazpMsAi5p4HKT5VguHt/HpfgOMATd2GCpPxERpv2pR35HC3zjkbBkZZ1LWJwcVL8iAzh0Dh4WClIDtvSSMm+e87ePtGheKUh8BVhYKbGreb8qmOYKf5wnYc1PAKiukPStwKk52Qr7VDtA6ZfoKBkgsu1iMZAZ5Vq614c8ycAXWtwFh2YV5zFLPUoGxWB0CjH9lhchZNgAdj4TrXHKcDRlJMCWMPlgPcGqOKk8SyJkCBUJU1x/K2XK2g5dc+MtAQgrYOmIOgwcCj4jmWL5GuOBBtdAbaVgt4+tAKdR0s8Sc0n7oCFcdKPHMcnib1ujV5ajj/Gd1sZ6IIz1CqYVJD8AMPxiRJRk7X2WaACFk3gxORkwPqt0Ac07HfI/duHGi33NVXuLJOQnPuVN78jCtZRvyjtmrDy4XMirQ7qChJ4nufsRzzYZ6QNRng9yUR+/xrK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(376002)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(316002)(82960400001)(55016003)(66446008)(66476007)(66556008)(66946007)(6916009)(64756008)(122000001)(2906002)(54906003)(8676002)(8936002)(4326008)(52536014)(9686003)(38070700009)(86362001)(3480700007)(76116006)(5660300002)(33656002)(38100700002)(83380400001)(107886003)(26005)(71200400001)(7696005)(6506007)(966005)(41300700001)(478600001)(55236004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MX+DdsHdWrNTzIbXsjg5NWPDKZMEyylk4ITSSLmMJmmBR1Fuq9bmYMMugXRF?=
 =?us-ascii?Q?7o67c29PfxqUw50G8CBiVWKcLnSv43Q8vyYDiY02/HzL0yusMzq9RbzV53xI?=
 =?us-ascii?Q?0JYCUQLB29blBYQGEJL/NpLreKG056dtQDrqw4kcVtk9DrrEOgOZueQ69TDO?=
 =?us-ascii?Q?HaeHJze0WXsBRcjuVVYCIDqNy9MS4wwE1xjqRBSkbZt72nGbGRoaalnN6xI/?=
 =?us-ascii?Q?/3xPQtRV7ylwSjQorJ623mcnmCiVqzVoJQ8JjDxfKUMh2orj+DKRoSNgRymP?=
 =?us-ascii?Q?wkhX+acQPnu0l3bIOPc+mV1VvfDmVNpCGZjYzcpF7mtrV1xSA4293kWuqmQ5?=
 =?us-ascii?Q?wB8yEl3Xqe7HxpupTcFC7w30TqGTrKd+lwlPcD0ndFzPsMBKWaGypgpqFp/N?=
 =?us-ascii?Q?GLZ7DO12VHwTn6MFFDRAikmjhfMJ+3IWKnGghgoFWrk3A2v7p3+DoMC/8YlP?=
 =?us-ascii?Q?VWsnU9mxRb7mUQfC85KqcFLMR8KR5LVjPnA70DWp60XXM13eQDISyCsMU+bO?=
 =?us-ascii?Q?nwc2nomyOF4Q8wDxhdXaDgcKSVogg9fCp6aUj6Z4g6IFcVIDJB9OIk6yLHwl?=
 =?us-ascii?Q?601g5hbJAliDkpA3WnnHkeOY9/rGd4cEy93dMSq6yu2hMTPDw05oL9TveHCl?=
 =?us-ascii?Q?+esEZ2O4146f/Jz1JzJ4D4bnpjDequ1VYzwqK5UhItMul3zEE0fzXu9iKCAc?=
 =?us-ascii?Q?UxWd+dt9/Wce2fmv9rFK+ofSfltrCuOljhNoFZH5oYhJWhD7o9l9hEmF8jJZ?=
 =?us-ascii?Q?xGHpb5xTgTRfV+AaCUeyDRuUIKStdOrYJXIIM6JA3LI/74TaKbbju2Q0rYT8?=
 =?us-ascii?Q?WoZ54qHyRsioBnJ7jB8CAY89XGUu/m2DQrOhUWaAk19IPvzMuH7mNqtrFDxw?=
 =?us-ascii?Q?BgUxL7xcnhOln0S+JqMufoFYb91e4ORu4jFPqZoWxfaz/lNgmuo/OKe40Omr?=
 =?us-ascii?Q?K/YJwNLF4SWp3wR2wZwf8yPaqGICl307l6VlSZq49ARFwpA0ZOl6GYUuLDXY?=
 =?us-ascii?Q?n8QkrCDX2dqnz2ydrD1oesAid21yG1b8tO5HzxS9UpcOBCOOMmE2JVtgaQhJ?=
 =?us-ascii?Q?kA34yFBmnU4keToojXfQeld91wiCOdsPOYoWHHIRV92GbcDw4/7/FrQRSILQ?=
 =?us-ascii?Q?HVIbR+I4Ere6W3XeXlzQSU6O0EOjfz4y0Jh/n53zKLvs+zJmpuCMQjnfcBSG?=
 =?us-ascii?Q?igFg4QyCWU6vc8CPbNsXDzS0WLR5lg+ueExcLiXVc6fQgxNVgb1MQDrgTKPG?=
 =?us-ascii?Q?mt/YSU4+2lCwneoKHjU88Nw9uzzwKQfsUS0XQ827y1McZNWHnIb/3s93H8EQ?=
 =?us-ascii?Q?FysY9pib82ml4qpWTn1hzY1Jia/NtZ9e0MNEZedBdsuLdQOV+IF0p84sF/d+?=
 =?us-ascii?Q?vWg8QJSr9i4NKcCei3nRXW0Jvv7S/DYCASTyf2lOth3yfrgmk1C77k6o9wMo?=
 =?us-ascii?Q?16Ofy0tYez87HVoysRhW++GA2WsBMoIdgjuGNS0tyVFudY3Ds9Sw0jif11O3?=
 =?us-ascii?Q?CKVaVbywXfGAHXhHBWvnO7GnJqimRg4QtDKQA22ajdKDbQNAj48yVaXaTV5Y?=
 =?us-ascii?Q?xfjHfXuyw30t+bJ9Cph0XrCiZo4MxV1tHb4qa4QHZ7WlGuY/lLYEzEunSk0v?=
 =?us-ascii?Q?Mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be89f8d8-e050-4613-d567-08dc221e5a15
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 05:34:53.5389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q/DRbgZ0qxQXGRLRSEvzB1XqlbjMLQ2NMJWTk9b8MGcTBgks4xemRmN0hUfYPNX5sxzIG79KDCmPXwPfa5UsgN19v4ryuzeM1xU/riB0ZN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7583
X-OriginatorOrg: intel.com
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Richard,

Hope you are doing well. I am Chaitanya from the Linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on drm-=
tip[2] repository.
These are captured by gitlab issues[3].

We bisected the issue and have found the following commit to be the first b=
ad commit.
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit a0b84213f947176ddcd0e96e0751a109f28cde21
Author: Richard Fitzgerald rf@opensource.cirrus.com
Date:   Mon Dec 18 15:17:29 2023 +0000

    kunit: Fix NULL-dereference in kunit_init_suite() if suite->log is NULL

    suite->log must be checked for NULL before passing it to
    string_stream_clear(). This was done in kunit_init_test() but was missi=
ng
    from kunit_init_suite().

    Signed-off-by: Richard Fitzgerald rf@opensource.cirrus.com
    Fixes: 6d696c4695c5 ("kunit: add ability to run tests after boot using =
debugfs")
    Reviewed-by: Rae Moar rmoar@google.com
    Acked-by: David Gow davidgow@google.com
    Reviewed-by: Muhammad Usama Anjum usama.anjum@collabora.com
    Signed-off-by: Shuah Khan skhan@linuxfoundation.org

lib/kunit/test.c | 4 +++-
1 file changed, 3 insertions(+), 1 deletion(-)
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
We tried reverting the patch and the original issue is not seen but it resu=
lts in NULL pointer deference[4] which I am guessing is expected.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?
=20
[1] https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=3Ddrm
[2] https://cgit.freedesktop.org/drm-tip/
[3] https://gitlab.freedesktop.org/drm/intel/-/issues/10140
      https://gitlab.freedesktop.org/drm/intel/-/issues/10143
[4]
	[  179.849411] [IGT] drm_buddy: executing
	[  179.856385] [IGT] drm_buddy: starting subtest drm_buddy
	[  179.862594] KTAP version 1
	[  179.862600] 1..1
	[  179.863375] BUG: kernel NULL pointer dereference, address: 000000000000=
0030
	[  179.863381] #PF: supervisor read access in kernel mode
	[  179.863384] #PF: error_code(0x0000) - not-present page
	[  179.863387] PGD 0 P4D 0
	[  179.863391] Oops: 0000 [#1] PREEMPT SMP NOPTI
	[  179.863395] CPU: 1 PID: 1319 Comm: drm_buddy Not tainted 6.8.0-rc1-bise=
cttrail015 #16
	[  179.863398] Hardware name: Intel Corporation Meteor Lake Client Platfor=
m/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3471.D81.2311291340 11/29/20=
23
	[  179.863400] RIP: 0010:__lock_acquire+0x71f/0x2300
	[  179.863408] Code: 84 03 06 00 00 44 8b 15 27 f6 72 01 45 85 d2 0f 84 9c=
 00 00 00 f6 45 22 10 0f 84 63 03 00 00 41 bf 01 00 00 00 e9 8a 00 00 00 <4=
8> 81 3f 40 d7 fa 82 41 b9 00 00 00 00 45 0f 	45 c8 83 fe 01 0f 87
	...
	[  179.863445] PKRU: 55555554
	[  179.863448] Call Trace:
	[  179.863450]  <TASK>
	[  179.863453]  ? __die_body+0x1a/0x60
	[  179.863459]  ? page_fault_oops+0x156/0x450
	[  179.863465]  ? do_user_addr_fault+0x65/0x9e0
	[  179.863472]  ? exc_page_fault+0x68/0x1a0
	[  179.863479]  ? asm_exc_page_fault+0x26/0x30
	[  179.863487]  ? __lock_acquire+0x71f/0x2300
	[  179.863493]  ? __pfx_do_sync_core+0x10/0x10
	[  179.863500]  lock_acquire+0xd8/0x2d0
	[  179.863505]  ? string_stream_clear+0x29/0xb0 [kunit]
	[  179.863523]  _raw_spin_lock+0x2e/0x40
	[  179.863528]  ? string_stream_clear+0x29/0xb0 [kunit]
	[  179.863540]  string_stream_clear+0x29/0xb0 [kunit]
	[  179.863554]  __kunit_test_suites_init+0x7e/0xe0 [kunit]
	[  179.863568]  kunit_module_notify+0x20f/0x220 [kunit]
	[  179.863583]  notifier_call_chain+0x46/0x130
	[  179.863591]  notifier_call_chain_robust+0x3e/0x90
	[  179.863598]  blocking_notifier_call_chain_robust+0x42/0x60
	[  179.863605]  load_module+0x1bcd/0x1f80
	[  179.863617]  ? init_module_from_file+0x86/0xd0
	[  179.863621]  init_module_from_file+0x86/0xd0
	[  179.863629]  idempotent_init_module+0x17c/0x230
	[  179.863637]  __x64_sys_finit_module+0x56/0xb0
	[  179.863642]  do_syscall_64+0x6f/0x140
	[  179.863649]  entry_SYSCALL_64_after_hwframe+0x6e/0x76
	[  179.863654] RIP: 0033:0x7f0e6676195d
