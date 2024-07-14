Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F0D930B65
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2024 21:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941B410E1AA;
	Sun, 14 Jul 2024 19:50:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTkITR/G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7832910E1AA;
 Sun, 14 Jul 2024 19:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720986606; x=1752522606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h8bxWtSgvvF3xzI4yhb3MAF3jKb2EZcBmIrKCncTFsc=;
 b=fTkITR/G6oUsWC63dQKa/QuDJlTsjBoNv6+rwKZwiqjXctGyfCpe60ZA
 xlyOq0qCiOmUtfy/rtkxu9QfPmTOM1wUu0akSUChF2UnRirmz7RikdTze
 M5YPODveuJ9H6KdV+8QYujsbBywp9HqHqXx4aS1RMLvYUOsouNo5mDWK0
 4VOituYi1ahuNyZid5SSZbdd8/GCWp0/sJqwbP8pPuw6dkWk65PZKtVcY
 GkPm4rupqRE0uPjKn9aFM3gpellwYnneBXAXTtWW9DDMc4gqXRCFYhqSE
 wP0LAAAi6IqIDMlHisKMg1srVyEVigVJyd6sT2phYGN4eIGIp8ceFY8R8 g==;
X-CSE-ConnectionGUID: PyNj/ft9TDiqGuxAvOVmbA==
X-CSE-MsgGUID: NaNe2O7lQT2zGBT0Oxlb+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="17977989"
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="17977989"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2024 12:50:05 -0700
X-CSE-ConnectionGUID: Y0layCuZQaak7VPyBWs1Xw==
X-CSE-MsgGUID: y6XlG0aYTfu0NMHcPvZQhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="49799323"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jul 2024 12:50:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 14 Jul 2024 12:50:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 14 Jul 2024 12:50:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 14 Jul 2024 12:50:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Maf2WydJeaAgmRtCAct25c6ilIa5gwjI4Icyto5pDdqRMkw1RAzWKeFvLXX6GWyMTBa9NR6T4+ITs5UY0KTu2q5BqAkMLgsiBLHzensJ+bMWb9skn/23m0nytan6W4fe2dsIl7Ui+bd/cwxg0FLAnmcXWOGNgeO+9sIBkGGC9I8Q5iXDoUWqEtTovgjiH0K9oKnwThJaSrbVTIgfSLAx5UTO6/S1n4siZksSPN3Q1F+vP1G5y53B8L+SjHYGN6q2N56yPmBj+Z5d4kLBPKEn+u1SdbT+kc/GRsQS+pqY/UHAwQQ9xelYi1JqyIx232zKGyHwfjjRweZisYhLMBm/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLpRfv1hWUpsRlh8JpYgi+p/9m3whP42RY9E27k5A8k=;
 b=ujVhQ+hSt94mN/JuG5r8G3byEHhiQtuRv3nMQWxAlV7IGNfVhIf2FdbRqicB4iEcRU/ubFEEZXKuIXxPibj6orBHkMSr04bMynGMG+m0s5J9oS+FnnUQNacDdyp5IComPbo+kqxmV+O89GImHIHfCjONpLejxZvGNmqrkAO9yPHLrqHv7dt/6nMAnsSvKSZP7/aXBxYysn+SW3ebpxGjXS8y+IxHPFLEmTDMJ0KiPu2ruIpbjcXMZOp9hnLH6nwYvPYildJjtBn2zvrYB6+XiTLPRk4pYDnQn6H/ASZr0UvQkeU3GUgBFgoSEJ6VLnoV34kllin+yGZcJs71RbXMFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB6943.namprd11.prod.outlook.com (2603:10b6:806:2bc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.22; Sun, 14 Jul
 2024 19:49:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Sun, 14 Jul 2024
 19:49:55 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>
Subject: RE: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Topic: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Index: AQHa00/8oWCNr7uw3kau2bhh5YD5Q7HxuquAgAAIIACABOOgIA==
Date: Sun, 14 Jul 2024 19:49:55 +0000
Message-ID: <DM4PR11MB6360FC222F2ABD27877C8FEAF4A02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
 <20240711163741.GS2906448@mdroper-desk1.amr.corp.intel.com>
 <d2cqtxd5t7dxyf4qipzmz35zwj24yoa2bxtz2lp23zdcjvrye3@u6swnvfnvmwe>
In-Reply-To: <d2cqtxd5t7dxyf4qipzmz35zwj24yoa2bxtz2lp23zdcjvrye3@u6swnvfnvmwe>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB6943:EE_
x-ms-office365-filtering-correlation-id: 25e1ba5f-7fd1-49aa-54ab-08dca43e22bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FQUiCgNdw/JTufP8+iOopfVVjYjjp4YELwSgELsDYqks1u90WDO3Wr92sNvK?=
 =?us-ascii?Q?M113MB272URbhBnCjLhFB+KXs1h87cgIPDYXoWFvkvAgCf5X6VI/IWHY7B1U?=
 =?us-ascii?Q?DYemCdGWq4jnYkDxEhRY10G0JuSaAHkpHAdFcQelBqigl9/Z8b1o+3hzzLWP?=
 =?us-ascii?Q?lNthu+bBRXR/KXwwNDb96NxYUhRDXPwsB/UxCg60elLot+sV3UZTeE99mquV?=
 =?us-ascii?Q?xmrTHp76OJFVV7hdR443B2qjnnlRUZXY4OhEOA4vr2y7l6z0OwB/vNPYsh0/?=
 =?us-ascii?Q?U2ym+LI7pju9UuXnqAomR2uclfAJuFacrGarz/lBi3fySYON3+9ONXfdklk6?=
 =?us-ascii?Q?MrWhi/ymvJmD3N5QN/x5WthtA3s3D44zIgBx9+QJ4FIiGyDC5tjA7w3Ew1C1?=
 =?us-ascii?Q?k9abu3RwNRTG72UEUojo6dkODPn1ErRTCghzcqgtobYxQwZY3Up2c5SvvcF+?=
 =?us-ascii?Q?ZdEE0WRaoNTelVnvg20nq0Q40T1FbbnrQbjZNJX4SIK+9jdAHP43ybJ9L/Ls?=
 =?us-ascii?Q?LJss/BeKvYyXxkNnEkP06Igg6npKKXJI35rjeTgvGM51QfZo6a931Zug76jO?=
 =?us-ascii?Q?HGjNHiOnib9HIbvkLwSOQAHBKpEhPiM1nKbXktp6Zju3b4wP1V2JdTbjo7f+?=
 =?us-ascii?Q?u9O/IibkJGq3x119zITRNJgnntLPeJJDk1Le12lbEmnrFqw5PoUP+IXWxncR?=
 =?us-ascii?Q?RFzzPdpMwTHVc52bG5Toir7P5b3dbXVvKSACBp2enV3FEMaizIi0fK79ndmU?=
 =?us-ascii?Q?VoxtvN2QQRuwj5QynRU2iTwHcHXu7FFrR23PMV8tAS5ITWShmu/cwMnpEreQ?=
 =?us-ascii?Q?o+uvmuUwWOkgACc9oDvLfmpbUX48T9+7XjAqfFnGvSIsMoP2rMlYMtKxrgBY?=
 =?us-ascii?Q?Qw792CJGOgx25+2v92jYuYALtBtZ/lQ3agUC7wDF4usC+JYRic9MopV/xVbZ?=
 =?us-ascii?Q?9xPLhtUIFKfHdCw+m20vETLRNsd8d8vC48/VfKT9851NUFxz3lzxainPz1e1?=
 =?us-ascii?Q?9sdSewRgd1GLJ9IW1bfgi7LpB2SfIXMvv5DFJAENHINbWUrRl3y0ph2Oc3Jw?=
 =?us-ascii?Q?FJVLssbszz0HT/87GNygWjUqgheX4T0g5lINe01PaxQyrpjgLz7RbE4yHArx?=
 =?us-ascii?Q?e9mlFA08D9siWhBxvtNNfLmq2BeE/Vil7X1Isu5RbqB7TnrjW0noCs35PVba?=
 =?us-ascii?Q?YAbBFTFbJZepOZDmzQRoU9c0PFH+lurpl0wvh1up5XwyQi2VyqGAgMqwhOG+?=
 =?us-ascii?Q?/HEyVxQZrWMnoYh0qQU01WTqHIcKu47K8xzYLpVVFTEH7lPlS6QYAWaX6/7p?=
 =?us-ascii?Q?dDentStb6CkHJXpHtfK5H8d1ES6jjOIeot1RJx3S5SsVOtMlzlV/zxMykmz0?=
 =?us-ascii?Q?ZaP5esg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XFifbdpLTuHmIZWBxK9nB0CE+Iaab8dhDpKs/DYYYU/pv1Q91Xd67MexW43V?=
 =?us-ascii?Q?hgMdlHSxGReRUaziTQUc4QbcVq4u83qmN0iH2aBcPWVFXcStrY1zBOawizEy?=
 =?us-ascii?Q?6++UkAyzYfPetnjjjS/dd47wJt9SO2bstgTFWfq05+WAMGU2KdYbphZKzuxm?=
 =?us-ascii?Q?CU6tV1u7ztfT3RZawc6Ry0KYp/SpBY8E/Jid2uNeK0HHNuo+Hwt2rUnSeYSF?=
 =?us-ascii?Q?4082bJO5nL2FT+cn9FT4I/4MmkR7LTqq30fSPKy28ALoKjJ3AIXwX7Nzb3+P?=
 =?us-ascii?Q?+/+7+WvHMu6jvB73jwcEH7TbGGlhfz1lD8E9agJBwHYWYDDN4qVXlBtWKj9L?=
 =?us-ascii?Q?iS7ED0PvCjkPXGCCIdRft38hsmtGRWV9JosWDVth7rAj9BfGq+S2UUx3vJJe?=
 =?us-ascii?Q?P+xUgjNOglMllU+s2HzG1xi+WvjRrD1KeIm7n5g++LeGakCCRXPil+XbbqpF?=
 =?us-ascii?Q?0aIiVMSAj6KYkJLkJT/LqoiDTbTqLq1PV3zLF9Sx4bo+Re5gFnY69TBqsh7l?=
 =?us-ascii?Q?9bX8YigLqqNgmCVZBUFh3SYE2I6VZMOency6ALbjfLSIIlMyYIo4pL1Ez4Oe?=
 =?us-ascii?Q?YgPOcNJptzQ9raunRI05dQ1UlwrU0igjgNMyyGto8HAjrVp3w3xvZM8bZEwt?=
 =?us-ascii?Q?lI9uK05GqTti07df+R/S87lAYeaicJocl+RRiVlRtuThZplubUpwxS9asOah?=
 =?us-ascii?Q?Ooo7O63PEtKJ0Z49O0waAQ5MFV9AlLPwabI9/2A1rFIMAyKDg/pwqySpKOOW?=
 =?us-ascii?Q?M+cEEB+HSiDIUpBBkITgKlXlXIoSkhJRYxWPtRxiiy2MCGTb/N2m2y8QDO7T?=
 =?us-ascii?Q?xS1hQMy/hEdqd00+4Nu0xIhUj9YSi2GH4GvyVwRFNbVR9xRs/Q1LYeCglq/k?=
 =?us-ascii?Q?CTzH5RgGVhfhVQalBYBkbI7WnUra15bLZwC4mwzwvtAlNAPja+FDCg+8Y8Kc?=
 =?us-ascii?Q?vbiHiPJEsmIC7Fclw5Ic4hCKaoBeo5LyUbtX2XN5xLELqvprE0q8zyb4vrwx?=
 =?us-ascii?Q?CNlUs+rtRQO2yyLDyhK0aPs0/UJgx/yDxPKjGhu4er/YVEoBVwrD5D+Rhcnn?=
 =?us-ascii?Q?bSDLA4WGFwqu40Gp4pVnkzTeG2GkEq4ANCty+soWh1RLsa4Ci9i4ghY2gxbJ?=
 =?us-ascii?Q?CvLwMC/6dIYCpZ0ng6EMksFT3mqS1b/yzZW5hnokhqpi9RwpeRgQA3sqVnUo?=
 =?us-ascii?Q?GuZ1zlOwFOvLZYjwkRICYOk90eKTmc7pp7qfyhIGOKD2uCR/k1DYimYXzG6c?=
 =?us-ascii?Q?8F1f233jSh/QQ/n1gsl00LRDLIphwDfhKdq6Y3qYA4hf5ZeLJDBESSYerh7P?=
 =?us-ascii?Q?7CHWkeLW4E5huHBvIKT4u6gD42WRGnzk7AlFpaoQHkvYk6Rd/XmXkz5LT1Z0?=
 =?us-ascii?Q?gBtm6Si5ghUGljKYD3F6JBbm2bkGZ8FwNAeW7ojI3scy20c+JxcnLJ5FDMwt?=
 =?us-ascii?Q?aIsQ7/ZPifTuBMscHtPuR38jz4WnPutLPtImrEVs6Byn6OCUu3Yis/jA50p6?=
 =?us-ascii?Q?eDOkopaXZTqcvLhib8N7/sCgjy1r32RbmcAbkcyk86reazfUuAAxWjCD8raG?=
 =?us-ascii?Q?mMNassPeC6qeV1Ov3VKFiemR9Rr8RC5eLJ56bLnb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25e1ba5f-7fd1-49aa-54ab-08dca43e22bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2024 19:49:55.7278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CJ2BD6UTqWorXpU/fSU/5vVmRpDbifKrzzZdTpNAyZYjXAwNTWk1X6LkUoYi1VkGMgp6/fDFWEiD3VqrBpXUhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6943
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Thursday, July 11, 2024 10:37 PM
> To: Roper, Matthew D <matthew.d.roper@intel.com>
> Cc: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org; ville.syrjala@linux.intel.com; Ceraolo Sp=
urio,
> Daniele <daniele.ceraolospurio@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>
> Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
>=20
> On Thu, Jul 11, 2024 at 09:37:41AM GMT, Matt Roper wrote:
> >On Thu, Jul 11, 2024 at 10:43:39AM +0530, Uma Shankar wrote:
> >> As per recommendation in the workarounds:
> >> WA_14021987551, Wa_16023588340:
> >
> >The first one here isn't a valid workaround lineage number, just a
> >per-platform ticket number.  I think you meant Wa_22019338487, which is
> >the lineage number that can be used to track the applicability of the
> >workaround across all potentially relevant platform(s).
> >
> >>
> >> There is an issue with accessing Stolen memory pages due a hardware
> >> limitation. Limit the usage of stolen memory for fbdev for LNL+.
> >> Don't use BIOS FB from stolen on LNL+ and
> >
> >From a quick skim of these workarounds I don't see a clear indication
> >that we need to avoid using stolen FB's?  I thought these workarounds
> >were already being implemented separately (and aside from disabling
> >FBC, most of the necessary changes are on the GT side to adjust
> >frequencies and change caching behavior of LMEMBAR accesses).  I.e.,
>=20
> one part of Wa_22019338487 is what is implemented in
> ggtt_update_access_counter(), because ggtt is in stolen. This can be done=
 for
> things under kernel-only control. For other things like the fb we need to=
 avoid
> them.

Yeah right.

>=20
> Also, while thinking about that... Did we check if we also need
> something for DPT? AFAICS for LNL we will end up in
>=20
>                  dpt =3D xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
>                                             ttm_bo_type_kernel,
>                                             XE_BO_FLAG_STOLEN |
>                                             XE_BO_FLAG_GGTT |
>                                             XE_BO_FLAG_PAGETABLE);
>=20
>=20
> ... and I don't see anything fencing the writes like we have in ggtt.

For DPT as per some discussions with windows team, it seems this should not=
 harm
as CPU accesses will be limited. Will move this out if we encounter any cor=
ner
case. So far this seems to be ok as per the CI and local testing.

Regards,
Uma Shankar

>=20
> >
> > - Wa_16023588340: https://patchwork.freedesktop.org/series/135699/
> > - Wa_22019338487: https://patchwork.freedesktop.org/series/135460/
> >
> >One other nitpick:  we've been trying to avoid using "+" as shorthand
> >for "and beyond" lately since some of our IP names contain literal +'s
> >in their name (e.g., Xe_LPD+, Xe_LPM+, etc.).  We don't want confusion
> >about whether "LNL+" refers to "LNL and beyond" (as you mean here) or
> >some other platform that's distinct from LNL.
> >
> >But in general we usually don't treat workarounds as "forever" logic
> >unless they get written into the spec as new "official" programming.  It
> >looks like these workarounds apply to LNL/BMG today, but we shouldn't
> >assume in advance that they'll automatically apply to platforms n+1,
> >n+2, etc. as well.
> >
> >If we're making a concious decision to apply workaround programming to
> >more platforms than it's technically needed on (e.g., in cases where a
> >workaround doesn't have any negative impact, but applying it
> >unconditionally simplifies the driver logic), that should be called out
> >specifically in the commit message and comments to make it clear it
> >isn't a mistake.  But I don't think that's the case here, since
> >otherwise we wouldn't be bothering with the DISPLAY_VER < 20 condition
> >either.
>=20
> this is basically Wa_22019338487 and not exactly related with the
> *display* version, hence my suggestion in the other reply to use XE_WA()
> and tie it either to the platform or GRAPHICS_VERSION(2004)
>=20
> Lucas De Marchi
>=20
> >
> >
> >Matt
> >
> >> assign the same from system memory.
> >>
> >> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >> ---
> >>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> >>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
> >>  2 files changed, 19 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >> index 816ad13821a8..8fda8745ce0a 100644
> >> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >> @@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(stru=
ct
> drm_fb_helper *helper,
> >>  	size =3D PAGE_ALIGN(size);
> >>  	obj =3D ERR_PTR(-ENODEV);
> >>
> >> -	if (!IS_DGFX(xe)) {
> >> +	/*
> >> +	 * WA_14021987551, Wa_16023588340:
> >> +	 * There is an issue with accessing Stolen memory pages
> >> +	 * due a hardware limitation. Limit the usage of stolen
> >> +	 * memory for fbdev for LNL+. Don't use BIOS FB from
> >> +	 * stolen on LNL+ and assign the same from system memory
> >> +	 */
> >> +	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {
> >>  		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> >>  					   NULL, size,
> >>  					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT |
> >> @@ -48,6 +55,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struc=
t
> drm_fb_helper *helper,
> >>  		else
> >>  			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
> >>  	}
> >> +
> >>  	if (IS_ERR(obj)) {
> >>  		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> NULL, size,
> >>  					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT |
> >> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >> index 5eccd6abb3ef..80dd6b64c921 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >> @@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
> >>  		phys_base =3D base;
> >>  		flags |=3D XE_BO_FLAG_STOLEN;
> >>
> >> +		/*
> >> +		 * WA_14021987551, Wa_16023588340:
> >> +		 * There is an issue with accessing Stolen memory pages
> >> +		 * due a hardware limitation. Limit the usage of stolen
> >> +		 * memory for fbdev for LNL+. Don't use BIOS FB from
> >> +		 * stolen on LNL+ and assign the same from system memory
> >> +		 */
> >> +		if (DISPLAY_VER(xe) >=3D 20)
> >> +			return NULL;
> >> +
> >>  		/*
> >>  		 * If the FB is too big, just don't use it since fbdev is not very
> >>  		 * important and we should probably use that space with FBC or
> other
> >> --
> >> 2.42.0
> >>
> >
> >--
> >Matt Roper
> >Graphics Software Engineer
> >Linux GPU Platform Enablement
> >Intel Corporation
